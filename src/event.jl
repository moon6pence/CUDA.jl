# CUDA event

immutable CuEvent
	handle::Ptr{Void}
end

const CU_EVENT_DEFAULT        = 0x0 # Default event flag
const CU_EVENT_BLOCKING_SYNC  = 0x1 # Event uses blocking synchronization
const CU_EVENT_DISABLE_TIMING = 0x2 # Event will not record timing data
const CU_EVENT_INTERPROCESS   = 0x4 # Event is suitable for interprocess use. CU_EVENT_DISABLE_TIMING must be set

function create_event(flags::Integer = CU_EVENT_DEFAULT)
	ref = Array(Ptr{Void}, 1)
	@cucall(:cuEventCreate, (Ptr{Ptr{Void}}, Cuint), ref, flags)
	return CuEvent(ref[1])
end

function destroy(event::CuEvent)
	@cucall(:cuEventDestroy, (Ptr{Void},), event.handle)
end

function record(event::CuEvent)
	# TODO: support stream
	@cucall(:cuEventRecord, 
		(Ptr{Void}, Ptr{Void}), 
		event.handle, 0)
end

function elapsed_time(start_event::CuEvent, end_event::CuEvent)
	elapsed = Array(Float32, 1)
	@cucall(:cuEventElapsedTime, 
		(Ptr{Float32}, Ptr{Void}, Ptr{Void}), 
		elapsed, start_event.handle, end_event.handle)
	return elapsed[1]
end