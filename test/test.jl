using CUDA
using Base.Test

count = devcount()
println("devcount = $(count)")
@test count > 0