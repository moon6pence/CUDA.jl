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

a1_d = CuArray(Int32, 10)
println(a1_d)
@test a1_d.ptr.p != 0
@test a1_d.shape == (10,)
@test a1_d.len == 10
free(a1_d)

a2_d = CuArray(Float32, (5, 4))
println(a2_d)
@test a2_d.ptr.p != 0
@test a2_d.shape == (5, 4)
@test a2_d.len == 20
free(a2_d)

a3 = rand(Int32, (2, 3, 5))
a3_d = CuArray(a3)
println(a3_d)
@test a3 == to_host(a3_d)

stream = create_stream()
synchronize(stream)
destroy(stream)

# test vecAdd kernel with stream
stream = create_stream()
siz = 1024

a = round(rand(Float32, siz) * 100)
b = round(rand(Float32, siz) * 100)
ga = CuArray(a, stream)
gb = CuArray(b, stream)
gc = CuArray(Float32, siz)

launch(func, div(siz, 256), 256, (ga, gb, gc), stream=stream)
c = to_host(gc, stream)

# TODO: check it is really async
synchronize(stream)
@test c == a + b

free(ga)
free(gb)
free(gc)

@test c == a + b

unload(md)

push(context)
context = pop(context)
destroy(context)

# Test CuDriverError
try
	md = CuModule("../examples/vadd.ptx")
catch error
	@test isa(error, CuDriverError)
	println("Test CuDriverError: $(error)")
end