# const cuDeviceTotalMem = cuDeviceTotalMem_v2
# const cuCtxCreate = cuCtxCreate_v2
# const cuModuleGetGlobal = cuModuleGetGlobal_v2
# const cuMemGetInfo = cuMemGetInfo_v2
# const cuMemAlloc = cuMemAlloc_v2
# const cuMemAllocPitch = cuMemAllocPitch_v2
# const cuMemFree = cuMemFree_v2
# const cuMemGetAddressRange = cuMemGetAddressRange_v2
# const cuMemAllocHost = cuMemAllocHost_v2
# const cuMemHostGetDevicePointer = cuMemHostGetDevicePointer_v2
# const cuMemcpyHtoD = cuMemcpyHtoD_v2
# const cuMemcpyDtoH = cuMemcpyDtoH_v2
# const cuMemcpyDtoD = cuMemcpyDtoD_v2
# const cuMemcpyDtoA = cuMemcpyDtoA_v2
# const cuMemcpyAtoD = cuMemcpyAtoD_v2
# const cuMemcpyHtoA = cuMemcpyHtoA_v2
# const cuMemcpyAtoH = cuMemcpyAtoH_v2
# const cuMemcpyAtoA = cuMemcpyAtoA_v2
# const cuMemcpyHtoAAsync = cuMemcpyHtoAAsync_v2
# const cuMemcpyAtoHAsync = cuMemcpyAtoHAsync_v2
# const cuMemcpy2D = cuMemcpy2D_v2
# const cuMemcpy2DUnaligned = cuMemcpy2DUnaligned_v2
# const cuMemcpy3D = cuMemcpy3D_v2
# const cuMemcpyHtoDAsync = cuMemcpyHtoDAsync_v2
# const cuMemcpyDtoHAsync = cuMemcpyDtoHAsync_v2
# const cuMemcpyDtoDAsync = cuMemcpyDtoDAsync_v2
# const cuMemcpy2DAsync = cuMemcpy2DAsync_v2
# const cuMemcpy3DAsync = cuMemcpy3DAsync_v2
# const cuMemsetD8 = cuMemsetD8_v2
# const cuMemsetD16 = cuMemsetD16_v2
# const cuMemsetD32 = cuMemsetD32_v2
# const cuMemsetD2D8 = cuMemsetD2D8_v2
# const cuMemsetD2D16 = cuMemsetD2D16_v2
# const cuMemsetD2D32 = cuMemsetD2D32_v2
# const cuArrayCreate = cuArrayCreate_v2
# const cuArrayGetDescriptor = cuArrayGetDescriptor_v2
# const cuArray3DCreate = cuArray3DCreate_v2
# const cuArray3DGetDescriptor = cuArray3DGetDescriptor_v2
# const cuTexRefSetAddress = cuTexRefSetAddress_v2
# const cuTexRefGetAddress = cuTexRefGetAddress_v2
# const cuGraphicsResourceGetMappedPointer = cuGraphicsResourceGetMappedPointer_v2
# const cuCtxDestroy = cuCtxDestroy_v2
# const cuCtxPopCurrent = cuCtxPopCurrent_v2
# const cuCtxPushCurrent = cuCtxPushCurrent_v2
# const cuStreamDestroy = cuStreamDestroy_v2
# const cuEventDestroy = cuEventDestroy_v2
# const cuTexRefSetAddress2D = cuTexRefSetAddress2D_v3
const CUDA_VERSION = 5050
const CU_IPC_HANDLE_SIZE = 64
const CU_MEMHOSTALLOC_PORTABLE = 0x01
const CU_MEMHOSTALLOC_DEVICEMAP = 0x02
const CU_MEMHOSTALLOC_WRITECOMBINED = 0x04
const CU_MEMHOSTREGISTER_PORTABLE = 0x01
const CU_MEMHOSTREGISTER_DEVICEMAP = 0x02
const CUDA_ARRAY3D_LAYERED = 0x01
const CUDA_ARRAY3D_2DARRAY = 0x01
const CUDA_ARRAY3D_SURFACE_LDST = 0x02
const CUDA_ARRAY3D_CUBEMAP = 0x04
const CUDA_ARRAY3D_TEXTURE_GATHER = 0x08
const CU_TRSA_OVERRIDE_FORMAT = 0x01
const CU_TRSF_READ_AS_INTEGER = 0x01
const CU_TRSF_NORMALIZED_COORDINATES = 0x02
const CU_TRSF_SRGB = 0x10
# Skipping MacroDefinition: CU_LAUNCH_PARAM_END((void*)0x00)
# Skipping MacroDefinition: CU_LAUNCH_PARAM_BUFFER_POINTER((void*)0x01)
# Skipping MacroDefinition: CU_LAUNCH_PARAM_BUFFER_SIZE((void*)0x02)
const CU_PARAM_TR_DEFAULT = -1
typealias CUdeviceptr Culonglong
typealias CUdevice Cint
type CUctx_st
end
typealias CUcontext Ptr{CUctx_st}
type CUmod_st
end
typealias CUmodule Ptr{CUmod_st}
type CUfunc_st
end
typealias CUfunction Ptr{CUfunc_st}
type CUarray_st
end
typealias CUarray Ptr{CUarray_st}
type CUmipmappedArray_st
end
typealias CUmipmappedArray Ptr{CUmipmappedArray_st}
type CUtexref_st
end
typealias CUtexref Ptr{CUtexref_st}
type CUsurfref_st
end
typealias CUsurfref Ptr{CUsurfref_st}
type CUevent_st
end
typealias CUevent Ptr{CUevent_st}
type CUstream_st
end
typealias CUstream Ptr{CUstream_st}
type CUgraphicsResource_st
end
typealias CUgraphicsResource Ptr{CUgraphicsResource_st}
typealias CUtexObject Culonglong
typealias CUsurfObject Culonglong
immutable Array_16_Uint8
    d1::Uint8
    d2::Uint8
    d3::Uint8
    d4::Uint8
    d5::Uint8
    d6::Uint8
    d7::Uint8
    d8::Uint8
    d9::Uint8
    d10::Uint8
    d11::Uint8
    d12::Uint8
    d13::Uint8
    d14::Uint8
    d15::Uint8
    d16::Uint8
end
type CUuuid_st
    bytes::Array_16_Uint8
end
type CUuuid
    bytes::Array_16_Uint8
end
immutable Array_64_Uint8
    d1::Uint8
    d2::Uint8
    d3::Uint8
    d4::Uint8
    d5::Uint8
    d6::Uint8
    d7::Uint8
    d8::Uint8
    d9::Uint8
    d10::Uint8
    d11::Uint8
    d12::Uint8
    d13::Uint8
    d14::Uint8
    d15::Uint8
    d16::Uint8
    d17::Uint8
    d18::Uint8
    d19::Uint8
    d20::Uint8
    d21::Uint8
    d22::Uint8
    d23::Uint8
    d24::Uint8
    d25::Uint8
    d26::Uint8
    d27::Uint8
    d28::Uint8
    d29::Uint8
    d30::Uint8
    d31::Uint8
    d32::Uint8
    d33::Uint8
    d34::Uint8
    d35::Uint8
    d36::Uint8
    d37::Uint8
    d38::Uint8
    d39::Uint8
    d40::Uint8
    d41::Uint8
    d42::Uint8
    d43::Uint8
    d44::Uint8
    d45::Uint8
    d46::Uint8
    d47::Uint8
    d48::Uint8
    d49::Uint8
    d50::Uint8
    d51::Uint8
    d52::Uint8
    d53::Uint8
    d54::Uint8
    d55::Uint8
    d56::Uint8
    d57::Uint8
    d58::Uint8
    d59::Uint8
    d60::Uint8
    d61::Uint8
    d62::Uint8
    d63::Uint8
    d64::Uint8
