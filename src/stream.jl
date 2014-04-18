# CUDA stream management

immutable CuStream
    handle::lib.CUstream
end

function null_stream()
    CuStream(convert(lib.CUstream, 0))
end

function create_stream()
	a = lib.CUstream[0]
	lib.cuStreamCreate(pointer(a), uint32(0))
	return CuStream(a[1])
end

function destroy(s::CuStream)
	lib.cuStreamDestroy_v2(s.handle)
end

# NOT TESTED
function synchronize(s::CuStream)
	lib.cuStreamSynchronize(s.handle)
end