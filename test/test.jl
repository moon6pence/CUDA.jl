include("../gen/gen_libcuda_h.jl")
include("../gen/gen_libcuda.jl")

a = Cint[0]
cuDriverGetVersion(convert(Ptr{Cint}, a))
println(a[1])