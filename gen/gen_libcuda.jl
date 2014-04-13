# Julia wrapper for header: /usr/local/cuda/include/cuda.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function cuInit(Flags::Uint32)
  @cucall( (:cuInit, :libcuda), CUresult, (Uint32,), Flags)
end
function cuDriverGetVersion(driverVersion::Ptr{Cint})
  @cucall( (:cuDriverGetVersion, :libcuda), CUresult, (Ptr{Cint},), driverVersion)
end
function cuDeviceGet(device::Ptr{CUdevice}, ordinal::Cint)
  @cucall( (:cuDeviceGet, :libcuda), CUresult, (Ptr{CUdevice}, Cint), device, ordinal)
end
function cuDeviceGetCount(count::Ptr{Cint})
  @cucall( (:cuDeviceGetCount, :libcuda), CUresult, (Ptr{Cint},), count)
end
function cuDeviceGetName(name::Ptr{Uint8}, len::Cint, dev::CUdevice)
  @cucall( (:cuDeviceGetName, :libcuda), CUresult, (Ptr{Uint8}, Cint, CUdevice), name, len, dev)
end
function cuDeviceTotalMem_v2(bytes::Ptr{Cint}, dev::CUdevice)
  @cucall( (:cuDeviceTotalMem_v2, :libcuda), CUresult, (Ptr{Cint}, CUdevice), bytes, dev)
end
function cuDeviceGetAttribute(pi::Ptr{Cint}, attrib::CUdevice_attribute, dev::CUdevice)
  @cucall( (:cuDeviceGetAttribute, :libcuda), CUresult, (Ptr{Cint}, CUdevice_attribute, CUdevice), pi, attrib, dev)
end
function cuDeviceGetProperties(prop::Ptr{CUdevprop}, dev::CUdevice)
  @cucall( (:cuDeviceGetProperties, :libcuda), CUresult, (Ptr{CUdevprop}, CUdevice), prop, dev)
end
function cuDeviceComputeCapability(major::Ptr{Cint}, minor::Ptr{Cint}, dev::CUdevice)
  @cucall( (:cuDeviceComputeCapability, :libcuda), CUresult, (Ptr{Cint}, Ptr{Cint}, CUdevice), major, minor, dev)
end
function cuCtxCreate_v2(pctx::Ptr{CUcontext}, flags::Uint32, dev::CUdevice)
  @cucall( (:cuCtxCreate_v2, :libcuda), CUresult, (Ptr{CUcontext}, Uint32, CUdevice), pctx, flags, dev)
end
function cuCtxDestroy_v2(ctx::CUcontext)
  @cucall( (:cuCtxDestroy_v2, :libcuda), CUresult, (CUcontext,), ctx)
end
function cuCtxPushCurrent_v2(ctx::CUcontext)
  @cucall( (:cuCtxPushCurrent_v2, :libcuda), CUresult, (CUcontext,), ctx)
end
function cuCtxPopCurrent_v2(pctx::Ptr{CUcontext})
  @cucall( (:cuCtxPopCurrent_v2, :libcuda), CUresult, (Ptr{CUcontext},), pctx)
end
function cuCtxSetCurrent(ctx::CUcontext)
  @cucall( (:cuCtxSetCurrent, :libcuda), CUresult, (CUcontext,), ctx)
end
function cuCtxGetCurrent(pctx::Ptr{CUcontext})
  @cucall( (:cuCtxGetCurrent, :libcuda), CUresult, (Ptr{CUcontext},), pctx)
end
function cuCtxGetDevice(device::Ptr{CUdevice})
  @cucall( (:cuCtxGetDevice, :libcuda), CUresult, (Ptr{CUdevice},), device)
end
function cuCtxSynchronize()
  @cucall( (:cuCtxSynchronize, :libcuda), CUresult, (), )
end
function cuCtxSetLimit(limit::CUlimit, value::Cint)
  @cucall( (:cuCtxSetLimit, :libcuda), CUresult, (CUlimit, Cint), limit, value)
end
function cuCtxGetLimit(pvalue::Ptr{Cint}, limit::CUlimit)
  @cucall( (:cuCtxGetLimit, :libcuda), CUresult, (Ptr{Cint}, CUlimit), pvalue, limit)
end
function cuCtxGetCacheConfig(pconfig::Ptr{CUfunc_cache})
  @cucall( (:cuCtxGetCacheConfig, :libcuda), CUresult, (Ptr{CUfunc_cache},), pconfig)
end
function cuCtxSetCacheConfig(config::CUfunc_cache)
  @cucall( (:cuCtxSetCacheConfig, :libcuda), CUresult, (CUfunc_cache,), config)
end
function cuCtxGetSharedMemConfig(pConfig::Ptr{CUsharedconfig})
  @cucall( (:cuCtxGetSharedMemConfig, :libcuda), CUresult, (Ptr{CUsharedconfig},), pConfig)
end
function cuCtxSetSharedMemConfig(config::CUsharedconfig)
  @cucall( (:cuCtxSetSharedMemConfig, :libcuda), CUresult, (CUsharedconfig,), config)
end
function cuCtxGetApiVersion(ctx::CUcontext, version::Ptr{Uint32})
  @cucall( (:cuCtxGetApiVersion, :libcuda), CUresult, (CUcontext, Ptr{Uint32}), ctx, version)
end
function cuCtxGetStreamPriorityRange(leastPriority::Ptr{Cint}, greatestPriority::Ptr{Cint})
  @cucall( (:cuCtxGetStreamPriorityRange, :libcuda), CUresult, (Ptr{Cint}, Ptr{Cint}), leastPriority, greatestPriority)
end
function cuCtxAttach(pctx::Ptr{CUcontext}, flags::Uint32)
  @cucall( (:cuCtxAttach, :libcuda), CUresult, (Ptr{CUcontext}, Uint32), pctx, flags)
end
function cuCtxDetach(ctx::CUcontext)
  @cucall( (:cuCtxDetach, :libcuda), CUresult, (CUcontext,), ctx)
end
function cuModuleLoad(_module::Ptr{CUmodule}, fname::Ptr{Uint8})
  @cucall( (:cuModuleLoad, :libcuda), CUresult, (Ptr{CUmodule}, Ptr{Uint8}), _module, fname)
end
function cuModuleLoadData(_module::Ptr{CUmodule}, image::Ptr{None})
  @cucall( (:cuModuleLoadData, :libcuda), CUresult, (Ptr{CUmodule}, Ptr{None}), _module, image)
