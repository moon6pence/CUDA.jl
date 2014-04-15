# CUDA CuDevice management

function devcount()
    # Get the number of CUDA-capable CuDevices
    a = Cint[0]
    lib.cuDeviceGetCount(pointer(a))
    return int(a[1])
end

immutable CuDevice
    ordinal::Cint
    handle::lib.CUdevice

    function CuDevice(i::Int)
        ordinal = convert(Cint, i)
        a = lib.CUdevice[0]
        lib.cuDeviceGet(pointer(a), ordinal)
        handle = a[1]
        new(ordinal, handle)
    end
end

immutable CuCapability
    major::Int
    minor::Int
end

function name(dev::CuDevice)
    const buflen = int32(256)
    buf = Array(Uint8, buflen)
    lib.cuDeviceGetName(pointer(buf), buflen, dev.handle)
    bytestring(pointer(buf))
end

function totalmem(dev::CuDevice)
    a = Cint[0]
    lib.cuDeviceTotalMem_v2(pointer(a), dev.handle)
    return int(a[1])
end

function attribute(dev::CuDevice, attrcode::Integer)
    a = Cint[0]
    lib.cuDeviceGetAttribute(
        pointer(a), convert(lib.CUdevice_attribute, attrcode), dev.handle)
    return int(a[1])
end

capability(dev::CuDevice) = CuCapability(attribute(dev, 75), attribute(dev, 76))

function list_devices()
    cnt = devcount()
    if cnt == 0
        println("No CUDA-capable CuDevice found.")
        return
    end

    for i = 0:cnt-1
        dev = CuDevice(i)
        nam = name(dev)
        tmem = iround(totalmem(dev) / (1024^2))
        cap = capability(dev)

        println("device[$i]: $(nam), capability $(cap.major).$(cap.minor), total mem = $tmem MB")
    end
end