end
type CUipcEventHandle_st
    reserved::Array_64_Uint8
end
type CUipcEventHandle
    reserved::Array_64_Uint8
end
type CUipcMemHandle_st
    reserved::Array_64_Uint8
end
type CUipcMemHandle
    reserved::Array_64_Uint8
end
# begin enum CUipcMem_flags_enum
typealias CUipcMem_flags_enum Uint32
const CU_IPC_MEM_LAZY_ENABLE_PEER_ACCESS = 1
# end enum CUipcMem_flags_enum
# begin enum CUipcMem_flags
typealias CUipcMem_flags Uint32
const CU_IPC_MEM_LAZY_ENABLE_PEER_ACCESS = 1
# end enum CUipcMem_flags
# begin enum CUctx_flags_enum
typealias CUctx_flags_enum Uint32
const CU_CTX_SCHED_AUTO = 0
const CU_CTX_SCHED_SPIN = 1
const CU_CTX_SCHED_YIELD = 2
const CU_CTX_SCHED_BLOCKING_SYNC = 4
const CU_CTX_BLOCKING_SYNC = 4
const CU_CTX_SCHED_MASK = 7
const CU_CTX_MAP_HOST = 8
const CU_CTX_LMEM_RESIZE_TO_MAX = 16
const CU_CTX_FLAGS_MASK = 31
# end enum CUctx_flags_enum
# begin enum CUctx_flags
typealias CUctx_flags Uint32
const CU_CTX_SCHED_AUTO = 0
const CU_CTX_SCHED_SPIN = 1
const CU_CTX_SCHED_YIELD = 2
const CU_CTX_SCHED_BLOCKING_SYNC = 4
const CU_CTX_BLOCKING_SYNC = 4
const CU_CTX_SCHED_MASK = 7
const CU_CTX_MAP_HOST = 8
const CU_CTX_LMEM_RESIZE_TO_MAX = 16
const CU_CTX_FLAGS_MASK = 31
# end enum CUctx_flags
# begin enum CUstream_flags_enum
typealias CUstream_flags_enum Uint32
const CU_STREAM_DEFAULT = 0
const CU_STREAM_NON_BLOCKING = 1
# end enum CUstream_flags_enum
# begin enum CUstream_flags
typealias CUstream_flags Uint32
const CU_STREAM_DEFAULT = 0
const CU_STREAM_NON_BLOCKING = 1
# end enum CUstream_flags
# begin enum CUevent_flags_enum
typealias CUevent_flags_enum Uint32
const CU_EVENT_DEFAULT = 0
const CU_EVENT_BLOCKING_SYNC = 1
const CU_EVENT_DISABLE_TIMING = 2
const CU_EVENT_INTERPROCESS = 4
# end enum CUevent_flags_enum
# begin enum CUevent_flags
typealias CUevent_flags Uint32
const CU_EVENT_DEFAULT = 0
const CU_EVENT_BLOCKING_SYNC = 1
const CU_EVENT_DISABLE_TIMING = 2
const CU_EVENT_INTERPROCESS = 4
# end enum CUevent_flags
# begin enum CUarray_format_enum
typealias CUarray_format_enum Uint32
const CU_AD_FORMAT_UNSIGNED_INT8 = 1
const CU_AD_FORMAT_UNSIGNED_INT16 = 2
const CU_AD_FORMAT_UNSIGNED_INT32 = 3
const CU_AD_FORMAT_SIGNED_INT8 = 8
const CU_AD_FORMAT_SIGNED_INT16 = 9
const CU_AD_FORMAT_SIGNED_INT32 = 10
const CU_AD_FORMAT_HALF = 16
const CU_AD_FORMAT_FLOAT = 32
# end enum CUarray_format_enum
# begin enum CUarray_format
typealias CUarray_format Uint32
const CU_AD_FORMAT_UNSIGNED_INT8 = 1
const CU_AD_FORMAT_UNSIGNED_INT16 = 2
const CU_AD_FORMAT_UNSIGNED_INT32 = 3
const CU_AD_FORMAT_SIGNED_INT8 = 8
const CU_AD_FORMAT_SIGNED_INT16 = 9
const CU_AD_FORMAT_SIGNED_INT32 = 10
const CU_AD_FORMAT_HALF = 16
const CU_AD_FORMAT_FLOAT = 32
# end enum CUarray_format
# begin enum CUaddress_mode_enum
typealias CUaddress_mode_enum Uint32
const CU_TR_ADDRESS_MODE_WRAP = 0
const CU_TR_ADDRESS_MODE_CLAMP = 1
const CU_TR_ADDRESS_MODE_MIRROR = 2
const CU_TR_ADDRESS_MODE_BORDER = 3
# end enum CUaddress_mode_enum
# begin enum CUaddress_mode
typealias CUaddress_mode Uint32
const CU_TR_ADDRESS_MODE_WRAP = 0
const CU_TR_ADDRESS_MODE_CLAMP = 1
const CU_TR_ADDRESS_MODE_MIRROR = 2
const CU_TR_ADDRESS_MODE_BORDER = 3
# end enum CUaddress_mode
# begin enum CUfilter_mode_enum
typealias CUfilter_mode_enum Uint32
const CU_TR_FILTER_MODE_POINT = 0
const CU_TR_FILTER_MODE_LINEAR = 1
# end enum CUfilter_mode_enum
# begin enum CUfilter_mode
typealias CUfilter_mode Uint32
const CU_TR_FILTER_MODE_POINT = 0
const CU_TR_FILTER_MODE_LINEAR = 1
# end enum CUfilter_mode
# begin enum CUdevice_attribute_enum
typealias CUdevice_attribute_enum Uint32
const CU_DEVICE_ATTRIBUTE_MAX_THREADS_PER_BLOCK = 1
const CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_X = 2
const CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_Y = 3
const CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_Z = 4
const CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_X = 5
const CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_Y = 6
const CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_Z = 7
const CU_DEVICE_ATTRIBUTE_MAX_SHARED_MEMORY_PER_BLOCK = 8
const CU_DEVICE_ATTRIBUTE_SHARED_MEMORY_PER_BLOCK = 8
const CU_DEVICE_ATTRIBUTE_TOTAL_CONSTANT_MEMORY = 9
const CU_DEVICE_ATTRIBUTE_WARP_SIZE = 10
const CU_DEVICE_ATTRIBUTE_MAX_PITCH = 11
const CU_DEVICE_ATTRIBUTE_MAX_REGISTERS_PER_BLOCK = 12
const CU_DEVICE_ATTRIBUTE_REGISTERS_PER_BLOCK = 12
const CU_DEVICE_ATTRIBUTE_CLOCK_RATE = 13
const CU_DEVICE_ATTRIBUTE_TEXTURE_ALIGNMENT = 14
const CU_DEVICE_ATTRIBUTE_GPU_OVERLAP = 15
const CU_DEVICE_ATTRIBUTE_MULTIPROCESSOR_COUNT = 16
const CU_DEVICE_ATTRIBUTE_KERNEL_EXEC_TIMEOUT = 17
const CU_DEVICE_ATTRIBUTE_INTEGRATED = 18
const CU_DEVICE_ATTRIBUTE_CAN_MAP_HOST_MEMORY = 19
const CU_DEVICE_ATTRIBUTE_COMPUTE_MODE = 20
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_WIDTH = 21
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_WIDTH = 22
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_HEIGHT = 23
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_WIDTH = 24
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_HEIGHT = 25
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_DEPTH = 26
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_WIDTH = 27
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_HEIGHT = 28
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_LAYERS = 29
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_ARRAY_WIDTH = 27
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_ARRAY_HEIGHT = 28
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_ARRAY_NUMSLICES = 29
const CU_DEVICE_ATTRIBUTE_SURFACE_ALIGNMENT = 30
const CU_DEVICE_ATTRIBUTE_CONCURRENT_KERNELS = 31
const CU_DEVICE_ATTRIBUTE_ECC_ENABLED = 32
const CU_DEVICE_ATTRIBUTE_PCI_BUS_ID = 33
const CU_DEVICE_ATTRIBUTE_PCI_DEVICE_ID = 34
const CU_DEVICE_ATTRIBUTE_TCC_DRIVER = 35
const CU_DEVICE_ATTRIBUTE_MEMORY_CLOCK_RATE = 36
const CU_DEVICE_ATTRIBUTE_GLOBAL_MEMORY_BUS_WIDTH = 37
const CU_DEVICE_ATTRIBUTE_L2_CACHE_SIZE = 38
const CU_DEVICE_ATTRIBUTE_MAX_THREADS_PER_MULTIPROCESSOR = 39
const CU_DEVICE_ATTRIBUTE_ASYNC_ENGINE_COUNT = 40
const CU_DEVICE_ATTRIBUTE_UNIFIED_ADDRESSING = 41
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LAYERED_WIDTH = 42
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LAYERED_LAYERS = 43
const CU_DEVICE_ATTRIBUTE_CAN_TEX2D_GATHER = 44
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_GATHER_WIDTH = 45
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_GATHER_HEIGHT = 46
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_WIDTH_ALTERNATE = 47
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_HEIGHT_ALTERNATE = 48
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_DEPTH_ALTERNATE = 49
const CU_DEVICE_ATTRIBUTE_PCI_DOMAIN_ID = 50
const CU_DEVICE_ATTRIBUTE_TEXTURE_PITCH_ALIGNMENT = 51
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_WIDTH = 52
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_LAYERED_WIDTH = 53
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_LAYERED_LAYERS = 54
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_WIDTH = 55
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_WIDTH = 56
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_HEIGHT = 57
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_WIDTH = 58
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_HEIGHT = 59
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_DEPTH = 60
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_LAYERED_WIDTH = 61
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_LAYERED_LAYERS = 62
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_WIDTH = 63
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_HEIGHT = 64
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_LAYERS = 65
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_WIDTH = 66
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_LAYERED_WIDTH = 67
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_LAYERED_LAYERS = 68
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LINEAR_WIDTH = 69
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_WIDTH = 70
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_HEIGHT = 71
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_PITCH = 72
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_MIPMAPPED_WIDTH = 73
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_MIPMAPPED_HEIGHT = 74
const CU_DEVICE_ATTRIBUTE_COMPUTE_CAPABILITY_MAJOR = 75
const CU_DEVICE_ATTRIBUTE_COMPUTE_CAPABILITY_MINOR = 76
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_MIPMAPPED_WIDTH = 77
const CU_DEVICE_ATTRIBUTE_STREAM_PRIORITIES_SUPPORTED = 78
const CU_DEVICE_ATTRIBUTE_MAX = 79
# end enum CUdevice_attribute_enum
# begin enum CUdevice_attribute
typealias CUdevice_attribute Uint32
const CU_DEVICE_ATTRIBUTE_MAX_THREADS_PER_BLOCK = 1
const CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_X = 2
const CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_Y = 3
const CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_Z = 4
const CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_X = 5
const CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_Y = 6
const CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_Z = 7
const CU_DEVICE_ATTRIBUTE_MAX_SHARED_MEMORY_PER_BLOCK = 8
const CU_DEVICE_ATTRIBUTE_SHARED_MEMORY_PER_BLOCK = 8
const CU_DEVICE_ATTRIBUTE_TOTAL_CONSTANT_MEMORY = 9
const CU_DEVICE_ATTRIBUTE_WARP_SIZE = 10
const CU_DEVICE_ATTRIBUTE_MAX_PITCH = 11
const CU_DEVICE_ATTRIBUTE_MAX_REGISTERS_PER_BLOCK = 12
const CU_DEVICE_ATTRIBUTE_REGISTERS_PER_BLOCK = 12
const CU_DEVICE_ATTRIBUTE_CLOCK_RATE = 13
const CU_DEVICE_ATTRIBUTE_TEXTURE_ALIGNMENT = 14
const CU_DEVICE_ATTRIBUTE_GPU_OVERLAP = 15
const CU_DEVICE_ATTRIBUTE_MULTIPROCESSOR_COUNT = 16
const CU_DEVICE_ATTRIBUTE_KERNEL_EXEC_TIMEOUT = 17
const CU_DEVICE_ATTRIBUTE_INTEGRATED = 18
const CU_DEVICE_ATTRIBUTE_CAN_MAP_HOST_MEMORY = 19
const CU_DEVICE_ATTRIBUTE_COMPUTE_MODE = 20
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_WIDTH = 21
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_WIDTH = 22
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_HEIGHT = 23
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_WIDTH = 24
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_HEIGHT = 25
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_DEPTH = 26
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_WIDTH = 27
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_HEIGHT = 28
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_LAYERS = 29
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_ARRAY_WIDTH = 27
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_ARRAY_HEIGHT = 28
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_ARRAY_NUMSLICES = 29
const CU_DEVICE_ATTRIBUTE_SURFACE_ALIGNMENT = 30
const CU_DEVICE_ATTRIBUTE_CONCURRENT_KERNELS = 31
const CU_DEVICE_ATTRIBUTE_ECC_ENABLED = 32
const CU_DEVICE_ATTRIBUTE_PCI_BUS_ID = 33
const CU_DEVICE_ATTRIBUTE_PCI_DEVICE_ID = 34
const CU_DEVICE_ATTRIBUTE_TCC_DRIVER = 35
const CU_DEVICE_ATTRIBUTE_MEMORY_CLOCK_RATE = 36
const CU_DEVICE_ATTRIBUTE_GLOBAL_MEMORY_BUS_WIDTH = 37
const CU_DEVICE_ATTRIBUTE_L2_CACHE_SIZE = 38
const CU_DEVICE_ATTRIBUTE_MAX_THREADS_PER_MULTIPROCESSOR = 39
const CU_DEVICE_ATTRIBUTE_ASYNC_ENGINE_COUNT = 40
const CU_DEVICE_ATTRIBUTE_UNIFIED_ADDRESSING = 41
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LAYERED_WIDTH = 42
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LAYERED_LAYERS = 43
const CU_DEVICE_ATTRIBUTE_CAN_TEX2D_GATHER = 44
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_GATHER_WIDTH = 45
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_GATHER_HEIGHT = 46
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_WIDTH_ALTERNATE = 47
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_HEIGHT_ALTERNATE = 48
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_DEPTH_ALTERNATE = 49
const CU_DEVICE_ATTRIBUTE_PCI_DOMAIN_ID = 50
const CU_DEVICE_ATTRIBUTE_TEXTURE_PITCH_ALIGNMENT = 51
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_WIDTH = 52
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_LAYERED_WIDTH = 53
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_LAYERED_LAYERS = 54
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_WIDTH = 55
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_WIDTH = 56
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_HEIGHT = 57
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_WIDTH = 58
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_HEIGHT = 59
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_DEPTH = 60
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_LAYERED_WIDTH = 61
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_LAYERED_LAYERS = 62
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_WIDTH = 63
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_HEIGHT = 64
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_LAYERS = 65
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_WIDTH = 66
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_LAYERED_WIDTH = 67
const CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_LAYERED_LAYERS = 68
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LINEAR_WIDTH = 69
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_WIDTH = 70
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_HEIGHT = 71
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_PITCH = 72
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_MIPMAPPED_WIDTH = 73
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_MIPMAPPED_HEIGHT = 74
const CU_DEVICE_ATTRIBUTE_COMPUTE_CAPABILITY_MAJOR = 75
const CU_DEVICE_ATTRIBUTE_COMPUTE_CAPABILITY_MINOR = 76
const CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_MIPMAPPED_WIDTH = 77
const CU_DEVICE_ATTRIBUTE_STREAM_PRIORITIES_SUPPORTED = 78
const CU_DEVICE_ATTRIBUTE_MAX = 79
# end enum CUdevice_attribute
immutable Array_3_Cint
    d1::Cint
    d2::Cint
    d3::Cint
