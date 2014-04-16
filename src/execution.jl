# CUDA Execution control

get_dim_x(g::Int) = g
get_dim_x(g::(Int, Int)) = g[1]
get_dim_x(g::(Int, Int, Int)) = g[1]

get_dim_y(g::Int) = 1
get_dim_y(g::(Int, Int)) = g[2]
get_dim_y(g::(Int, Int, Int)) = g[2]

get_dim_z(g::Int) = 1
get_dim_z(g::(Int, Int)) = 1
get_dim_z(g::(Int, Int, Int)) = g[3]

typealias CuDim Union(Int, (Int, Int), (Int, Int, Int))

# box a variable into array to get pointer
cubox{T}(x::T) = T[x]
cubox(p::CuPtr) = cubox(p.p)
cubox(a::CuArray) = cubox(a.ptr)

# TODO: Stream management

function launch(f::CuFunction, grid::CuDim, block::CuDim, args::Tuple; shmem_bytes::Int=4, stream::CuStream=null_stream())
    gx = uint32(get_dim_x(grid))
    gy = uint32(get_dim_y(grid))
    gz = uint32(get_dim_z(grid))

    tx = uint32(get_dim_x(block))
    ty = uint32(get_dim_y(block))
    tz = uint32(get_dim_z(block))

    kernel_args = [cubox(arg) for arg in args]

    lib.cuLaunchKernel(
        f.handle, 
        gx, gy, gz, 
        tx, ty, tz, 
        uint32(shmem_bytes), stream.handle, 
        pointer(convert(Array{Ptr{Void}}, kernel_args)), 
        convert(Ptr{Ptr{Void}}, 0))
end