# Generate julia wrapper of cuda driver api (cuda.h) using CLang.jl
# After run this script, gen_libcuda.jl and gen_libcuda_h.jl will be generated

# reference #1: http://nbviewer.ipython.org/github/ihnorton/Clang.jl/blob/master/examples/parsing_c_with_clangjl/notebook.ipynb
# reference #2: https://github.com/timholy/CUDArt.jl/blob/master/gen/wrap_cuda.jl

using Clang.wrap_c

# It was OK to ignore additional header files in cuda.h
# includes = ["/usr/include","/usr/lib/gcc/x86_64-linux-gnu/4.4/include"]

context = wrap_c.init(; 
	output_file="gen_libcuda.jl",	# julia source with functions
	common_file="gen_libcuda_h.jl", # julia source with types, defs
	header_library=x->":libcuda", 	# library name to use in ccall
#	clang_includes=includes,		# headers directory
	header_wrapped=(x,y)->(false));	# only wrap cuda.h itself

context.options.wrap_structs = true

# TODO: check CUDA install directory
wrap_c.wrap_c_headers(context, ["/usr/local/cuda/include/cuda.h"])

# Replace ccall to @cucall macro
text = readall("gen_libcuda.jl")
open("gen_libcuda.jl", "w") do file
	write(file, replace(text, "ccall(", "@cucall("))
end
