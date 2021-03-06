module CUDA
    import Base.length, Base.size
    import Base.copy!

    export

    # errors
    CuDriverError, description,

    # devices
    CuDevice, CuCapability, devcount, name, totalmem, attribute, capability,
    list_devices,

    # context
    CuContext, create_context, destroy, push, pop,

    # module
    CuModule, CuFunction, unload,

    # stream
    CuStream, create_stream, destroy, synchronize,

    # arrays
    CuPtr, CuArray, free, to_host, 

    # execution
    launch,

    # event
    CuEvent, create_event, destroy, record, elapsed_time

    include("errors.jl")
    
    # Generated wrappers with prefix lib
    include("libcuda.jl")
    import .CUDA_gen
    const lib = CUDA_gen
    
    include("base.jl")
    include("devices.jl")
    include("context.jl")
    include("module.jl")
    include("stream.jl")
    include("arrays.jl")
    include("execution.jl")
    include("event.jl") 
end