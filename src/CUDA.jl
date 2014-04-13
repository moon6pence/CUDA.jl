module CUDA
    import Base.length, Base.size
    import Base.copy!

    export

    # errors
    CuDriverError, description,

    # base
    @cucall, 

    # devices
    CuDevice, CuCapability, dev_count, name, totalmem, attribute, capability,
    list_devices,

    # context
    CuContext, create_context, destroy, push, pop,

    # module
    CuModule, CuFunction, unload,

    # stream
    CuStream, synchronize,

    # event
    CuEvent, create_event, destroy, record, elapsed_time, 

    # execution
    launch,

    # arrays
    CuPtr, CuArray, free, to_host

    # Generated wrappers with prefix lib
    include("libcuda.jl")
    import .CUDA_gen
    const lib = CUDA_gen
    
    include("errors.jl")
    # include("funmap.jl")

    include("base.jl")
    include("devices.jl")
    include("context.jl")
    include("module.jl")
    include("stream.jl")
    include("event.jl") 
    include("execution.jl")

    include("arrays.jl")
end