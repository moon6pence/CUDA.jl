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

    # arrays
    CuPtr, CuArray, free, to_host, 

    # stream
    CuStream, synchronize,

    # execution
    launch,

    # event
    CuEvent, create_event, destroy, record, elapsed_time

    # Generated wrappers with prefix lib
    include("libcuda.jl")
    import .CUDA_gen
    const lib = CUDA_gen
    
    include("base.jl")
    include("devices.jl")
    include("context.jl")
    include("module.jl")
    include("arrays.jl")
    include("stream.jl")
    include("execution.jl")
    include("event.jl") 
end