end
type CUdevprop_st
    maxThreadsPerBlock::Cint
    maxThreadsDim::Array_3_Cint
    maxGridSize::Array_3_Cint
    sharedMemPerBlock::Cint
    totalConstantMemory::Cint
    SIMDWidth::Cint
    memPitch::Cint
    regsPerBlock::Cint
    clockRate::Cint
    textureAlign::Cint
end
type CUdevprop
    maxThreadsPerBlock::Cint
    maxThreadsDim::Array_3_Cint
    maxGridSize::Array_3_Cint
    sharedMemPerBlock::Cint
    totalConstantMemory::Cint
    SIMDWidth::Cint
    memPitch::Cint
    regsPerBlock::Cint
    clockRate::Cint
    textureAlign::Cint
end
# begin enum CUpointer_attribute_enum
typealias CUpointer_attribute_enum Uint32
const CU_POINTER_ATTRIBUTE_CONTEXT = 1
const CU_POINTER_ATTRIBUTE_MEMORY_TYPE = 2
const CU_POINTER_ATTRIBUTE_DEVICE_POINTER = 3
const CU_POINTER_ATTRIBUTE_HOST_POINTER = 4
const CU_POINTER_ATTRIBUTE_P2P_TOKENS = 5
# end enum CUpointer_attribute_enum
# begin enum CUpointer_attribute
typealias CUpointer_attribute Uint32
const CU_POINTER_ATTRIBUTE_CONTEXT = 1
const CU_POINTER_ATTRIBUTE_MEMORY_TYPE = 2
const CU_POINTER_ATTRIBUTE_DEVICE_POINTER = 3
const CU_POINTER_ATTRIBUTE_HOST_POINTER = 4
const CU_POINTER_ATTRIBUTE_P2P_TOKENS = 5
# end enum CUpointer_attribute
# begin enum CUfunction_attribute_enum
typealias CUfunction_attribute_enum Uint32
const CU_FUNC_ATTRIBUTE_MAX_THREADS_PER_BLOCK = 0
const CU_FUNC_ATTRIBUTE_SHARED_SIZE_BYTES = 1
const CU_FUNC_ATTRIBUTE_CONST_SIZE_BYTES = 2
const CU_FUNC_ATTRIBUTE_LOCAL_SIZE_BYTES = 3
const CU_FUNC_ATTRIBUTE_NUM_REGS = 4
const CU_FUNC_ATTRIBUTE_PTX_VERSION = 5
const CU_FUNC_ATTRIBUTE_BINARY_VERSION = 6
const CU_FUNC_ATTRIBUTE_MAX = 7
# end enum CUfunction_attribute_enum
# begin enum CUfunction_attribute
typealias CUfunction_attribute Uint32
const CU_FUNC_ATTRIBUTE_MAX_THREADS_PER_BLOCK = 0
const CU_FUNC_ATTRIBUTE_SHARED_SIZE_BYTES = 1
const CU_FUNC_ATTRIBUTE_CONST_SIZE_BYTES = 2
const CU_FUNC_ATTRIBUTE_LOCAL_SIZE_BYTES = 3
const CU_FUNC_ATTRIBUTE_NUM_REGS = 4
const CU_FUNC_ATTRIBUTE_PTX_VERSION = 5
const CU_FUNC_ATTRIBUTE_BINARY_VERSION = 6
const CU_FUNC_ATTRIBUTE_MAX = 7
# end enum CUfunction_attribute
# begin enum CUfunc_cache_enum
typealias CUfunc_cache_enum Uint32
const CU_FUNC_CACHE_PREFER_NONE = 0
const CU_FUNC_CACHE_PREFER_SHARED = 1
const CU_FUNC_CACHE_PREFER_L1 = 2
const CU_FUNC_CACHE_PREFER_EQUAL = 3
# end enum CUfunc_cache_enum
# begin enum CUfunc_cache
typealias CUfunc_cache Uint32
const CU_FUNC_CACHE_PREFER_NONE = 0
const CU_FUNC_CACHE_PREFER_SHARED = 1
const CU_FUNC_CACHE_PREFER_L1 = 2
const CU_FUNC_CACHE_PREFER_EQUAL = 3
# end enum CUfunc_cache
# begin enum CUsharedconfig_enum
typealias CUsharedconfig_enum Uint32
const CU_SHARED_MEM_CONFIG_DEFAULT_BANK_SIZE = 0
const CU_SHARED_MEM_CONFIG_FOUR_BYTE_BANK_SIZE = 1
const CU_SHARED_MEM_CONFIG_EIGHT_BYTE_BANK_SIZE = 2
# end enum CUsharedconfig_enum
# begin enum CUsharedconfig
typealias CUsharedconfig Uint32
const CU_SHARED_MEM_CONFIG_DEFAULT_BANK_SIZE = 0
const CU_SHARED_MEM_CONFIG_FOUR_BYTE_BANK_SIZE = 1
const CU_SHARED_MEM_CONFIG_EIGHT_BYTE_BANK_SIZE = 2
# end enum CUsharedconfig
# begin enum CUmemorytype_enum
typealias CUmemorytype_enum Uint32
const CU_MEMORYTYPE_HOST = 1
const CU_MEMORYTYPE_DEVICE = 2
const CU_MEMORYTYPE_ARRAY = 3
const CU_MEMORYTYPE_UNIFIED = 4
# end enum CUmemorytype_enum
# begin enum CUmemorytype
typealias CUmemorytype Uint32
const CU_MEMORYTYPE_HOST = 1
const CU_MEMORYTYPE_DEVICE = 2
const CU_MEMORYTYPE_ARRAY = 3
const CU_MEMORYTYPE_UNIFIED = 4
# end enum CUmemorytype
# begin enum CUcomputemode_enum
typealias CUcomputemode_enum Uint32
const CU_COMPUTEMODE_DEFAULT = 0
const CU_COMPUTEMODE_EXCLUSIVE = 1
const CU_COMPUTEMODE_PROHIBITED = 2
const CU_COMPUTEMODE_EXCLUSIVE_PROCESS = 3
# end enum CUcomputemode_enum
# begin enum CUcomputemode
typealias CUcomputemode Uint32
const CU_COMPUTEMODE_DEFAULT = 0
const CU_COMPUTEMODE_EXCLUSIVE = 1
const CU_COMPUTEMODE_PROHIBITED = 2
const CU_COMPUTEMODE_EXCLUSIVE_PROCESS = 3
# end enum CUcomputemode
# begin enum CUjit_option_enum
typealias CUjit_option_enum Uint32
const CU_JIT_MAX_REGISTERS = 0
const CU_JIT_THREADS_PER_BLOCK = 1
const CU_JIT_WALL_TIME = 2
const CU_JIT_INFO_LOG_BUFFER = 3
const CU_JIT_INFO_LOG_BUFFER_SIZE_BYTES = 4
const CU_JIT_ERROR_LOG_BUFFER = 5
const CU_JIT_ERROR_LOG_BUFFER_SIZE_BYTES = 6
const CU_JIT_OPTIMIZATION_LEVEL = 7
const CU_JIT_TARGET_FROM_CUCONTEXT = 8
const CU_JIT_TARGET = 9
const CU_JIT_FALLBACK_STRATEGY = 10
const CU_JIT_GENERATE_DEBUG_INFO = 11
const CU_JIT_LOG_VERBOSE = 12
const CU_JIT_GENERATE_LINE_INFO = 13
const CU_JIT_CACHE_MODE = 14
const CU_JIT_NUM_OPTIONS = 15
# end enum CUjit_option_enum
# begin enum CUjit_option
typealias CUjit_option Uint32
const CU_JIT_MAX_REGISTERS = 0
const CU_JIT_THREADS_PER_BLOCK = 1
const CU_JIT_WALL_TIME = 2
const CU_JIT_INFO_LOG_BUFFER = 3
const CU_JIT_INFO_LOG_BUFFER_SIZE_BYTES = 4
const CU_JIT_ERROR_LOG_BUFFER = 5
const CU_JIT_ERROR_LOG_BUFFER_SIZE_BYTES = 6
const CU_JIT_OPTIMIZATION_LEVEL = 7
const CU_JIT_TARGET_FROM_CUCONTEXT = 8
const CU_JIT_TARGET = 9
const CU_JIT_FALLBACK_STRATEGY = 10
const CU_JIT_GENERATE_DEBUG_INFO = 11
const CU_JIT_LOG_VERBOSE = 12
const CU_JIT_GENERATE_LINE_INFO = 13
const CU_JIT_CACHE_MODE = 14
const CU_JIT_NUM_OPTIONS = 15
# end enum CUjit_option
# begin enum CUjit_target_enum
typealias CUjit_target_enum Uint32
const CU_TARGET_COMPUTE_10 = 0
const CU_TARGET_COMPUTE_11 = 1
const CU_TARGET_COMPUTE_12 = 2
const CU_TARGET_COMPUTE_13 = 3
const CU_TARGET_COMPUTE_20 = 4
const CU_TARGET_COMPUTE_21 = 5
const CU_TARGET_COMPUTE_30 = 6
const CU_TARGET_COMPUTE_35 = 7
const CU_MAX_JIT_TARGET = 8
# end enum CUjit_target_enum
# begin enum CUjit_target
typealias CUjit_target Uint32
const CU_TARGET_COMPUTE_10 = 0
const CU_TARGET_COMPUTE_11 = 1
const CU_TARGET_COMPUTE_12 = 2
const CU_TARGET_COMPUTE_13 = 3
const CU_TARGET_COMPUTE_20 = 4
const CU_TARGET_COMPUTE_21 = 5
const CU_TARGET_COMPUTE_30 = 6
const CU_TARGET_COMPUTE_35 = 7
const CU_MAX_JIT_TARGET = 8
# end enum CUjit_target
# begin enum CUjit_fallback_enum
typealias CUjit_fallback_enum Uint32
const CU_PREFER_PTX = 0
const CU_PREFER_BINARY = 1
# end enum CUjit_fallback_enum
# begin enum CUjit_fallback
typealias CUjit_fallback Uint32
const CU_PREFER_PTX = 0
const CU_PREFER_BINARY = 1
# end enum CUjit_fallback
# begin enum CUjit_cacheMode_enum
typealias CUjit_cacheMode_enum Uint32
const CU_JIT_CACHE_OPTION_NONE = 0
const CU_JIT_CACHE_OPTION_CG = 1
const CU_JIT_CACHE_OPTION_CA = 2
# end enum CUjit_cacheMode_enum
# begin enum CUjit_cacheMode
typealias CUjit_cacheMode Uint32
const CU_JIT_CACHE_OPTION_NONE = 0
const CU_JIT_CACHE_OPTION_CG = 1
const CU_JIT_CACHE_OPTION_CA = 2
# end enum CUjit_cacheMode
# begin enum CUjitInputType_enum
typealias CUjitInputType_enum Uint32
const CU_JIT_INPUT_CUBIN = 0
const CU_JIT_INPUT_PTX = 1
const CU_JIT_INPUT_FATBINARY = 2
const CU_JIT_INPUT_OBJECT = 3
const CU_JIT_INPUT_LIBRARY = 4
const CU_JIT_NUM_INPUT_TYPES = 5
# end enum CUjitInputType_enum
# begin enum CUjitInputType
typealias CUjitInputType Uint32
const CU_JIT_INPUT_CUBIN = 0
const CU_JIT_INPUT_PTX = 1
const CU_JIT_INPUT_FATBINARY = 2
const CU_JIT_INPUT_OBJECT = 3
const CU_JIT_INPUT_LIBRARY = 4
const CU_JIT_NUM_INPUT_TYPES = 5
# end enum CUjitInputType
type CUlinkState_st
end
typealias CUlinkState Ptr{CUlinkState_st}
# begin enum CUgraphicsRegisterFlags_enum
typealias CUgraphicsRegisterFlags_enum Uint32
const CU_GRAPHICS_REGISTER_FLAGS_NONE = 0
const CU_GRAPHICS_REGISTER_FLAGS_READ_ONLY = 1
const CU_GRAPHICS_REGISTER_FLAGS_WRITE_DISCARD = 2
const CU_GRAPHICS_REGISTER_FLAGS_SURFACE_LDST = 4
const CU_GRAPHICS_REGISTER_FLAGS_TEXTURE_GATHER = 8
# end enum CUgraphicsRegisterFlags_enum
# begin enum CUgraphicsRegisterFlags
typealias CUgraphicsRegisterFlags Uint32
const CU_GRAPHICS_REGISTER_FLAGS_NONE = 0
const CU_GRAPHICS_REGISTER_FLAGS_READ_ONLY = 1
const CU_GRAPHICS_REGISTER_FLAGS_WRITE_DISCARD = 2
const CU_GRAPHICS_REGISTER_FLAGS_SURFACE_LDST = 4
const CU_GRAPHICS_REGISTER_FLAGS_TEXTURE_GATHER = 8
# end enum CUgraphicsRegisterFlags
# begin enum CUgraphicsMapResourceFlags_enum
typealias CUgraphicsMapResourceFlags_enum Uint32
const CU_GRAPHICS_MAP_RESOURCE_FLAGS_NONE = 0
const CU_GRAPHICS_MAP_RESOURCE_FLAGS_READ_ONLY = 1
const CU_GRAPHICS_MAP_RESOURCE_FLAGS_WRITE_DISCARD = 2
# end enum CUgraphicsMapResourceFlags_enum
# begin enum CUgraphicsMapResourceFlags
typealias CUgraphicsMapResourceFlags Uint32
const CU_GRAPHICS_MAP_RESOURCE_FLAGS_NONE = 0
const CU_GRAPHICS_MAP_RESOURCE_FLAGS_READ_ONLY = 1
const CU_GRAPHICS_MAP_RESOURCE_FLAGS_WRITE_DISCARD = 2
# end enum CUgraphicsMapResourceFlags
# begin enum CUarray_cubemap_face_enum
typealias CUarray_cubemap_face_enum Uint32
const CU_CUBEMAP_FACE_POSITIVE_X = 0
const CU_CUBEMAP_FACE_NEGATIVE_X = 1
const CU_CUBEMAP_FACE_POSITIVE_Y = 2
const CU_CUBEMAP_FACE_NEGATIVE_Y = 3
const CU_CUBEMAP_FACE_POSITIVE_Z = 4
const CU_CUBEMAP_FACE_NEGATIVE_Z = 5
# end enum CUarray_cubemap_face_enum
# begin enum CUarray_cubemap_face
typealias CUarray_cubemap_face Uint32
const CU_CUBEMAP_FACE_POSITIVE_X = 0
const CU_CUBEMAP_FACE_NEGATIVE_X = 1
const CU_CUBEMAP_FACE_POSITIVE_Y = 2
const CU_CUBEMAP_FACE_NEGATIVE_Y = 3
const CU_CUBEMAP_FACE_POSITIVE_Z = 4
const CU_CUBEMAP_FACE_NEGATIVE_Z = 5
# end enum CUarray_cubemap_face
# begin enum CUlimit_enum
typealias CUlimit_enum Uint32
const CU_LIMIT_STACK_SIZE = 0
const CU_LIMIT_PRINTF_FIFO_SIZE = 1
const CU_LIMIT_MALLOC_HEAP_SIZE = 2
const CU_LIMIT_DEV_RUNTIME_SYNC_DEPTH = 3
const CU_LIMIT_DEV_RUNTIME_PENDING_LAUNCH_COUNT = 4
const CU_LIMIT_MAX = 5
# end enum CUlimit_enum
# begin enum CUlimit
typealias CUlimit Uint32
const CU_LIMIT_STACK_SIZE = 0
const CU_LIMIT_PRINTF_FIFO_SIZE = 1
const CU_LIMIT_MALLOC_HEAP_SIZE = 2
const CU_LIMIT_DEV_RUNTIME_SYNC_DEPTH = 3
const CU_LIMIT_DEV_RUNTIME_PENDING_LAUNCH_COUNT = 4
const CU_LIMIT_MAX = 5
# end enum CUlimit
# begin enum CUresourcetype_enum
typealias CUresourcetype_enum Uint32
const CU_RESOURCE_TYPE_ARRAY = 0
const CU_RESOURCE_TYPE_MIPMAPPED_ARRAY = 1
const CU_RESOURCE_TYPE_LINEAR = 2
const CU_RESOURCE_TYPE_PITCH2D = 3
# end enum CUresourcetype_enum
# begin enum CUresourcetype
typealias CUresourcetype Uint32
const CU_RESOURCE_TYPE_ARRAY = 0
const CU_RESOURCE_TYPE_MIPMAPPED_ARRAY = 1
const CU_RESOURCE_TYPE_LINEAR = 2
const CU_RESOURCE_TYPE_PITCH2D = 3
# end enum CUresourcetype
# begin enum cudaError_enum
typealias cudaError_enum Uint32
const CUDA_SUCCESS = 0
const CUDA_ERROR_INVALID_VALUE = 1
const CUDA_ERROR_OUT_OF_MEMORY = 2
const CUDA_ERROR_NOT_INITIALIZED = 3
const CUDA_ERROR_DEINITIALIZED = 4
const CUDA_ERROR_PROFILER_DISABLED = 5
const CUDA_ERROR_PROFILER_NOT_INITIALIZED = 6
const CUDA_ERROR_PROFILER_ALREADY_STARTED = 7
const CUDA_ERROR_PROFILER_ALREADY_STOPPED = 8
const CUDA_ERROR_NO_DEVICE = 100
const CUDA_ERROR_INVALID_DEVICE = 101
const CUDA_ERROR_INVALID_IMAGE = 200
const CUDA_ERROR_INVALID_CONTEXT = 201
const CUDA_ERROR_CONTEXT_ALREADY_CURRENT = 202
const CUDA_ERROR_MAP_FAILED = 205
const CUDA_ERROR_UNMAP_FAILED = 206
const CUDA_ERROR_ARRAY_IS_MAPPED = 207
const CUDA_ERROR_ALREADY_MAPPED = 208
const CUDA_ERROR_NO_BINARY_FOR_GPU = 209
const CUDA_ERROR_ALREADY_ACQUIRED = 210
const CUDA_ERROR_NOT_MAPPED = 211
const CUDA_ERROR_NOT_MAPPED_AS_ARRAY = 212
const CUDA_ERROR_NOT_MAPPED_AS_POINTER = 213
const CUDA_ERROR_ECC_UNCORRECTABLE = 214
const CUDA_ERROR_UNSUPPORTED_LIMIT = 215
const CUDA_ERROR_CONTEXT_ALREADY_IN_USE = 216
const CUDA_ERROR_PEER_ACCESS_UNSUPPORTED = 217
const CUDA_ERROR_INVALID_SOURCE = 300
const CUDA_ERROR_FILE_NOT_FOUND = 301
const CUDA_ERROR_SHARED_OBJECT_SYMBOL_NOT_FOUND = 302
const CUDA_ERROR_SHARED_OBJECT_INIT_FAILED = 303
const CUDA_ERROR_OPERATING_SYSTEM = 304
const CUDA_ERROR_INVALID_HANDLE = 400
const CUDA_ERROR_NOT_FOUND = 500
const CUDA_ERROR_NOT_READY = 600
const CUDA_ERROR_LAUNCH_FAILED = 700
const CUDA_ERROR_LAUNCH_OUT_OF_RESOURCES = 701
const CUDA_ERROR_LAUNCH_TIMEOUT = 702
const CUDA_ERROR_LAUNCH_INCOMPATIBLE_TEXTURING = 703
const CUDA_ERROR_PEER_ACCESS_ALREADY_ENABLED = 704
const CUDA_ERROR_PEER_ACCESS_NOT_ENABLED = 705
const CUDA_ERROR_PRIMARY_CONTEXT_ACTIVE = 708
const CUDA_ERROR_CONTEXT_IS_DESTROYED = 709
const CUDA_ERROR_ASSERT = 710
const CUDA_ERROR_TOO_MANY_PEERS = 711
const CUDA_ERROR_HOST_MEMORY_ALREADY_REGISTERED = 712
const CUDA_ERROR_HOST_MEMORY_NOT_REGISTERED = 713
const CUDA_ERROR_NOT_PERMITTED = 800
const CUDA_ERROR_NOT_SUPPORTED = 801
const CUDA_ERROR_UNKNOWN = 999
# end enum cudaError_enum
# begin enum CUresult
typealias CUresult Uint32
const CUDA_SUCCESS = 0
const CUDA_ERROR_INVALID_VALUE = 1
const CUDA_ERROR_OUT_OF_MEMORY = 2
const CUDA_ERROR_NOT_INITIALIZED = 3
const CUDA_ERROR_DEINITIALIZED = 4
const CUDA_ERROR_PROFILER_DISABLED = 5
const CUDA_ERROR_PROFILER_NOT_INITIALIZED = 6
const CUDA_ERROR_PROFILER_ALREADY_STARTED = 7
const CUDA_ERROR_PROFILER_ALREADY_STOPPED = 8
const CUDA_ERROR_NO_DEVICE = 100
const CUDA_ERROR_INVALID_DEVICE = 101
const CUDA_ERROR_INVALID_IMAGE = 200
const CUDA_ERROR_INVALID_CONTEXT = 201
const CUDA_ERROR_CONTEXT_ALREADY_CURRENT = 202
const CUDA_ERROR_MAP_FAILED = 205
const CUDA_ERROR_UNMAP_FAILED = 206
const CUDA_ERROR_ARRAY_IS_MAPPED = 207
const CUDA_ERROR_ALREADY_MAPPED = 208
const CUDA_ERROR_NO_BINARY_FOR_GPU = 209
const CUDA_ERROR_ALREADY_ACQUIRED = 210
const CUDA_ERROR_NOT_MAPPED = 211
const CUDA_ERROR_NOT_MAPPED_AS_ARRAY = 212
const CUDA_ERROR_NOT_MAPPED_AS_POINTER = 213
const CUDA_ERROR_ECC_UNCORRECTABLE = 214
const CUDA_ERROR_UNSUPPORTED_LIMIT = 215
const CUDA_ERROR_CONTEXT_ALREADY_IN_USE = 216
const CUDA_ERROR_PEER_ACCESS_UNSUPPORTED = 217
const CUDA_ERROR_INVALID_SOURCE = 300
const CUDA_ERROR_FILE_NOT_FOUND = 301
const CUDA_ERROR_SHARED_OBJECT_SYMBOL_NOT_FOUND = 302
const CUDA_ERROR_SHARED_OBJECT_INIT_FAILED = 303
const CUDA_ERROR_OPERATING_SYSTEM = 304
const CUDA_ERROR_INVALID_HANDLE = 400
const CUDA_ERROR_NOT_FOUND = 500
const CUDA_ERROR_NOT_READY = 600
const CUDA_ERROR_LAUNCH_FAILED = 700
const CUDA_ERROR_LAUNCH_OUT_OF_RESOURCES = 701
const CUDA_ERROR_LAUNCH_TIMEOUT = 702
const CUDA_ERROR_LAUNCH_INCOMPATIBLE_TEXTURING = 703
const CUDA_ERROR_PEER_ACCESS_ALREADY_ENABLED = 704
const CUDA_ERROR_PEER_ACCESS_NOT_ENABLED = 705
const CUDA_ERROR_PRIMARY_CONTEXT_ACTIVE = 708
const CUDA_ERROR_CONTEXT_IS_DESTROYED = 709
const CUDA_ERROR_ASSERT = 710
const CUDA_ERROR_TOO_MANY_PEERS = 711
const CUDA_ERROR_HOST_MEMORY_ALREADY_REGISTERED = 712
const CUDA_ERROR_HOST_MEMORY_NOT_REGISTERED = 713
const CUDA_ERROR_NOT_PERMITTED = 800
const CUDA_ERROR_NOT_SUPPORTED = 801
const CUDA_ERROR_UNKNOWN = 999
# end enum CUresult
typealias CUstreamCallback Ptr{Void}
type CUDA_MEMCPY2D_st
    srcXInBytes::Cint
    srcY::Cint
    srcMemoryType::CUmemorytype
    srcHost::Ptr{None}
    srcDevice::CUdeviceptr
    srcArray::CUarray
    srcPitch::Cint
    dstXInBytes::Cint
    dstY::Cint
    dstMemoryType::CUmemorytype
    dstHost::Ptr{None}
    dstDevice::CUdeviceptr
    dstArray::CUarray
    dstPitch::Cint
    WidthInBytes::Cint
    Height::Cint
