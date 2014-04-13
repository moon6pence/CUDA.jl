# CUDA event

function create_event()
	ref = Array(CUevent, 1)
	cuEventCreate(pointer(ref), convert(Uint32, 0))
	return ref[1]
end

function destroy(event::CUevent)
	cuEventDestroy_v2(event)
end

function record(event::CUevent)
	# TODO: support stream
	cuEventRecord(event, convert(CUstream, 0))
end

function elapsed_time(start_event::CUevent, end_event::CUevent)
	elapsed = Array(Float32, 1)
	cuEventElapsedTime(pointer(elapsed), start_event, end_event)
	return elapsed[1]
end