end
function cuModuleLoadDataEx(_module::Ptr{CUmodule}, image::Ptr{None}, numOptions::Uint32, options::Ptr{CUjit_option}, optionValues::Ptr{Ptr{None}})
  @cucall( (:cuModuleLoadDataEx, :libcuda), CUresult, (Ptr{CUmodule}, Ptr{None}, Uint32, Ptr{CUjit_option}, Ptr{Ptr{None}}), _module, image, numOptions, options, optionValues)
end
function cuModuleLoadFatBinary(_module::Ptr{CUmodule}, fatCubin::Ptr{None})
  @cucall( (:cuModuleLoadFatBinary, :libcuda), CUresult, (Ptr{CUmodule}, Ptr{None}), _module, fatCubin)
end
function cuModuleUnload(hmod::CUmodule)
  @cucall( (:cuModuleUnload, :libcuda), CUresult, (CUmodule,), hmod)
end
function cuModuleGetFunction(hfunc::Ptr{CUfunction}, hmod::CUmodule, name::Ptr{Uint8})
  @cucall( (:cuModuleGetFunction, :libcuda), CUresult, (Ptr{CUfunction}, CUmodule, Ptr{Uint8}), hfunc, hmod, name)
end
function cuModuleGetGlobal_v2(dptr::Ptr{CUdeviceptr}, bytes::Ptr{Cint}, hmod::CUmodule, name::Ptr{Uint8})
  @cucall( (:cuModuleGetGlobal_v2, :libcuda), CUresult, (Ptr{CUdeviceptr}, Ptr{Cint}, CUmodule, Ptr{Uint8}), dptr, bytes, hmod, name)
end
function cuModuleGetTexRef(pTexRef::Ptr{CUtexref}, hmod::CUmodule, name::Ptr{Uint8})
  @cucall( (:cuModuleGetTexRef, :libcuda), CUresult, (Ptr{CUtexref}, CUmodule, Ptr{Uint8}), pTexRef, hmod, name)
end
function cuModuleGetSurfRef(pSurfRef::Ptr{CUsurfref}, hmod::CUmodule, name::Ptr{Uint8})
  @cucall( (:cuModuleGetSurfRef, :libcuda), CUresult, (Ptr{CUsurfref}, CUmodule, Ptr{Uint8}), pSurfRef, hmod, name)
end
function cuLinkCreate(numOptions::Uint32, options::Ptr{CUjit_option}, optionValues::Ptr{Ptr{None}}, stateOut::Ptr{CUlinkState})
  @cucall( (:cuLinkCreate, :libcuda), CUresult, (Uint32, Ptr{CUjit_option}, Ptr{Ptr{None}}, Ptr{CUlinkState}), numOptions, options, optionValues, stateOut)
end
function cuLinkAddData(state::CUlinkState, _type::CUjitInputType, data::Ptr{None}, size::Cint, name::Ptr{Uint8}, numOptions::Uint32, options::Ptr{CUjit_option}, optionValues::Ptr{Ptr{None}})
  @cucall( (:cuLinkAddData, :libcuda), CUresult, (CUlinkState, CUjitInputType, Ptr{None}, Cint, Ptr{Uint8}, Uint32, Ptr{CUjit_option}, Ptr{Ptr{None}}), state, _type, data, size, name, numOptions, options, optionValues)
end
function cuLinkAddFile(state::CUlinkState, _type::CUjitInputType, path::Ptr{Uint8}, numOptions::Uint32, options::Ptr{CUjit_option}, optionValues::Ptr{Ptr{None}})
  @cucall( (:cuLinkAddFile, :libcuda), CUresult, (CUlinkState, CUjitInputType, Ptr{Uint8}, Uint32, Ptr{CUjit_option}, Ptr{Ptr{None}}), state, _type, path, numOptions, options, optionValues)
end
function cuLinkComplete(state::CUlinkState, cubinOut::Ptr{Ptr{None}}, sizeOut::Ptr{Cint})
  @cucall( (:cuLinkComplete, :libcuda), CUresult, (CUlinkState, Ptr{Ptr{None}}, Ptr{Cint}), state, cubinOut, sizeOut)
end
function cuLinkDestroy(state::CUlinkState)
  @cucall( (:cuLinkDestroy, :libcuda), CUresult, (CUlinkState,), state)
end
function cuMemGetInfo_v2(free::Ptr{Cint}, total::Ptr{Cint})
  @cucall( (:cuMemGetInfo_v2, :libcuda), CUresult, (Ptr{Cint}, Ptr{Cint}), free, total)
end
function cuMemAlloc_v2(dptr::Ptr{CUdeviceptr}, bytesize::Cint)
  @cucall( (:cuMemAlloc_v2, :libcuda), CUresult, (Ptr{CUdeviceptr}, Cint), dptr, bytesize)
end
function cuMemAllocPitch_v2(dptr::Ptr{CUdeviceptr}, pPitch::Ptr{Cint}, WidthInBytes::Cint, Height::Cint, ElementSizeBytes::Uint32)
  @cucall( (:cuMemAllocPitch_v2, :libcuda), CUresult, (Ptr{CUdeviceptr}, Ptr{Cint}, Cint, Cint, Uint32), dptr, pPitch, WidthInBytes, Height, ElementSizeBytes)
end
function cuMemFree_v2(dptr::CUdeviceptr)
  @cucall( (:cuMemFree_v2, :libcuda), CUresult, (CUdeviceptr,), dptr)
end
function cuMemGetAddressRange_v2(pbase::Ptr{CUdeviceptr}, psize::Ptr{Cint}, dptr::CUdeviceptr)
  @cucall( (:cuMemGetAddressRange_v2, :libcuda), CUresult, (Ptr{CUdeviceptr}, Ptr{Cint}, CUdeviceptr), pbase, psize, dptr)
end
function cuMemAllocHost_v2(pp::Ptr{Ptr{None}}, bytesize::Cint)
  @cucall( (:cuMemAllocHost_v2, :libcuda), CUresult, (Ptr{Ptr{None}}, Cint), pp, bytesize)
end
function cuMemFreeHost(p::Ptr{None})
  @cucall( (:cuMemFreeHost, :libcuda), CUresult, (Ptr{None},), p)
end
function cuMemHostAlloc(pp::Ptr{Ptr{None}}, bytesize::Cint, Flags::Uint32)
  @cucall( (:cuMemHostAlloc, :libcuda), CUresult, (Ptr{Ptr{None}}, Cint, Uint32), pp, bytesize, Flags)
end
function cuMemHostGetDevicePointer_v2(pdptr::Ptr{CUdeviceptr}, p::Ptr{None}, Flags::Uint32)
  @cucall( (:cuMemHostGetDevicePointer_v2, :libcuda), CUresult, (Ptr{CUdeviceptr}, Ptr{None}, Uint32), pdptr, p, Flags)