end
type CUDA_MEMCPY2D
    srcXInBytes::Cint
    srcY::Cint
    srcMemoryType::CUmemorytype
    srcHost::Ptr{None}
    srcDevice::CUdeviceptr
    srcArray::CUarray
    srcPitch::Cint
    dstXInBytes::Cint
    dstY::Cint
    dstMemoryType::CUmemorytype
    dstHost::Ptr{None}
    dstDevice::CUdeviceptr
    dstArray::CUarray
    dstPitch::Cint
    WidthInBytes::Cint
    Height::Cint
end
type CUDA_MEMCPY3D_st
    srcXInBytes::Cint
    srcY::Cint
    srcZ::Cint
    srcLOD::Cint
    srcMemoryType::CUmemorytype
    srcHost::Ptr{None}
    srcDevice::CUdeviceptr
    srcArray::CUarray
    reserved0::Ptr{None}
    srcPitch::Cint
    srcHeight::Cint
    dstXInBytes::Cint
    dstY::Cint
    dstZ::Cint
    dstLOD::Cint
    dstMemoryType::CUmemorytype
    dstHost::Ptr{None}
    dstDevice::CUdeviceptr
    dstArray::CUarray
    reserved1::Ptr{None}
    dstPitch::Cint
    dstHeight::Cint
    WidthInBytes::Cint
    Height::Cint
    Depth::Cint
