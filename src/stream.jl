# CUDA stream management

immutable CuStream
    handle::lib.CUstream
    blocking::Bool
    priority::Int
end

function null_stream()
    CuStream(convert(lib.CUstream, 0), true, 0)
end

# NOT TESTED
function destroy(s::CuStream)
	lib.cuStreamDestroy(s.handle)
end

# NOT TESTED
function synchronize(s::CuStream)
	lib.cuStreamDestroy(s.handle)
end