# CUDA event

typealias CuEvent lib.CUevent

function create_event()
	ref = Array(CuEvent, 1)
	lib.cuEventCreate(pointer(ref), convert(Uint32, 0))
	return ref[1]
end

function destroy(event::CuEvent)
	lib.cuEventDestroy_v2(event)
end

function record(event::CuEvent)
	# TODO: support stream
	lib.cuEventRecord(event, convert(lib.CUstream, 0))
end

function elapsed_time(start_event::CuEvent, end_event::CuEvent)
	elapsed = Array(Float32, 1)
	lib.cuEventElapsedTime(pointer(elapsed), start_event, end_event)
	return elapsed[1]
end