end
type CUDA_MEMCPY3D
    srcXInBytes::Cint
    srcY::Cint
    srcZ::Cint
    srcLOD::Cint
    srcMemoryType::CUmemorytype
    srcHost::Ptr{None}
    srcDevice::CUdeviceptr
    srcArray::CUarray
    reserved0::Ptr{None}
    srcPitch::Cint
    srcHeight::Cint
    dstXInBytes::Cint
    dstY::Cint
    dstZ::Cint
    dstLOD::Cint
    dstMemoryType::CUmemorytype
    dstHost::Ptr{None}
    dstDevice::CUdeviceptr
    dstArray::CUarray
    reserved1::Ptr{None}
    dstPitch::Cint
    dstHeight::Cint
    WidthInBytes::Cint
    Height::Cint
    Depth::Cint
end
type CUDA_MEMCPY3D_PEER_st
    srcXInBytes::Cint
    srcY::Cint
    srcZ::Cint
    srcLOD::Cint
    srcMemoryType::CUmemorytype
    srcHost::Ptr{None}
    srcDevice::CUdeviceptr
    srcArray::CUarray
    srcContext::CUcontext
    srcPitch::Cint
    srcHeight::Cint
    dstXInBytes::Cint
    dstY::Cint
    dstZ::Cint
    dstLOD::Cint
    dstMemoryType::CUmemorytype
    dstHost::Ptr{None}
    dstDevice::CUdeviceptr
    dstArray::CUarray
    dstContext::CUcontext
    dstPitch::Cint
    dstHeight::Cint
    WidthInBytes::Cint
    Height::Cint
    Depth::Cint
