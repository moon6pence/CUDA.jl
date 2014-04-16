# CUDA CuContext

immutable CuContext
    handle::lib.CUcontext
end

function create_context(dev::CuDevice, flags::Integer)
    a = Array(lib.CUcontext, 1)
    lib.cuCtxCreate_v2(pointer(a), uint32(flags), dev.handle)
    return CuContext(a[1])
end

create_context(dev::CuDevice) = create_context(dev, 0)

function destroy(ctx::CuContext)
	lib.cuCtxDestroy_v2(ctx.handle)
end

function push(ctx::CuContext)
	lib.cuCtxPushCurrent_v2(ctx.handle)
end

function pop(ctx::CuContext)
    a = Array(lib.CUcontext, 1)
	lib.cuCtxPopCurrent_v2(pointer(a))
    return CuContext(a[1])
end