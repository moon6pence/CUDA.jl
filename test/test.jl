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

push(context)
context = pop(context)
destroy(context)