end
function cuMemHostGetFlags(pFlags::Ptr{Uint32}, p::Ptr{None})
  @cucall( (:cuMemHostGetFlags, :libcuda), CUresult, (Ptr{Uint32}, Ptr{None}), pFlags, p)
end
function cuDeviceGetByPCIBusId(dev::Ptr{CUdevice}, pciBusId::Ptr{Uint8})
  @cucall( (:cuDeviceGetByPCIBusId, :libcuda), CUresult, (Ptr{CUdevice}, Ptr{Uint8}), dev, pciBusId)
end
function cuDeviceGetPCIBusId(pciBusId::Ptr{Uint8}, len::Cint, dev::CUdevice)
  @cucall( (:cuDeviceGetPCIBusId, :libcuda), CUresult, (Ptr{Uint8}, Cint, CUdevice), pciBusId, len, dev)
end
function cuIpcGetEventHandle(pHandle::Ptr{CUipcEventHandle}, event::CUevent)
  @cucall( (:cuIpcGetEventHandle, :libcuda), CUresult, (Ptr{CUipcEventHandle}, CUevent), pHandle, event)
end
function cuIpcOpenEventHandle(phEvent::Ptr{CUevent}, handle::CUipcEventHandle)
  @cucall( (:cuIpcOpenEventHandle, :libcuda), CUresult, (Ptr{CUevent}, CUipcEventHandle), phEvent, handle)
end
function cuIpcGetMemHandle(pHandle::Ptr{CUipcMemHandle}, dptr::CUdeviceptr)
  @cucall( (:cuIpcGetMemHandle, :libcuda), CUresult, (Ptr{CUipcMemHandle}, CUdeviceptr), pHandle, dptr)
end
function cuIpcOpenMemHandle(pdptr::Ptr{CUdeviceptr}, handle::CUipcMemHandle, Flags::Uint32)
  @cucall( (:cuIpcOpenMemHandle, :libcuda), CUresult, (Ptr{CUdeviceptr}, CUipcMemHandle, Uint32), pdptr, handle, Flags)
end
function cuIpcCloseMemHandle(dptr::CUdeviceptr)
  @cucall( (:cuIpcCloseMemHandle, :libcuda), CUresult, (CUdeviceptr,), dptr)
end
function cuMemHostRegister(p::Ptr{None}, bytesize::Cint, Flags::Uint32)
  @cucall( (:cuMemHostRegister, :libcuda), CUresult, (Ptr{None}, Cint, Uint32), p, bytesize, Flags)
end
function cuMemHostUnregister(p::Ptr{None})
  @cucall( (:cuMemHostUnregister, :libcuda), CUresult, (Ptr{None},), p)
end
function cuMemcpy(dst::CUdeviceptr, src::CUdeviceptr, ByteCount::Cint)
  @cucall( (:cuMemcpy, :libcuda), CUresult, (CUdeviceptr, CUdeviceptr, Cint), dst, src, ByteCount)
end
function cuMemcpyPeer(dstDevice::CUdeviceptr, dstContext::CUcontext, srcDevice::CUdeviceptr, srcContext::CUcontext, ByteCount::Cint)
  @cucall( (:cuMemcpyPeer, :libcuda), CUresult, (CUdeviceptr, CUcontext, CUdeviceptr, CUcontext, Cint), dstDevice, dstContext, srcDevice, srcContext, ByteCount)
end
function cuMemcpyHtoD_v2(dstDevice::CUdeviceptr, srcHost::Ptr{None}, ByteCount::Cint)
  @cucall( (:cuMemcpyHtoD_v2, :libcuda), CUresult, (CUdeviceptr, Ptr{None}, Cint), dstDevice, srcHost, ByteCount)
end
function cuMemcpyDtoH_v2(dstHost::Ptr{None}, srcDevice::CUdeviceptr, ByteCount::Cint)
  @cucall( (:cuMemcpyDtoH_v2, :libcuda), CUresult, (Ptr{None}, CUdeviceptr, Cint), dstHost, srcDevice, ByteCount)
end
function cuMemcpyDtoD_v2(dstDevice::CUdeviceptr, srcDevice::CUdeviceptr, ByteCount::Cint)
  @cucall( (:cuMemcpyDtoD_v2, :libcuda), CUresult, (CUdeviceptr, CUdeviceptr, Cint), dstDevice, srcDevice, ByteCount)
end
function cuMemcpyDtoA_v2(dstArray::CUarray, dstOffset::Cint, srcDevice::CUdeviceptr, ByteCount::Cint)
  @cucall( (:cuMemcpyDtoA_v2, :libcuda), CUresult, (CUarray, Cint, CUdeviceptr, Cint), dstArray, dstOffset, srcDevice, ByteCount)
end
function cuMemcpyAtoD_v2(dstDevice::CUdeviceptr, srcArray::CUarray, srcOffset::Cint, ByteCount::Cint)
  @cucall( (:cuMemcpyAtoD_v2, :libcuda), CUresult, (CUdeviceptr, CUarray, Cint, Cint), dstDevice, srcArray, srcOffset, ByteCount)
end
function cuMemcpyHtoA_v2(dstArray::CUarray, dstOffset::Cint, srcHost::Ptr{None}, ByteCount::Cint)
  @cucall( (:cuMemcpyHtoA_v2, :libcuda), CUresult, (CUarray, Cint, Ptr{None}, Cint), dstArray, dstOffset, srcHost, ByteCount)
end
function cuMemcpyAtoH_v2(dstHost::Ptr{None}, srcArray::CUarray, srcOffset::Cint, ByteCount::Cint)
  @cucall( (:cuMemcpyAtoH_v2, :libcuda), CUresult, (Ptr{None}, CUarray, Cint, Cint), dstHost, srcArray, srcOffset, ByteCount)
end
function cuMemcpyAtoA_v2(dstArray::CUarray, dstOffset::Cint, srcArray::CUarray, srcOffset::Cint, ByteCount::Cint)
  @cucall( (:cuMemcpyAtoA_v2, :libcuda), CUresult, (CUarray, Cint, CUarray, Cint, Cint), dstArray, dstOffset, srcArray, srcOffset, ByteCount)
end
function cuMemcpy2D_v2(pCopy::Ptr{CUDA_MEMCPY2D})
  @cucall( (:cuMemcpy2D_v2, :libcuda), CUresult, (Ptr{CUDA_MEMCPY2D},), pCopy)
end
function cuMemcpy2DUnaligned_v2(pCopy::Ptr{CUDA_MEMCPY2D})
  @cucall( (:cuMemcpy2DUnaligned_v2, :libcuda), CUresult, (Ptr{CUDA_MEMCPY2D},), pCopy)
