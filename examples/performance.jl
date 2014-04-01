# An example to benchmark with/without CUDA streaming

using CUDA

# array length
len = 1024 * 1024

# thread counts in thread block
block = 256

try
	# create context
	dev = CuDevice(0)
	ctx = create_context(dev)

	# load module from vadd.ptx
	md = CuModule("vadd.ptx")

	# get function vadd
	f = CuFunction(md, "vadd")

	# prepare arrays to compute
	a = round(rand(Float32, len) * 100)
	b = round(rand(Float32, len) * 100)

	# create array c on GPU
	gc = CuArray(Float32, len)

	# crate event to check performance
	e1 = create_event()
	e2 = create_event()

	# start event
	record(e1)

	# load arrays to GPU
	ga = CuArray(a)
	gb = CuArray(b)

	# launch kernel
	launch(f, div(len, block), block, (ga, gb, gc))

	# fetch results from GPU
	c = to_host(gc)

	# end event
	record(e2)

	# elapsed time: milliseconds
	println("Elapsed time: $(elapsed_time(e1, e2)) ms")

	# destroy events
	destroy(e1)
	destroy(e2)

	# free GPU memory
	free(ga)
	free(gb)
	free(gc)

	# check result
	println("c == (a + b) ? $(c == (a + b))")

	# unload module
	unload(md)

	# destroy context
	destroy(ctx)

catch err
	if isa(err, CuDriverError)
		println("$err: $(description(err))")
	else
		throw(err)
	end
end