end
type CUDA_MEMCPY3D_PEER
    srcXInBytes::Cint
    srcY::Cint
    srcZ::Cint
    srcLOD::Cint
    srcMemoryType::CUmemorytype
    srcHost::Ptr{None}
    srcDevice::CUdeviceptr
    srcArray::CUarray
    srcContext::CUcontext
    srcPitch::Cint
    srcHeight::Cint
    dstXInBytes::Cint
    dstY::Cint
    dstZ::Cint
    dstLOD::Cint
    dstMemoryType::CUmemorytype
    dstHost::Ptr{None}
    dstDevice::CUdeviceptr
    dstArray::CUarray
    dstContext::CUcontext
    dstPitch::Cint
    dstHeight::Cint
    WidthInBytes::Cint
    Height::Cint
    Depth::Cint
end
type CUDA_ARRAY_DESCRIPTOR_st
    Width::Cint
    Height::Cint
    Format::CUarray_format
    NumChannels::Uint32
end
type CUDA_ARRAY_DESCRIPTOR
    Width::Cint
    Height::Cint
    Format::CUarray_format
    NumChannels::Uint32
end
type CUDA_ARRAY3D_DESCRIPTOR_st
    Width::Cint
    Height::Cint
    Depth::Cint
    Format::CUarray_format
    NumChannels::Uint32
    Flags::Uint32
