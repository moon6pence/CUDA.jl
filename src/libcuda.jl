# module for generated functions and vars by Clang.jl

module CUDA_gen

using CUDA.CuDriverError

macro cucall(func, rettype, argtypes, args...)
	quote
	    _curet = ccall($func, $rettype, $argtypes, $(args...) )
	    if _curet != 0
	        throw(CuDriverError(int(_curet)))
	    end
	end
end

include("../gen/gen_libcuda_h.jl")
include("../gen/gen_libcuda.jl")

end # module CUDA_gen