# Load & initialize CUDA driver

function initialize()
    lib.cuInit(uint32(0))
    println("CUDA Driver Initialized")
end

initialize()

# Get driver version

function driver_version()
    a = Cint[0]
    lib.cuDriverGetVersion(pointer(a))
    return int(a[1])
end

const DriverVersion = driver_version()

if DriverVersion < 4000
    error("CUDA of version 4.0 or above is required.")
end