end
function cuMemcpy3D_v2(pCopy::Ptr{CUDA_MEMCPY3D})
  @cucall( (:cuMemcpy3D_v2, :libcuda), CUresult, (Ptr{CUDA_MEMCPY3D},), pCopy)
end
function cuMemcpy3DPeer(pCopy::Ptr{CUDA_MEMCPY3D_PEER})
  @cucall( (:cuMemcpy3DPeer, :libcuda), CUresult, (Ptr{CUDA_MEMCPY3D_PEER},), pCopy)
end
function cuMemcpyAsync(dst::CUdeviceptr, src::CUdeviceptr, ByteCount::Cint, hStream::CUstream)
  @cucall( (:cuMemcpyAsync, :libcuda), CUresult, (CUdeviceptr, CUdeviceptr, Cint, CUstream), dst, src, ByteCount, hStream)
end
function cuMemcpyPeerAsync(dstDevice::CUdeviceptr, dstContext::CUcontext, srcDevice::CUdeviceptr, srcContext::CUcontext, ByteCount::Cint, hStream::CUstream)
  @cucall( (:cuMemcpyPeerAsync, :libcuda), CUresult, (CUdeviceptr, CUcontext, CUdeviceptr, CUcontext, Cint, CUstream), dstDevice, dstContext, srcDevice, srcContext, ByteCount, hStream)
end
function cuMemcpyHtoDAsync_v2(dstDevice::CUdeviceptr, srcHost::Ptr{None}, ByteCount::Cint, hStream::CUstream)
  @cucall( (:cuMemcpyHtoDAsync_v2, :libcuda), CUresult, (CUdeviceptr, Ptr{None}, Cint, CUstream), dstDevice, srcHost, ByteCount, hStream)
end
function cuMemcpyDtoHAsync_v2(dstHost::Ptr{None}, srcDevice::CUdeviceptr, ByteCount::Cint, hStream::CUstream)
  @cucall( (:cuMemcpyDtoHAsync_v2, :libcuda), CUresult, (Ptr{None}, CUdeviceptr, Cint, CUstream), dstHost, srcDevice, ByteCount, hStream)
end
function cuMemcpyDtoDAsync_v2(dstDevice::CUdeviceptr, srcDevice::CUdeviceptr, ByteCount::Cint, hStream::CUstream)
  @cucall( (:cuMemcpyDtoDAsync_v2, :libcuda), CUresult, (CUdeviceptr, CUdeviceptr, Cint, CUstream), dstDevice, srcDevice, ByteCount, hStream)
end
function cuMemcpyHtoAAsync_v2(dstArray::CUarray, dstOffset::Cint, srcHost::Ptr{None}, ByteCount::Cint, hStream::CUstream)
  @cucall( (:cuMemcpyHtoAAsync_v2, :libcuda), CUresult, (CUarray, Cint, Ptr{None}, Cint, CUstream), dstArray, dstOffset, srcHost, ByteCount, hStream)
end
function cuMemcpyAtoHAsync_v2(dstHost::Ptr{None}, srcArray::CUarray, srcOffset::Cint, ByteCount::Cint, hStream::CUstream)
  @cucall( (:cuMemcpyAtoHAsync_v2, :libcuda), CUresult, (Ptr{None}, CUarray, Cint, Cint, CUstream), dstHost, srcArray, srcOffset, ByteCount, hStream)
end
function cuMemcpy2DAsync_v2(pCopy::Ptr{CUDA_MEMCPY2D}, hStream::CUstream)
  @cucall( (:cuMemcpy2DAsync_v2, :libcuda), CUresult, (Ptr{CUDA_MEMCPY2D}, CUstream), pCopy, hStream)
end
function cuMemcpy3DAsync_v2(pCopy::Ptr{CUDA_MEMCPY3D}, hStream::CUstream)
  @cucall( (:cuMemcpy3DAsync_v2, :libcuda), CUresult, (Ptr{CUDA_MEMCPY3D}, CUstream), pCopy, hStream)
end
function cuMemcpy3DPeerAsync(pCopy::Ptr{CUDA_MEMCPY3D_PEER}, hStream::CUstream)
  @cucall( (:cuMemcpy3DPeerAsync, :libcuda), CUresult, (Ptr{CUDA_MEMCPY3D_PEER}, CUstream), pCopy, hStream)
end
function cuMemsetD8_v2(dstDevice::CUdeviceptr, uc::Cuchar, N::Cint)
  @cucall( (:cuMemsetD8_v2, :libcuda), CUresult, (CUdeviceptr, Cuchar, Cint), dstDevice, uc, N)
end
function cuMemsetD16_v2(dstDevice::CUdeviceptr, us::Uint16, N::Cint)
  @cucall( (:cuMemsetD16_v2, :libcuda), CUresult, (CUdeviceptr, Uint16, Cint), dstDevice, us, N)
end
function cuMemsetD32_v2(dstDevice::CUdeviceptr, ui::Uint32, N::Cint)
  @cucall( (:cuMemsetD32_v2, :libcuda), CUresult, (CUdeviceptr, Uint32, Cint), dstDevice, ui, N)
end
function cuMemsetD2D8_v2(dstDevice::CUdeviceptr, dstPitch::Cint, uc::Cuchar, Width::Cint, Height::Cint)
  @cucall( (:cuMemsetD2D8_v2, :libcuda), CUresult, (CUdeviceptr, Cint, Cuchar, Cint, Cint), dstDevice, dstPitch, uc, Width, Height)
end
function cuMemsetD2D16_v2(dstDevice::CUdeviceptr, dstPitch::Cint, us::Uint16, Width::Cint, Height::Cint)
  @cucall( (:cuMemsetD2D16_v2, :libcuda), CUresult, (CUdeviceptr, Cint, Uint16, Cint, Cint), dstDevice, dstPitch, us, Width, Height)
end
function cuMemsetD2D32_v2(dstDevice::CUdeviceptr, dstPitch::Cint, ui::Uint32, Width::Cint, Height::Cint)
  @cucall( (:cuMemsetD2D32_v2, :libcuda), CUresult, (CUdeviceptr, Cint, Uint32, Cint, Cint), dstDevice, dstPitch, ui, Width, Height)
end
function cuMemsetD8Async(dstDevice::CUdeviceptr, uc::Cuchar, N::Cint, hStream::CUstream)
  @cucall( (:cuMemsetD8Async, :libcuda), CUresult, (CUdeviceptr, Cuchar, Cint, CUstream), dstDevice, uc, N, hStream)
