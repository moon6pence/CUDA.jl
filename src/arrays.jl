# Arrays on GPU

immutable CuPtr
    p::lib.CUdeviceptr

    CuPtr() = new(convert(lib.CUdeviceptr, 0))
    CuPtr(p::lib.CUdeviceptr) = new(p)
end

function cualloc(T::Type, len::Integer)
    a = lib.CUdeviceptr[0]
    nbytes = len * sizeof(T)
    lib.cuMemAlloc_v2(pointer(a), int32(nbytes))
    return CuPtr(a[1])
end

function free(p::CuPtr)
    lib.cuMemFree_v2(p.p)
end

isnull(p::CuPtr) = (p.p == 0)

#################################################
#
#  CuArray: contiguous array on GPU
#
#################################################

type CuArray{T,N}
    ptr::CuPtr
    shape::NTuple{N,Int}
    len::Int
end

function CuArray(T::Type, len::Integer)
    n = int(len)
    p = cualloc(T, n)
    CuArray{T,1}(p, (n,), n)
end

function CuArray{N}(T::Type, shape::NTuple{N,Int})
    n = prod(shape)
    p = cualloc(T, n)
    CuArray{T,N}(p, shape, n)
end

length(g::CuArray) = g.len

size(g::CuArray) = g.shape

ndims{T,N}(g::CuArray{T,N}) = N

eltype{T,N}(g::CuArray{T,N}) = T

function size{T,N}(g::CuArray{T,N}, d::Integer)
    d >= 1 ? (d <= N ? g.shape[d] : 1) : error("Invalid index of dimension.")
end

function free(g::CuArray)
    if !isnull(g.ptr)
        free(g.ptr)
        g.ptr = CuPtr()
    end
end

function copy!{T}(dst::Array{T}, src::CuArray{T})
    if length(dst) != length(src)
        throw(ArgumentError("Inconsistent array length."))
    end
    nbytes = length(src) * sizeof(T)
    lib.cuMemcpyDtoH_v2(convert(Ptr{Void}, pointer(dst)), src.ptr.p, int32(nbytes))
    return dst
end

function copy!{T}(dst::CuArray{T}, src::Array{T})
    if length(dst) != length(src)
        throw(ArgumentError("Inconsistent array length."))
    end
    nbytes = length(src) * sizeof(T)
    lib.cuMemcpyHtoD_v2(dst.ptr.p, convert(Ptr{Void}, pointer(src)), int32(nbytes))
    return dst
end

CuArray{T,N}(a::Array{T,N}) = copy!(CuArray(T, size(a)), a)
to_host{T}(g::CuArray{T}) = copy!(Array(T, size(g)), g)