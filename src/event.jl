# CUDA event

immutable CuEvent
	handle::lib.CUevent
end

function create_event()
	ref = Array(lib.CUevent, 1)
	lib.cuEventCreate(pointer(ref), convert(Uint32, 0))
	return CuEvent(ref[1])
end

function destroy(event::CuEvent)
	lib.cuEventDestroy_v2(event.handle)
end

function record(event::CuEvent)
	# TODO: support stream
	lib.cuEventRecord(event.handle, convert(lib.CUstream, 0))
end

function elapsed_time(start_event::CuEvent, end_event::CuEvent)
	elapsed = Array(Float32, 1)
	lib.cuEventElapsedTime(pointer(elapsed), start_event.handle, end_event.handle)
	return elapsed[1]
end