end
function cuMemsetD16Async(dstDevice::CUdeviceptr, us::Uint16, N::Cint, hStream::CUstream)
  @cucall( (:cuMemsetD16Async, :libcuda), CUresult, (CUdeviceptr, Uint16, Cint, CUstream), dstDevice, us, N, hStream)
end
function cuMemsetD32Async(dstDevice::CUdeviceptr, ui::Uint32, N::Cint, hStream::CUstream)
  @cucall( (:cuMemsetD32Async, :libcuda), CUresult, (CUdeviceptr, Uint32, Cint, CUstream), dstDevice, ui, N, hStream)
end
function cuMemsetD2D8Async(dstDevice::CUdeviceptr, dstPitch::Cint, uc::Cuchar, Width::Cint, Height::Cint, hStream::CUstream)
  @cucall( (:cuMemsetD2D8Async, :libcuda), CUresult, (CUdeviceptr, Cint, Cuchar, Cint, Cint, CUstream), dstDevice, dstPitch, uc, Width, Height, hStream)
end
function cuMemsetD2D16Async(dstDevice::CUdeviceptr, dstPitch::Cint, us::Uint16, Width::Cint, Height::Cint, hStream::CUstream)
  @cucall( (:cuMemsetD2D16Async, :libcuda), CUresult, (CUdeviceptr, Cint, Uint16, Cint, Cint, CUstream), dstDevice, dstPitch, us, Width, Height, hStream)
end
function cuMemsetD2D32Async(dstDevice::CUdeviceptr, dstPitch::Cint, ui::Uint32, Width::Cint, Height::Cint, hStream::CUstream)
  @cucall( (:cuMemsetD2D32Async, :libcuda), CUresult, (CUdeviceptr, Cint, Uint32, Cint, Cint, CUstream), dstDevice, dstPitch, ui, Width, Height, hStream)
end
function cuArrayCreate_v2(pHandle::Ptr{CUarray}, pAllocateArray::Ptr{CUDA_ARRAY_DESCRIPTOR})
  @cucall( (:cuArrayCreate_v2, :libcuda), CUresult, (Ptr{CUarray}, Ptr{CUDA_ARRAY_DESCRIPTOR}), pHandle, pAllocateArray)
end
function cuArrayGetDescriptor_v2(pArrayDescriptor::Ptr{CUDA_ARRAY_DESCRIPTOR}, hArray::CUarray)
  @cucall( (:cuArrayGetDescriptor_v2, :libcuda), CUresult, (Ptr{CUDA_ARRAY_DESCRIPTOR}, CUarray), pArrayDescriptor, hArray)
end
function cuArrayDestroy(hArray::CUarray)
  @cucall( (:cuArrayDestroy, :libcuda), CUresult, (CUarray,), hArray)
end
function cuArray3DCreate_v2(pHandle::Ptr{CUarray}, pAllocateArray::Ptr{CUDA_ARRAY3D_DESCRIPTOR})
  @cucall( (:cuArray3DCreate_v2, :libcuda), CUresult, (Ptr{CUarray}, Ptr{CUDA_ARRAY3D_DESCRIPTOR}), pHandle, pAllocateArray)
end
function cuArray3DGetDescriptor_v2(pArrayDescriptor::Ptr{CUDA_ARRAY3D_DESCRIPTOR}, hArray::CUarray)
  @cucall( (:cuArray3DGetDescriptor_v2, :libcuda), CUresult, (Ptr{CUDA_ARRAY3D_DESCRIPTOR}, CUarray), pArrayDescriptor, hArray)
end
function cuMipmappedArrayCreate(pHandle::Ptr{CUmipmappedArray}, pMipmappedArrayDesc::Ptr{CUDA_ARRAY3D_DESCRIPTOR}, numMipmapLevels::Uint32)
  @cucall( (:cuMipmappedArrayCreate, :libcuda), CUresult, (Ptr{CUmipmappedArray}, Ptr{CUDA_ARRAY3D_DESCRIPTOR}, Uint32), pHandle, pMipmappedArrayDesc, numMipmapLevels)
end
function cuMipmappedArrayGetLevel(pLevelArray::Ptr{CUarray}, hMipmappedArray::CUmipmappedArray, level::Uint32)
  @cucall( (:cuMipmappedArrayGetLevel, :libcuda), CUresult, (Ptr{CUarray}, CUmipmappedArray, Uint32), pLevelArray, hMipmappedArray, level)
end
function cuMipmappedArrayDestroy(hMipmappedArray::CUmipmappedArray)
  @cucall( (:cuMipmappedArrayDestroy, :libcuda), CUresult, (CUmipmappedArray,), hMipmappedArray)
end
function cuPointerGetAttribute(data::Ptr{None}, attribute::CUpointer_attribute, ptr::CUdeviceptr)
  @cucall( (:cuPointerGetAttribute, :libcuda), CUresult, (Ptr{None}, CUpointer_attribute, CUdeviceptr), data, attribute, ptr)
end
function cuStreamCreate(phStream::Ptr{CUstream}, Flags::Uint32)
  @cucall( (:cuStreamCreate, :libcuda), CUresult, (Ptr{CUstream}, Uint32), phStream, Flags)
end
function cuStreamCreateWithPriority(phStream::Ptr{CUstream}, flags::Uint32, priority::Cint)
  @cucall( (:cuStreamCreateWithPriority, :libcuda), CUresult, (Ptr{CUstream}, Uint32, Cint), phStream, flags, priority)
end
function cuStreamGetPriority(hStream::CUstream, priority::Ptr{Cint})
  @cucall( (:cuStreamGetPriority, :libcuda), CUresult, (CUstream, Ptr{Cint}), hStream, priority)
end
function cuStreamGetFlags(hStream::CUstream, flags::Ptr{Uint32})
  @cucall( (:cuStreamGetFlags, :libcuda), CUresult, (CUstream, Ptr{Uint32}), hStream, flags)
end
function cuStreamWaitEvent(hStream::CUstream, hEvent::CUevent, Flags::Uint32)
  @cucall( (:cuStreamWaitEvent, :libcuda), CUresult, (CUstream, CUevent, Uint32), hStream, hEvent, Flags)
end
function cuStreamAddCallback(hStream::CUstream, callback::CUstreamCallback, userData::Ptr{None}, flags::Uint32)
  @cucall( (:cuStreamAddCallback, :libcuda), CUresult, (CUstream, CUstreamCallback, Ptr{None}, Uint32), hStream, callback, userData, flags)
end
function cuStreamQuery(hStream::CUstream)
  @cucall( (:cuStreamQuery, :libcuda), CUresult, (CUstream,), hStream)