end
type CUDA_ARRAY3D_DESCRIPTOR
    Width::Cint
    Height::Cint
    Depth::Cint
    Format::CUarray_format
    NumChannels::Uint32
    Flags::Uint32
end
type CUDA_RESOURCE_DESC_st
    resType::CUresourcetype
    #res::
    flags::Uint32
end
type CUDA_RESOURCE_DESC
    resType::CUresourcetype
    #res::
    flags::Uint32
end
immutable Array_3_CUaddress_mode
    d1::CUaddress_mode
    d2::CUaddress_mode
    d3::CUaddress_mode
end
immutable Array_16_Cint
    d1::Cint
    d2::Cint
    d3::Cint
    d4::Cint
    d5::Cint
    d6::Cint
    d7::Cint
    d8::Cint
    d9::Cint
    d10::Cint
    d11::Cint
    d12::Cint
    d13::Cint
    d14::Cint
    d15::Cint
    d16::Cint
end
type CUDA_TEXTURE_DESC_st
    addressMode::Array_3_CUaddress_mode
    filterMode::CUfilter_mode
    flags::Uint32
    maxAnisotropy::Uint32
    mipmapFilterMode::CUfilter_mode
    mipmapLevelBias::Cfloat
    minMipmapLevelClamp::Cfloat
    maxMipmapLevelClamp::Cfloat
    reserved::Array_16_Cint
