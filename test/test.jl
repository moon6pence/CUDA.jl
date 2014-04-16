using CUDA
using Base.Test

count = devcount()
println("count = $(count)")
@test count > 0

device = CuDevice(0)
println("device = $(device)")
@test device.handle == 0

context = create_context(device)
println("context = $(context)")
@test context.handle != 0

md = CuModule("../examples/vadd.ptx")
println("md = $(md)")
@test md != 0

func = CuFunction(md, "vadd")
println("func = $(func)")
@test func != 0

unload(md)

push(context)
context = pop(context)
destroy(context)