end
function cuStreamSynchronize(hStream::CUstream)
  @cucall( (:cuStreamSynchronize, :libcuda), CUresult, (CUstream,), hStream)
end
function cuStreamDestroy_v2(hStream::CUstream)
  @cucall( (:cuStreamDestroy_v2, :libcuda), CUresult, (CUstream,), hStream)
end
function cuEventCreate(phEvent::Ptr{CUevent}, Flags::Uint32)
  @cucall( (:cuEventCreate, :libcuda), CUresult, (Ptr{CUevent}, Uint32), phEvent, Flags)
end
function cuEventRecord(hEvent::CUevent, hStream::CUstream)
  @cucall( (:cuEventRecord, :libcuda), CUresult, (CUevent, CUstream), hEvent, hStream)
end
function cuEventQuery(hEvent::CUevent)
  @cucall( (:cuEventQuery, :libcuda), CUresult, (CUevent,), hEvent)
end
function cuEventSynchronize(hEvent::CUevent)
  @cucall( (:cuEventSynchronize, :libcuda), CUresult, (CUevent,), hEvent)
end
function cuEventDestroy_v2(hEvent::CUevent)
  @cucall( (:cuEventDestroy_v2, :libcuda), CUresult, (CUevent,), hEvent)
end
function cuEventElapsedTime(pMilliseconds::Ptr{Cfloat}, hStart::CUevent, hEnd::CUevent)
  @cucall( (:cuEventElapsedTime, :libcuda), CUresult, (Ptr{Cfloat}, CUevent, CUevent), pMilliseconds, hStart, hEnd)
end
function cuFuncGetAttribute(pi::Ptr{Cint}, attrib::CUfunction_attribute, hfunc::CUfunction)
  @cucall( (:cuFuncGetAttribute, :libcuda), CUresult, (Ptr{Cint}, CUfunction_attribute, CUfunction), pi, attrib, hfunc)
end
function cuFuncSetCacheConfig(hfunc::CUfunction, config::CUfunc_cache)
  @cucall( (:cuFuncSetCacheConfig, :libcuda), CUresult, (CUfunction, CUfunc_cache), hfunc, config)
end
function cuFuncSetSharedMemConfig(hfunc::CUfunction, config::CUsharedconfig)
  @cucall( (:cuFuncSetSharedMemConfig, :libcuda), CUresult, (CUfunction, CUsharedconfig), hfunc, config)
end
function cuLaunchKernel(f::CUfunction, gridDimX::Uint32, gridDimY::Uint32, gridDimZ::Uint32, blockDimX::Uint32, blockDimY::Uint32, blockDimZ::Uint32, sharedMemBytes::Uint32, hStream::CUstream, kernelParams::Ptr{Ptr{None}}, extra::Ptr{Ptr{None}})
  @cucall( (:cuLaunchKernel, :libcuda), CUresult, (CUfunction, Uint32, Uint32, Uint32, Uint32, Uint32, Uint32, Uint32, CUstream, Ptr{Ptr{None}}, Ptr{Ptr{None}}), f, gridDimX, gridDimY, gridDimZ, blockDimX, blockDimY, blockDimZ, sharedMemBytes, hStream, kernelParams, extra)
end
function cuFuncSetBlockShape(hfunc::CUfunction, x::Cint, y::Cint, z::Cint)
  @cucall( (:cuFuncSetBlockShape, :libcuda), CUresult, (CUfunction, Cint, Cint, Cint), hfunc, x, y, z)
end
function cuFuncSetSharedSize(hfunc::CUfunction, bytes::Uint32)
  @cucall( (:cuFuncSetSharedSize, :libcuda), CUresult, (CUfunction, Uint32), hfunc, bytes)
end
function cuParamSetSize(hfunc::CUfunction, numbytes::Uint32)
  @cucall( (:cuParamSetSize, :libcuda), CUresult, (CUfunction, Uint32), hfunc, numbytes)
end
function cuParamSeti(hfunc::CUfunction, offset::Cint, value::Uint32)
  @cucall( (:cuParamSeti, :libcuda), CUresult, (CUfunction, Cint, Uint32), hfunc, offset, value)
end
function cuParamSetf(hfunc::CUfunction, offset::Cint, value::Cfloat)
  @cucall( (:cuParamSetf, :libcuda), CUresult, (CUfunction, Cint, Cfloat), hfunc, offset, value)
end
function cuParamSetv(hfunc::CUfunction, offset::Cint, ptr::Ptr{None}, numbytes::Uint32)
  @cucall( (:cuParamSetv, :libcuda), CUresult, (CUfunction, Cint, Ptr{None}, Uint32), hfunc, offset, ptr, numbytes)
end
function cuLaunch(f::CUfunction)
  @cucall( (:cuLaunch, :libcuda), CUresult, (CUfunction,), f)
end
function cuLaunchGrid(f::CUfunction, grid_width::Cint, grid_height::Cint)
  @cucall( (:cuLaunchGrid, :libcuda), CUresult, (CUfunction, Cint, Cint), f, grid_width, grid_height)
end
function cuLaunchGridAsync(f::CUfunction, grid_width::Cint, grid_height::Cint, hStream::CUstream)
  @cucall( (:cuLaunchGridAsync, :libcuda), CUresult, (CUfunction, Cint, Cint, CUstream), f, grid_width, grid_height, hStream)
end
function cuParamSetTexRef(hfunc::CUfunction, texunit::Cint, hTexRef::CUtexref)
  @cucall( (:cuParamSetTexRef, :libcuda), CUresult, (CUfunction, Cint, CUtexref), hfunc, texunit, hTexRef)
end
function cuTexRefSetArray(hTexRef::CUtexref, hArray::CUarray, Flags::Uint32)
  @cucall( (:cuTexRefSetArray, :libcuda), CUresult, (CUtexref, CUarray, Uint32), hTexRef, hArray, Flags)
end
function cuTexRefSetMipmappedArray(hTexRef::CUtexref, hMipmappedArray::CUmipmappedArray, Flags::Uint32)
  @cucall( (:cuTexRefSetMipmappedArray, :libcuda), CUresult, (CUtexref, CUmipmappedArray, Uint32), hTexRef, hMipmappedArray, Flags)
end
function cuTexRefSetAddress_v2(ByteOffset::Ptr{Cint}, hTexRef::CUtexref, dptr::CUdeviceptr, bytes::Cint)
  @cucall( (:cuTexRefSetAddress_v2, :libcuda), CUresult, (Ptr{Cint}, CUtexref, CUdeviceptr, Cint), ByteOffset, hTexRef, dptr, bytes)