end
type CUDA_TEXTURE_DESC
    addressMode::Array_3_CUaddress_mode
    filterMode::CUfilter_mode
    flags::Uint32
    maxAnisotropy::Uint32
    mipmapFilterMode::CUfilter_mode
    mipmapLevelBias::Cfloat
    minMipmapLevelClamp::Cfloat
    maxMipmapLevelClamp::Cfloat
    reserved::Array_16_Cint
end
# begin enum CUresourceViewFormat_enum
typealias CUresourceViewFormat_enum Uint32
const CU_RES_VIEW_FORMAT_NONE = 0
const CU_RES_VIEW_FORMAT_UINT_1X8 = 1
const CU_RES_VIEW_FORMAT_UINT_2X8 = 2
const CU_RES_VIEW_FORMAT_UINT_4X8 = 3
const CU_RES_VIEW_FORMAT_SINT_1X8 = 4
const CU_RES_VIEW_FORMAT_SINT_2X8 = 5
const CU_RES_VIEW_FORMAT_SINT_4X8 = 6
const CU_RES_VIEW_FORMAT_UINT_1X16 = 7
const CU_RES_VIEW_FORMAT_UINT_2X16 = 8
const CU_RES_VIEW_FORMAT_UINT_4X16 = 9
const CU_RES_VIEW_FORMAT_SINT_1X16 = 10
const CU_RES_VIEW_FORMAT_SINT_2X16 = 11
const CU_RES_VIEW_FORMAT_SINT_4X16 = 12
const CU_RES_VIEW_FORMAT_UINT_1X32 = 13
const CU_RES_VIEW_FORMAT_UINT_2X32 = 14
const CU_RES_VIEW_FORMAT_UINT_4X32 = 15
const CU_RES_VIEW_FORMAT_SINT_1X32 = 16
const CU_RES_VIEW_FORMAT_SINT_2X32 = 17
const CU_RES_VIEW_FORMAT_SINT_4X32 = 18
const CU_RES_VIEW_FORMAT_FLOAT_1X16 = 19
const CU_RES_VIEW_FORMAT_FLOAT_2X16 = 20
const CU_RES_VIEW_FORMAT_FLOAT_4X16 = 21
const CU_RES_VIEW_FORMAT_FLOAT_1X32 = 22
const CU_RES_VIEW_FORMAT_FLOAT_2X32 = 23
const CU_RES_VIEW_FORMAT_FLOAT_4X32 = 24
const CU_RES_VIEW_FORMAT_UNSIGNED_BC1 = 25
const CU_RES_VIEW_FORMAT_UNSIGNED_BC2 = 26
const CU_RES_VIEW_FORMAT_UNSIGNED_BC3 = 27
const CU_RES_VIEW_FORMAT_UNSIGNED_BC4 = 28
const CU_RES_VIEW_FORMAT_SIGNED_BC4 = 29
const CU_RES_VIEW_FORMAT_UNSIGNED_BC5 = 30
const CU_RES_VIEW_FORMAT_SIGNED_BC5 = 31
const CU_RES_VIEW_FORMAT_UNSIGNED_BC6H = 32
const CU_RES_VIEW_FORMAT_SIGNED_BC6H = 33
const CU_RES_VIEW_FORMAT_UNSIGNED_BC7 = 34
# end enum CUresourceViewFormat_enum
# begin enum CUresourceViewFormat
typealias CUresourceViewFormat Uint32
const CU_RES_VIEW_FORMAT_NONE = 0
const CU_RES_VIEW_FORMAT_UINT_1X8 = 1
const CU_RES_VIEW_FORMAT_UINT_2X8 = 2
const CU_RES_VIEW_FORMAT_UINT_4X8 = 3
const CU_RES_VIEW_FORMAT_SINT_1X8 = 4
const CU_RES_VIEW_FORMAT_SINT_2X8 = 5
const CU_RES_VIEW_FORMAT_SINT_4X8 = 6
const CU_RES_VIEW_FORMAT_UINT_1X16 = 7
const CU_RES_VIEW_FORMAT_UINT_2X16 = 8
const CU_RES_VIEW_FORMAT_UINT_4X16 = 9
const CU_RES_VIEW_FORMAT_SINT_1X16 = 10
const CU_RES_VIEW_FORMAT_SINT_2X16 = 11
const CU_RES_VIEW_FORMAT_SINT_4X16 = 12
const CU_RES_VIEW_FORMAT_UINT_1X32 = 13
const CU_RES_VIEW_FORMAT_UINT_2X32 = 14
const CU_RES_VIEW_FORMAT_UINT_4X32 = 15
const CU_RES_VIEW_FORMAT_SINT_1X32 = 16
const CU_RES_VIEW_FORMAT_SINT_2X32 = 17
const CU_RES_VIEW_FORMAT_SINT_4X32 = 18
const CU_RES_VIEW_FORMAT_FLOAT_1X16 = 19
const CU_RES_VIEW_FORMAT_FLOAT_2X16 = 20
const CU_RES_VIEW_FORMAT_FLOAT_4X16 = 21
const CU_RES_VIEW_FORMAT_FLOAT_1X32 = 22
const CU_RES_VIEW_FORMAT_FLOAT_2X32 = 23
const CU_RES_VIEW_FORMAT_FLOAT_4X32 = 24
const CU_RES_VIEW_FORMAT_UNSIGNED_BC1 = 25
const CU_RES_VIEW_FORMAT_UNSIGNED_BC2 = 26
const CU_RES_VIEW_FORMAT_UNSIGNED_BC3 = 27
const CU_RES_VIEW_FORMAT_UNSIGNED_BC4 = 28
const CU_RES_VIEW_FORMAT_SIGNED_BC4 = 29
const CU_RES_VIEW_FORMAT_UNSIGNED_BC5 = 30
const CU_RES_VIEW_FORMAT_SIGNED_BC5 = 31
const CU_RES_VIEW_FORMAT_UNSIGNED_BC6H = 32
const CU_RES_VIEW_FORMAT_SIGNED_BC6H = 33
const CU_RES_VIEW_FORMAT_UNSIGNED_BC7 = 34
# end enum CUresourceViewFormat
immutable Array_16_Uint32
    d1::Uint32
    d2::Uint32
    d3::Uint32
    d4::Uint32
    d5::Uint32
    d6::Uint32
    d7::Uint32
    d8::Uint32
    d9::Uint32
    d10::Uint32
    d11::Uint32
    d12::Uint32
    d13::Uint32
    d14::Uint32
    d15::Uint32
    d16::Uint32
end
type CUDA_RESOURCE_VIEW_DESC_st
    format::CUresourceViewFormat
    width::Cint
    height::Cint
    depth::Cint
    firstMipmapLevel::Uint32
    lastMipmapLevel::Uint32
    firstLayer::Uint32
    lastLayer::Uint32
    reserved::Array_16_Uint32
end
type CUDA_RESOURCE_VIEW_DESC
    format::CUresourceViewFormat
    width::Cint
    height::Cint
    depth::Cint
    firstMipmapLevel::Uint32
    lastMipmapLevel::Uint32
    firstLayer::Uint32
    lastLayer::Uint32
    reserved::Array_16_Uint32
end
type CUDA_POINTER_ATTRIBUTE_P2P_TOKENS_st
    p2pToken::Culonglong
    vaSpaceToken::Uint32
end
type CUDA_POINTER_ATTRIBUTE_P2P_TOKENS
    p2pToken::Culonglong
    vaSpaceToken::Uint32
end