end
function cuTexRefSetAddress2D_v3(hTexRef::CUtexref, desc::Ptr{CUDA_ARRAY_DESCRIPTOR}, dptr::CUdeviceptr, Pitch::Cint)
  @cucall( (:cuTexRefSetAddress2D_v3, :libcuda), CUresult, (CUtexref, Ptr{CUDA_ARRAY_DESCRIPTOR}, CUdeviceptr, Cint), hTexRef, desc, dptr, Pitch)
end
function cuTexRefSetFormat(hTexRef::CUtexref, fmt::CUarray_format, NumPackedComponents::Cint)
  @cucall( (:cuTexRefSetFormat, :libcuda), CUresult, (CUtexref, CUarray_format, Cint), hTexRef, fmt, NumPackedComponents)
end
function cuTexRefSetAddressMode(hTexRef::CUtexref, dim::Cint, am::CUaddress_mode)
  @cucall( (:cuTexRefSetAddressMode, :libcuda), CUresult, (CUtexref, Cint, CUaddress_mode), hTexRef, dim, am)
end
function cuTexRefSetFilterMode(hTexRef::CUtexref, fm::CUfilter_mode)
  @cucall( (:cuTexRefSetFilterMode, :libcuda), CUresult, (CUtexref, CUfilter_mode), hTexRef, fm)
end
function cuTexRefSetMipmapFilterMode(hTexRef::CUtexref, fm::CUfilter_mode)
  @cucall( (:cuTexRefSetMipmapFilterMode, :libcuda), CUresult, (CUtexref, CUfilter_mode), hTexRef, fm)
end
function cuTexRefSetMipmapLevelBias(hTexRef::CUtexref, bias::Cfloat)
  @cucall( (:cuTexRefSetMipmapLevelBias, :libcuda), CUresult, (CUtexref, Cfloat), hTexRef, bias)
end
function cuTexRefSetMipmapLevelClamp(hTexRef::CUtexref, minMipmapLevelClamp::Cfloat, maxMipmapLevelClamp::Cfloat)
  @cucall( (:cuTexRefSetMipmapLevelClamp, :libcuda), CUresult, (CUtexref, Cfloat, Cfloat), hTexRef, minMipmapLevelClamp, maxMipmapLevelClamp)
end
function cuTexRefSetMaxAnisotropy(hTexRef::CUtexref, maxAniso::Uint32)
  @cucall( (:cuTexRefSetMaxAnisotropy, :libcuda), CUresult, (CUtexref, Uint32), hTexRef, maxAniso)
end
function cuTexRefSetFlags(hTexRef::CUtexref, Flags::Uint32)
  @cucall( (:cuTexRefSetFlags, :libcuda), CUresult, (CUtexref, Uint32), hTexRef, Flags)
end
function cuTexRefGetAddress_v2(pdptr::Ptr{CUdeviceptr}, hTexRef::CUtexref)
  @cucall( (:cuTexRefGetAddress_v2, :libcuda), CUresult, (Ptr{CUdeviceptr}, CUtexref), pdptr, hTexRef)
end
function cuTexRefGetArray(phArray::Ptr{CUarray}, hTexRef::CUtexref)
  @cucall( (:cuTexRefGetArray, :libcuda), CUresult, (Ptr{CUarray}, CUtexref), phArray, hTexRef)
end
function cuTexRefGetMipmappedArray(phMipmappedArray::Ptr{CUmipmappedArray}, hTexRef::CUtexref)
  @cucall( (:cuTexRefGetMipmappedArray, :libcuda), CUresult, (Ptr{CUmipmappedArray}, CUtexref), phMipmappedArray, hTexRef)
end
function cuTexRefGetAddressMode(pam::Ptr{CUaddress_mode}, hTexRef::CUtexref, dim::Cint)
  @cucall( (:cuTexRefGetAddressMode, :libcuda), CUresult, (Ptr{CUaddress_mode}, CUtexref, Cint), pam, hTexRef, dim)
end
function cuTexRefGetFilterMode(pfm::Ptr{CUfilter_mode}, hTexRef::CUtexref)
  @cucall( (:cuTexRefGetFilterMode, :libcuda), CUresult, (Ptr{CUfilter_mode}, CUtexref), pfm, hTexRef)
end
function cuTexRefGetFormat(pFormat::Ptr{CUarray_format}, pNumChannels::Ptr{Cint}, hTexRef::CUtexref)
  @cucall( (:cuTexRefGetFormat, :libcuda), CUresult, (Ptr{CUarray_format}, Ptr{Cint}, CUtexref), pFormat, pNumChannels, hTexRef)
end
function cuTexRefGetMipmapFilterMode(pfm::Ptr{CUfilter_mode}, hTexRef::CUtexref)
  @cucall( (:cuTexRefGetMipmapFilterMode, :libcuda), CUresult, (Ptr{CUfilter_mode}, CUtexref), pfm, hTexRef)
end
function cuTexRefGetMipmapLevelBias(pbias::Ptr{Cfloat}, hTexRef::CUtexref)
  @cucall( (:cuTexRefGetMipmapLevelBias, :libcuda), CUresult, (Ptr{Cfloat}, CUtexref), pbias, hTexRef)
end
function cuTexRefGetMipmapLevelClamp(pminMipmapLevelClamp::Ptr{Cfloat}, pmaxMipmapLevelClamp::Ptr{Cfloat}, hTexRef::CUtexref)
  @cucall( (:cuTexRefGetMipmapLevelClamp, :libcuda), CUresult, (Ptr{Cfloat}, Ptr{Cfloat}, CUtexref), pminMipmapLevelClamp, pmaxMipmapLevelClamp, hTexRef)
end
function cuTexRefGetMaxAnisotropy(pmaxAniso::Ptr{Cint}, hTexRef::CUtexref)
  @cucall( (:cuTexRefGetMaxAnisotropy, :libcuda), CUresult, (Ptr{Cint}, CUtexref), pmaxAniso, hTexRef)
end
function cuTexRefGetFlags(pFlags::Ptr{Uint32}, hTexRef::CUtexref)
  @cucall( (:cuTexRefGetFlags, :libcuda), CUresult, (Ptr{Uint32}, CUtexref), pFlags, hTexRef)
end
function cuTexRefCreate(pTexRef::Ptr{CUtexref})
  @cucall( (:cuTexRefCreate, :libcuda), CUresult, (Ptr{CUtexref},), pTexRef)
end
function cuTexRefDestroy(hTexRef::CUtexref)
  @cucall( (:cuTexRefDestroy, :libcuda), CUresult, (CUtexref,), hTexRef)
end
function cuSurfRefSetArray(hSurfRef::CUsurfref, hArray::CUarray, Flags::Uint32)
  @cucall( (:cuSurfRefSetArray, :libcuda), CUresult, (CUsurfref, CUarray, Uint32), hSurfRef, hArray, Flags)
end
function cuSurfRefGetArray(phArray::Ptr{CUarray}, hSurfRef::CUsurfref)
  @cucall( (:cuSurfRefGetArray, :libcuda), CUresult, (Ptr{CUarray}, CUsurfref), phArray, hSurfRef)
end
function cuTexObjectCreate(pTexObject::Ptr{CUtexObject}, pResDesc::Ptr{CUDA_RESOURCE_DESC}, pTexDesc::Ptr{CUDA_TEXTURE_DESC}, pResViewDesc::Ptr{CUDA_RESOURCE_VIEW_DESC})
  @cucall( (:cuTexObjectCreate, :libcuda), CUresult, (Ptr{CUtexObject}, Ptr{CUDA_RESOURCE_DESC}, Ptr{CUDA_TEXTURE_DESC}, Ptr{CUDA_RESOURCE_VIEW_DESC}), pTexObject, pResDesc, pTexDesc, pResViewDesc)
end
function cuTexObjectDestroy(texObject::CUtexObject)
  @cucall( (:cuTexObjectDestroy, :libcuda), CUresult, (CUtexObject,), texObject)
end
function cuTexObjectGetResourceDesc(pResDesc::Ptr{CUDA_RESOURCE_DESC}, texObject::CUtexObject)
  @cucall( (:cuTexObjectGetResourceDesc, :libcuda), CUresult, (Ptr{CUDA_RESOURCE_DESC}, CUtexObject), pResDesc, texObject)
end
function cuTexObjectGetTextureDesc(pTexDesc::Ptr{CUDA_TEXTURE_DESC}, texObject::CUtexObject)
  @cucall( (:cuTexObjectGetTextureDesc, :libcuda), CUresult, (Ptr{CUDA_TEXTURE_DESC}, CUtexObject), pTexDesc, texObject)
end
function cuTexObjectGetResourceViewDesc(pResViewDesc::Ptr{CUDA_RESOURCE_VIEW_DESC}, texObject::CUtexObject)
  @cucall( (:cuTexObjectGetResourceViewDesc, :libcuda), CUresult, (Ptr{CUDA_RESOURCE_VIEW_DESC}, CUtexObject), pResViewDesc, texObject)
end
function cuSurfObjectCreate(pSurfObject::Ptr{CUsurfObject}, pResDesc::Ptr{CUDA_RESOURCE_DESC})
  @cucall( (:cuSurfObjectCreate, :libcuda), CUresult, (Ptr{CUsurfObject}, Ptr{CUDA_RESOURCE_DESC}), pSurfObject, pResDesc)
end
function cuSurfObjectDestroy(surfObject::CUsurfObject)
  @cucall( (:cuSurfObjectDestroy, :libcuda), CUresult, (CUsurfObject,), surfObject)
end
function cuSurfObjectGetResourceDesc(pResDesc::Ptr{CUDA_RESOURCE_DESC}, surfObject::CUsurfObject)
  @cucall( (:cuSurfObjectGetResourceDesc, :libcuda), CUresult, (Ptr{CUDA_RESOURCE_DESC}, CUsurfObject), pResDesc, surfObject)
end
function cuDeviceCanAccessPeer(canAccessPeer::Ptr{Cint}, dev::CUdevice, peerDev::CUdevice)
  @cucall( (:cuDeviceCanAccessPeer, :libcuda), CUresult, (Ptr{Cint}, CUdevice, CUdevice), canAccessPeer, dev, peerDev)
end
function cuCtxEnablePeerAccess(peerContext::CUcontext, Flags::Uint32)
  @cucall( (:cuCtxEnablePeerAccess, :libcuda), CUresult, (CUcontext, Uint32), peerContext, Flags)
end
function cuCtxDisablePeerAccess(peerContext::CUcontext)
  @cucall( (:cuCtxDisablePeerAccess, :libcuda), CUresult, (CUcontext,), peerContext)
end
function cuGraphicsUnregisterResource(resource::CUgraphicsResource)
  @cucall( (:cuGraphicsUnregisterResource, :libcuda), CUresult, (CUgraphicsResource,), resource)
end
function cuGraphicsSubResourceGetMappedArray(pArray::Ptr{CUarray}, resource::CUgraphicsResource, arrayIndex::Uint32, mipLevel::Uint32)
  @cucall( (:cuGraphicsSubResourceGetMappedArray, :libcuda), CUresult, (Ptr{CUarray}, CUgraphicsResource, Uint32, Uint32), pArray, resource, arrayIndex, mipLevel)
end
function cuGraphicsResourceGetMappedMipmappedArray(pMipmappedArray::Ptr{CUmipmappedArray}, resource::CUgraphicsResource)
  @cucall( (:cuGraphicsResourceGetMappedMipmappedArray, :libcuda), CUresult, (Ptr{CUmipmappedArray}, CUgraphicsResource), pMipmappedArray, resource)
end
function cuGraphicsResourceGetMappedPointer_v2(pDevPtr::Ptr{CUdeviceptr}, pSize::Ptr{Cint}, resource::CUgraphicsResource)
  @cucall( (:cuGraphicsResourceGetMappedPointer_v2, :libcuda), CUresult, (Ptr{CUdeviceptr}, Ptr{Cint}, CUgraphicsResource), pDevPtr, pSize, resource)
end
function cuGraphicsResourceSetMapFlags(resource::CUgraphicsResource, flags::Uint32)
  @cucall( (:cuGraphicsResourceSetMapFlags, :libcuda), CUresult, (CUgraphicsResource, Uint32), resource, flags)
end
function cuGraphicsMapResources(count::Uint32, resources::Ptr{CUgraphicsResource}, hStream::CUstream)
  @cucall( (:cuGraphicsMapResources, :libcuda), CUresult, (Uint32, Ptr{CUgraphicsResource}, CUstream), count, resources, hStream)
end
function cuGraphicsUnmapResources(count::Uint32, resources::Ptr{CUgraphicsResource}, hStream::CUstream)
  @cucall( (:cuGraphicsUnmapResources, :libcuda), CUresult, (Uint32, Ptr{CUgraphicsResource}, CUstream), count, resources, hStream)
end
function cuGetExportTable(ppExportTable::Ptr{Ptr{None}}, pExportTableId::Ptr{CUuuid})
  @cucall( (:cuGetExportTable, :libcuda), CUresult, (Ptr{Ptr{None}}, Ptr{CUuuid}), ppExportTable, pExportTableId)
end

