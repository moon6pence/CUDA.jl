# Julia wrapper for header: /usr/local/cuda/include/cuda.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function cuInit(Flags::Uint32)
  ccall( (:cuInit, :libcuda), CUresult, (Uint32,), Flags)
end
function cuDriverGetVersion(driverVersion::Ptr{Cint})
  ccall( (:cuDriverGetVersion, :libcuda), CUresult, (Ptr{Cint},), driverVersion)
end
function cuDeviceGet(device::Ptr{CUdevice}, ordinal::Cint)
  ccall( (:cuDeviceGet, :libcuda), CUresult, (Ptr{CUdevice}, Cint), device, ordinal)
end
function cuDeviceGetCount(count::Ptr{Cint})
  ccall( (:cuDeviceGetCount, :libcuda), CUresult, (Ptr{Cint},), count)
end
function cuDeviceGetName(name::Ptr{Uint8}, len::Cint, dev::CUdevice)
  ccall( (:cuDeviceGetName, :libcuda), CUresult, (Ptr{Uint8}, Cint, CUdevice), name, len, dev)
end
function cuDeviceTotalMem_v2(bytes::Ptr{Cint}, dev::CUdevice)
  ccall( (:cuDeviceTotalMem_v2, :libcuda), CUresult, (Ptr{Cint}, CUdevice), bytes, dev)
end
function cuDeviceGetAttribute(pi::Ptr{Cint}, attrib::CUdevice_attribute, dev::CUdevice)
  ccall( (:cuDeviceGetAttribute, :libcuda), CUresult, (Ptr{Cint}, CUdevice_attribute, CUdevice), pi, attrib, dev)
end
function cuDeviceGetProperties(prop::Ptr{CUdevprop}, dev::CUdevice)
  ccall( (:cuDeviceGetProperties, :libcuda), CUresult, (Ptr{CUdevprop}, CUdevice), prop, dev)
end
function cuDeviceComputeCapability(major::Ptr{Cint}, minor::Ptr{Cint}, dev::CUdevice)
  ccall( (:cuDeviceComputeCapability, :libcuda), CUresult, (Ptr{Cint}, Ptr{Cint}, CUdevice), major, minor, dev)
end
function cuCtxCreate_v2(pctx::Ptr{CUcontext}, flags::Uint32, dev::CUdevice)
  ccall( (:cuCtxCreate_v2, :libcuda), CUresult, (Ptr{CUcontext}, Uint32, CUdevice), pctx, flags, dev)
end
function cuCtxDestroy_v2(ctx::CUcontext)
  ccall( (:cuCtxDestroy_v2, :libcuda), CUresult, (CUcontext,), ctx)
end
function cuCtxPushCurrent_v2(ctx::CUcontext)
  ccall( (:cuCtxPushCurrent_v2, :libcuda), CUresult, (CUcontext,), ctx)
end
function cuCtxPopCurrent_v2(pctx::Ptr{CUcontext})
  ccall( (:cuCtxPopCurrent_v2, :libcuda), CUresult, (Ptr{CUcontext},), pctx)
end
function cuCtxSetCurrent(ctx::CUcontext)
  ccall( (:cuCtxSetCurrent, :libcuda), CUresult, (CUcontext,), ctx)
end
function cuCtxGetCurrent(pctx::Ptr{CUcontext})
  ccall( (:cuCtxGetCurrent, :libcuda), CUresult, (Ptr{CUcontext},), pctx)
end
function cuCtxGetDevice(device::Ptr{CUdevice})
  ccall( (:cuCtxGetDevice, :libcuda), CUresult, (Ptr{CUdevice},), device)
end
function cuCtxSynchronize()
  ccall( (:cuCtxSynchronize, :libcuda), CUresult, (), )
end
function cuCtxSetLimit(limit::CUlimit, value::Cint)
  ccall( (:cuCtxSetLimit, :libcuda), CUresult, (CUlimit, Cint), limit, value)
end
function cuCtxGetLimit(pvalue::Ptr{Cint}, limit::CUlimit)
  ccall( (:cuCtxGetLimit, :libcuda), CUresult, (Ptr{Cint}, CUlimit), pvalue, limit)
end
function cuCtxGetCacheConfig(pconfig::Ptr{CUfunc_cache})
  ccall( (:cuCtxGetCacheConfig, :libcuda), CUresult, (Ptr{CUfunc_cache},), pconfig)
end
function cuCtxSetCacheConfig(config::CUfunc_cache)
  ccall( (:cuCtxSetCacheConfig, :libcuda), CUresult, (CUfunc_cache,), config)
end
function cuCtxGetSharedMemConfig(pConfig::Ptr{CUsharedconfig})
  ccall( (:cuCtxGetSharedMemConfig, :libcuda), CUresult, (Ptr{CUsharedconfig},), pConfig)
end
function cuCtxSetSharedMemConfig(config::CUsharedconfig)
  ccall( (:cuCtxSetSharedMemConfig, :libcuda), CUresult, (CUsharedconfig,), config)
end
function cuCtxGetApiVersion(ctx::CUcontext, version::Ptr{Uint32})
  ccall( (:cuCtxGetApiVersion, :libcuda), CUresult, (CUcontext, Ptr{Uint32}), ctx, version)
end
function cuCtxGetStreamPriorityRange(leastPriority::Ptr{Cint}, greatestPriority::Ptr{Cint})
  ccall( (:cuCtxGetStreamPriorityRange, :libcuda), CUresult, (Ptr{Cint}, Ptr{Cint}), leastPriority, greatestPriority)
end
function cuCtxAttach(pctx::Ptr{CUcontext}, flags::Uint32)
  ccall( (:cuCtxAttach, :libcuda), CUresult, (Ptr{CUcontext}, Uint32), pctx, flags)
end
function cuCtxDetach(ctx::CUcontext)
  ccall( (:cuCtxDetach, :libcuda), CUresult, (CUcontext,), ctx)
end
function cuModuleLoad(_module::Ptr{CUmodule}, fname::Ptr{Uint8})
  ccall( (:cuModuleLoad, :libcuda), CUresult, (Ptr{CUmodule}, Ptr{Uint8}), _module, fname)
end
function cuModuleLoadData(_module::Ptr{CUmodule}, image::Ptr{None})
  ccall( (:cuModuleLoadData, :libcuda), CUresult, (Ptr{CUmodule}, Ptr{None}), _module, image)
end
function cuModuleLoadDataEx(_module::Ptr{CUmodule}, image::Ptr{None}, numOptions::Uint32, options::Ptr{CUjit_option}, optionValues::Ptr{Ptr{None}})
  ccall( (:cuModuleLoadDataEx, :libcuda), CUresult, (Ptr{CUmodule}, Ptr{None}, Uint32, Ptr{CUjit_option}, Ptr{Ptr{None}}), _module, image, numOptions, options, optionValues)
end
function cuModuleLoadFatBinary(_module::Ptr{CUmodule}, fatCubin::Ptr{None})
  ccall( (:cuModuleLoadFatBinary, :libcuda), CUresult, (Ptr{CUmodule}, Ptr{None}), _module, fatCubin)
end
function cuModuleUnload(hmod::CUmodule)
  ccall( (:cuModuleUnload, :libcuda), CUresult, (CUmodule,), hmod)
end
function cuModuleGetFunction(hfunc::Ptr{CUfunction}, hmod::CUmodule, name::Ptr{Uint8})
  ccall( (:cuModuleGetFunction, :libcuda), CUresult, (Ptr{CUfunction}, CUmodule, Ptr{Uint8}), hfunc, hmod, name)
end
function cuModuleGetGlobal_v2(dptr::Ptr{CUdeviceptr}, bytes::Ptr{Cint}, hmod::CUmodule, name::Ptr{Uint8})
  ccall( (:cuModuleGetGlobal_v2, :libcuda), CUresult, (Ptr{CUdeviceptr}, Ptr{Cint}, CUmodule, Ptr{Uint8}), dptr, bytes, hmod, name)
end
function cuModuleGetTexRef(pTexRef::Ptr{CUtexref}, hmod::CUmodule, name::Ptr{Uint8})
  ccall( (:cuModuleGetTexRef, :libcuda), CUresult, (Ptr{CUtexref}, CUmodule, Ptr{Uint8}), pTexRef, hmod, name)
end
function cuModuleGetSurfRef(pSurfRef::Ptr{CUsurfref}, hmod::CUmodule, name::Ptr{Uint8})
  ccall( (:cuModuleGetSurfRef, :libcuda), CUresult, (Ptr{CUsurfref}, CUmodule, Ptr{Uint8}), pSurfRef, hmod, name)
end
function cuLinkCreate(numOptions::Uint32, options::Ptr{CUjit_option}, optionValues::Ptr{Ptr{None}}, stateOut::Ptr{CUlinkState})
  ccall( (:cuLinkCreate, :libcuda), CUresult, (Uint32, Ptr{CUjit_option}, Ptr{Ptr{None}}, Ptr{CUlinkState}), numOptions, options, optionValues, stateOut)
end
function cuLinkAddData(state::CUlinkState, _type::CUjitInputType, data::Ptr{None}, size::Cint, name::Ptr{Uint8}, numOptions::Uint32, options::Ptr{CUjit_option}, optionValues::Ptr{Ptr{None}})
  ccall( (:cuLinkAddData, :libcuda), CUresult, (CUlinkState, CUjitInputType, Ptr{None}, Cint, Ptr{Uint8}, Uint32, Ptr{CUjit_option}, Ptr{Ptr{None}}), state, _type, data, size, name, numOptions, options, optionValues)
end
function cuLinkAddFile(state::CUlinkState, _type::CUjitInputType, path::Ptr{Uint8}, numOptions::Uint32, options::Ptr{CUjit_option}, optionValues::Ptr{Ptr{None}})
  ccall( (:cuLinkAddFile, :libcuda), CUresult, (CUlinkState, CUjitInputType, Ptr{Uint8}, Uint32, Ptr{CUjit_option}, Ptr{Ptr{None}}), state, _type, path, numOptions, options, optionValues)
end
function cuLinkComplete(state::CUlinkState, cubinOut::Ptr{Ptr{None}}, sizeOut::Ptr{Cint})
  ccall( (:cuLinkComplete, :libcuda), CUresult, (CUlinkState, Ptr{Ptr{None}}, Ptr{Cint}), state, cubinOut, sizeOut)
end
function cuLinkDestroy(state::CUlinkState)
  ccall( (:cuLinkDestroy, :libcuda), CUresult, (CUlinkState,), state)
end
function cuMemGetInfo_v2(free::Ptr{Cint}, total::Ptr{Cint})
  ccall( (:cuMemGetInfo_v2, :libcuda), CUresult, (Ptr{Cint}, Ptr{Cint}), free, total)
end
function cuMemAlloc_v2(dptr::Ptr{CUdeviceptr}, bytesize::Cint)
  ccall( (:cuMemAlloc_v2, :libcuda), CUresult, (Ptr{CUdeviceptr}, Cint), dptr, bytesize)
end
function cuMemAllocPitch_v2(dptr::Ptr{CUdeviceptr}, pPitch::Ptr{Cint}, WidthInBytes::Cint, Height::Cint, ElementSizeBytes::Uint32)
  ccall( (:cuMemAllocPitch_v2, :libcuda), CUresult, (Ptr{CUdeviceptr}, Ptr{Cint}, Cint, Cint, Uint32), dptr, pPitch, WidthInBytes, Height, ElementSizeBytes)
end
function cuMemFree_v2(dptr::CUdeviceptr)
  ccall( (:cuMemFree_v2, :libcuda), CUresult, (CUdeviceptr,), dptr)
end
function cuMemGetAddressRange_v2(pbase::Ptr{CUdeviceptr}, psize::Ptr{Cint}, dptr::CUdeviceptr)
  ccall( (:cuMemGetAddressRange_v2, :libcuda), CUresult, (Ptr{CUdeviceptr}, Ptr{Cint}, CUdeviceptr), pbase, psize, dptr)
end
function cuMemAllocHost_v2(pp::Ptr{Ptr{None}}, bytesize::Cint)
  ccall( (:cuMemAllocHost_v2, :libcuda), CUresult, (Ptr{Ptr{None}}, Cint), pp, bytesize)
end
function cuMemFreeHost(p::Ptr{None})
  ccall( (:cuMemFreeHost, :libcuda), CUresult, (Ptr{None},), p)
end
function cuMemHostAlloc(pp::Ptr{Ptr{None}}, bytesize::Cint, Flags::Uint32)
  ccall( (:cuMemHostAlloc, :libcuda), CUresult, (Ptr{Ptr{None}}, Cint, Uint32), pp, bytesize, Flags)
end
function cuMemHostGetDevicePointer_v2(pdptr::Ptr{CUdeviceptr}, p::Ptr{None}, Flags::Uint32)
  ccall( (:cuMemHostGetDevicePointer_v2, :libcuda), CUresult, (Ptr{CUdeviceptr}, Ptr{None}, Uint32), pdptr, p, Flags)
end
function cuMemHostGetFlags(pFlags::Ptr{Uint32}, p::Ptr{None})
  ccall( (:cuMemHostGetFlags, :libcuda), CUresult, (Ptr{Uint32}, Ptr{None}), pFlags, p)
end
function cuDeviceGetByPCIBusId(dev::Ptr{CUdevice}, pciBusId::Ptr{Uint8})
  ccall( (:cuDeviceGetByPCIBusId, :libcuda), CUresult, (Ptr{CUdevice}, Ptr{Uint8}), dev, pciBusId)
end
function cuDeviceGetPCIBusId(pciBusId::Ptr{Uint8}, len::Cint, dev::CUdevice)
  ccall( (:cuDeviceGetPCIBusId, :libcuda), CUresult, (Ptr{Uint8}, Cint, CUdevice), pciBusId, len, dev)
end
function cuIpcGetEventHandle(pHandle::Ptr{CUipcEventHandle}, event::CUevent)
  ccall( (:cuIpcGetEventHandle, :libcuda), CUresult, (Ptr{CUipcEventHandle}, CUevent), pHandle, event)
end
function cuIpcOpenEventHandle(phEvent::Ptr{CUevent}, handle::CUipcEventHandle)
  ccall( (:cuIpcOpenEventHandle, :libcuda), CUresult, (Ptr{CUevent}, CUipcEventHandle), phEvent, handle)
end
function cuIpcGetMemHandle(pHandle::Ptr{CUipcMemHandle}, dptr::CUdeviceptr)
  ccall( (:cuIpcGetMemHandle, :libcuda), CUresult, (Ptr{CUipcMemHandle}, CUdeviceptr), pHandle, dptr)
end
function cuIpcOpenMemHandle(pdptr::Ptr{CUdeviceptr}, handle::CUipcMemHandle, Flags::Uint32)
  ccall( (:cuIpcOpenMemHandle, :libcuda), CUresult, (Ptr{CUdeviceptr}, CUipcMemHandle, Uint32), pdptr, handle, Flags)
end
function cuIpcCloseMemHandle(dptr::CUdeviceptr)
  ccall( (:cuIpcCloseMemHandle, :libcuda), CUresult, (CUdeviceptr,), dptr)
end
function cuMemHostRegister(p::Ptr{None}, bytesize::Cint, Flags::Uint32)
  ccall( (:cuMemHostRegister, :libcuda), CUresult, (Ptr{None}, Cint, Uint32), p, bytesize, Flags)
end
function cuMemHostUnregister(p::Ptr{None})
  ccall( (:cuMemHostUnregister, :libcuda), CUresult, (Ptr{None},), p)
end
function cuMemcpy(dst::CUdeviceptr, src::CUdeviceptr, ByteCount::Cint)
  ccall( (:cuMemcpy, :libcuda), CUresult, (CUdeviceptr, CUdeviceptr, Cint), dst, src, ByteCount)
end
function cuMemcpyPeer(dstDevice::CUdeviceptr, dstContext::CUcontext, srcDevice::CUdeviceptr, srcContext::CUcontext, ByteCount::Cint)
  ccall( (:cuMemcpyPeer, :libcuda), CUresult, (CUdeviceptr, CUcontext, CUdeviceptr, CUcontext, Cint), dstDevice, dstContext, srcDevice, srcContext, ByteCount)
end
function cuMemcpyHtoD_v2(dstDevice::CUdeviceptr, srcHost::Ptr{None}, ByteCount::Cint)
  ccall( (:cuMemcpyHtoD_v2, :libcuda), CUresult, (CUdeviceptr, Ptr{None}, Cint), dstDevice, srcHost, ByteCount)
end
function cuMemcpyDtoH_v2(dstHost::Ptr{None}, srcDevice::CUdeviceptr, ByteCount::Cint)
  ccall( (:cuMemcpyDtoH_v2, :libcuda), CUresult, (Ptr{None}, CUdeviceptr, Cint), dstHost, srcDevice, ByteCount)
end
function cuMemcpyDtoD_v2(dstDevice::CUdeviceptr, srcDevice::CUdeviceptr, ByteCount::Cint)
  ccall( (:cuMemcpyDtoD_v2, :libcuda), CUresult, (CUdeviceptr, CUdeviceptr, Cint), dstDevice, srcDevice, ByteCount)
end
function cuMemcpyDtoA_v2(dstArray::CUarray, dstOffset::Cint, srcDevice::CUdeviceptr, ByteCount::Cint)
  ccall( (:cuMemcpyDtoA_v2, :libcuda), CUresult, (CUarray, Cint, CUdeviceptr, Cint), dstArray, dstOffset, srcDevice, ByteCount)
end
function cuMemcpyAtoD_v2(dstDevice::CUdeviceptr, srcArray::CUarray, srcOffset::Cint, ByteCount::Cint)
  ccall( (:cuMemcpyAtoD_v2, :libcuda), CUresult, (CUdeviceptr, CUarray, Cint, Cint), dstDevice, srcArray, srcOffset, ByteCount)
end
function cuMemcpyHtoA_v2(dstArray::CUarray, dstOffset::Cint, srcHost::Ptr{None}, ByteCount::Cint)
  ccall( (:cuMemcpyHtoA_v2, :libcuda), CUresult, (CUarray, Cint, Ptr{None}, Cint), dstArray, dstOffset, srcHost, ByteCount)
end
function cuMemcpyAtoH_v2(dstHost::Ptr{None}, srcArray::CUarray, srcOffset::Cint, ByteCount::Cint)
  ccall( (:cuMemcpyAtoH_v2, :libcuda), CUresult, (Ptr{None}, CUarray, Cint, Cint), dstHost, srcArray, srcOffset, ByteCount)
end
function cuMemcpyAtoA_v2(dstArray::CUarray, dstOffset::Cint, srcArray::CUarray, srcOffset::Cint, ByteCount::Cint)
  ccall( (:cuMemcpyAtoA_v2, :libcuda), CUresult, (CUarray, Cint, CUarray, Cint, Cint), dstArray, dstOffset, srcArray, srcOffset, ByteCount)
end
function cuMemcpy2D_v2(pCopy::Ptr{CUDA_MEMCPY2D})
  ccall( (:cuMemcpy2D_v2, :libcuda), CUresult, (Ptr{CUDA_MEMCPY2D},), pCopy)
end
function cuMemcpy2DUnaligned_v2(pCopy::Ptr{CUDA_MEMCPY2D})
  ccall( (:cuMemcpy2DUnaligned_v2, :libcuda), CUresult, (Ptr{CUDA_MEMCPY2D},), pCopy)
end
function cuMemcpy3D_v2(pCopy::Ptr{CUDA_MEMCPY3D})
  ccall( (:cuMemcpy3D_v2, :libcuda), CUresult, (Ptr{CUDA_MEMCPY3D},), pCopy)
end
function cuMemcpy3DPeer(pCopy::Ptr{CUDA_MEMCPY3D_PEER})
  ccall( (:cuMemcpy3DPeer, :libcuda), CUresult, (Ptr{CUDA_MEMCPY3D_PEER},), pCopy)
end
function cuMemcpyAsync(dst::CUdeviceptr, src::CUdeviceptr, ByteCount::Cint, hStream::CUstream)
  ccall( (:cuMemcpyAsync, :libcuda), CUresult, (CUdeviceptr, CUdeviceptr, Cint, CUstream), dst, src, ByteCount, hStream)
end
function cuMemcpyPeerAsync(dstDevice::CUdeviceptr, dstContext::CUcontext, srcDevice::CUdeviceptr, srcContext::CUcontext, ByteCount::Cint, hStream::CUstream)
  ccall( (:cuMemcpyPeerAsync, :libcuda), CUresult, (CUdeviceptr, CUcontext, CUdeviceptr, CUcontext, Cint, CUstream), dstDevice, dstContext, srcDevice, srcContext, ByteCount, hStream)
end
function cuMemcpyHtoDAsync_v2(dstDevice::CUdeviceptr, srcHost::Ptr{None}, ByteCount::Cint, hStream::CUstream)
  ccall( (:cuMemcpyHtoDAsync_v2, :libcuda), CUresult, (CUdeviceptr, Ptr{None}, Cint, CUstream), dstDevice, srcHost, ByteCount, hStream)
end
function cuMemcpyDtoHAsync_v2(dstHost::Ptr{None}, srcDevice::CUdeviceptr, ByteCount::Cint, hStream::CUstream)
  ccall( (:cuMemcpyDtoHAsync_v2, :libcuda), CUresult, (Ptr{None}, CUdeviceptr, Cint, CUstream), dstHost, srcDevice, ByteCount, hStream)
end
function cuMemcpyDtoDAsync_v2(dstDevice::CUdeviceptr, srcDevice::CUdeviceptr, ByteCount::Cint, hStream::CUstream)
  ccall( (:cuMemcpyDtoDAsync_v2, :libcuda), CUresult, (CUdeviceptr, CUdeviceptr, Cint, CUstream), dstDevice, srcDevice, ByteCount, hStream)
end
function cuMemcpyHtoAAsync_v2(dstArray::CUarray, dstOffset::Cint, srcHost::Ptr{None}, ByteCount::Cint, hStream::CUstream)
  ccall( (:cuMemcpyHtoAAsync_v2, :libcuda), CUresult, (CUarray, Cint, Ptr{None}, Cint, CUstream), dstArray, dstOffset, srcHost, ByteCount, hStream)
end
function cuMemcpyAtoHAsync_v2(dstHost::Ptr{None}, srcArray::CUarray, srcOffset::Cint, ByteCount::Cint, hStream::CUstream)
  ccall( (:cuMemcpyAtoHAsync_v2, :libcuda), CUresult, (Ptr{None}, CUarray, Cint, Cint, CUstream), dstHost, srcArray, srcOffset, ByteCount, hStream)
end
function cuMemcpy2DAsync_v2(pCopy::Ptr{CUDA_MEMCPY2D}, hStream::CUstream)
  ccall( (:cuMemcpy2DAsync_v2, :libcuda), CUresult, (Ptr{CUDA_MEMCPY2D}, CUstream), pCopy, hStream)
end
function cuMemcpy3DAsync_v2(pCopy::Ptr{CUDA_MEMCPY3D}, hStream::CUstream)
  ccall( (:cuMemcpy3DAsync_v2, :libcuda), CUresult, (Ptr{CUDA_MEMCPY3D}, CUstream), pCopy, hStream)
end
function cuMemcpy3DPeerAsync(pCopy::Ptr{CUDA_MEMCPY3D_PEER}, hStream::CUstream)
  ccall( (:cuMemcpy3DPeerAsync, :libcuda), CUresult, (Ptr{CUDA_MEMCPY3D_PEER}, CUstream), pCopy, hStream)
end
function cuMemsetD8_v2(dstDevice::CUdeviceptr, uc::Cuchar, N::Cint)
  ccall( (:cuMemsetD8_v2, :libcuda), CUresult, (CUdeviceptr, Cuchar, Cint), dstDevice, uc, N)
end
function cuMemsetD16_v2(dstDevice::CUdeviceptr, us::Uint16, N::Cint)
  ccall( (:cuMemsetD16_v2, :libcuda), CUresult, (CUdeviceptr, Uint16, Cint), dstDevice, us, N)
end
function cuMemsetD32_v2(dstDevice::CUdeviceptr, ui::Uint32, N::Cint)
  ccall( (:cuMemsetD32_v2, :libcuda), CUresult, (CUdeviceptr, Uint32, Cint), dstDevice, ui, N)
end
function cuMemsetD2D8_v2(dstDevice::CUdeviceptr, dstPitch::Cint, uc::Cuchar, Width::Cint, Height::Cint)
  ccall( (:cuMemsetD2D8_v2, :libcuda), CUresult, (CUdeviceptr, Cint, Cuchar, Cint, Cint), dstDevice, dstPitch, uc, Width, Height)
end
function cuMemsetD2D16_v2(dstDevice::CUdeviceptr, dstPitch::Cint, us::Uint16, Width::Cint, Height::Cint)
  ccall( (:cuMemsetD2D16_v2, :libcuda), CUresult, (CUdeviceptr, Cint, Uint16, Cint, Cint), dstDevice, dstPitch, us, Width, Height)
end
function cuMemsetD2D32_v2(dstDevice::CUdeviceptr, dstPitch::Cint, ui::Uint32, Width::Cint, Height::Cint)
  ccall( (:cuMemsetD2D32_v2, :libcuda), CUresult, (CUdeviceptr, Cint, Uint32, Cint, Cint), dstDevice, dstPitch, ui, Width, Height)
end
function cuMemsetD8Async(dstDevice::CUdeviceptr, uc::Cuchar, N::Cint, hStream::CUstream)
  ccall( (:cuMemsetD8Async, :libcuda), CUresult, (CUdeviceptr, Cuchar, Cint, CUstream), dstDevice, uc, N, hStream)
end
function cuMemsetD16Async(dstDevice::CUdeviceptr, us::Uint16, N::Cint, hStream::CUstream)
  ccall( (:cuMemsetD16Async, :libcuda), CUresult, (CUdeviceptr, Uint16, Cint, CUstream), dstDevice, us, N, hStream)
end
function cuMemsetD32Async(dstDevice::CUdeviceptr, ui::Uint32, N::Cint, hStream::CUstream)
  ccall( (:cuMemsetD32Async, :libcuda), CUresult, (CUdeviceptr, Uint32, Cint, CUstream), dstDevice, ui, N, hStream)
end
function cuMemsetD2D8Async(dstDevice::CUdeviceptr, dstPitch::Cint, uc::Cuchar, Width::Cint, Height::Cint, hStream::CUstream)
  ccall( (:cuMemsetD2D8Async, :libcuda), CUresult, (CUdeviceptr, Cint, Cuchar, Cint, Cint, CUstream), dstDevice, dstPitch, uc, Width, Height, hStream)
end
function cuMemsetD2D16Async(dstDevice::CUdeviceptr, dstPitch::Cint, us::Uint16, Width::Cint, Height::Cint, hStream::CUstream)
  ccall( (:cuMemsetD2D16Async, :libcuda), CUresult, (CUdeviceptr, Cint, Uint16, Cint, Cint, CUstream), dstDevice, dstPitch, us, Width, Height, hStream)
end
function cuMemsetD2D32Async(dstDevice::CUdeviceptr, dstPitch::Cint, ui::Uint32, Width::Cint, Height::Cint, hStream::CUstream)
  ccall( (:cuMemsetD2D32Async, :libcuda), CUresult, (CUdeviceptr, Cint, Uint32, Cint, Cint, CUstream), dstDevice, dstPitch, ui, Width, Height, hStream)
end
function cuArrayCreate_v2(pHandle::Ptr{CUarray}, pAllocateArray::Ptr{CUDA_ARRAY_DESCRIPTOR})
  ccall( (:cuArrayCreate_v2, :libcuda), CUresult, (Ptr{CUarray}, Ptr{CUDA_ARRAY_DESCRIPTOR}), pHandle, pAllocateArray)
end
function cuArrayGetDescriptor_v2(pArrayDescriptor::Ptr{CUDA_ARRAY_DESCRIPTOR}, hArray::CUarray)
  ccall( (:cuArrayGetDescriptor_v2, :libcuda), CUresult, (Ptr{CUDA_ARRAY_DESCRIPTOR}, CUarray), pArrayDescriptor, hArray)
end
function cuArrayDestroy(hArray::CUarray)
  ccall( (:cuArrayDestroy, :libcuda), CUresult, (CUarray,), hArray)
end
function cuArray3DCreate_v2(pHandle::Ptr{CUarray}, pAllocateArray::Ptr{CUDA_ARRAY3D_DESCRIPTOR})
  ccall( (:cuArray3DCreate_v2, :libcuda), CUresult, (Ptr{CUarray}, Ptr{CUDA_ARRAY3D_DESCRIPTOR}), pHandle, pAllocateArray)
end
function cuArray3DGetDescriptor_v2(pArrayDescriptor::Ptr{CUDA_ARRAY3D_DESCRIPTOR}, hArray::CUarray)
  ccall( (:cuArray3DGetDescriptor_v2, :libcuda), CUresult, (Ptr{CUDA_ARRAY3D_DESCRIPTOR}, CUarray), pArrayDescriptor, hArray)
end
function cuMipmappedArrayCreate(pHandle::Ptr{CUmipmappedArray}, pMipmappedArrayDesc::Ptr{CUDA_ARRAY3D_DESCRIPTOR}, numMipmapLevels::Uint32)
  ccall( (:cuMipmappedArrayCreate, :libcuda), CUresult, (Ptr{CUmipmappedArray}, Ptr{CUDA_ARRAY3D_DESCRIPTOR}, Uint32), pHandle, pMipmappedArrayDesc, numMipmapLevels)
end
function cuMipmappedArrayGetLevel(pLevelArray::Ptr{CUarray}, hMipmappedArray::CUmipmappedArray, level::Uint32)
  ccall( (:cuMipmappedArrayGetLevel, :libcuda), CUresult, (Ptr{CUarray}, CUmipmappedArray, Uint32), pLevelArray, hMipmappedArray, level)
end
function cuMipmappedArrayDestroy(hMipmappedArray::CUmipmappedArray)
  ccall( (:cuMipmappedArrayDestroy, :libcuda), CUresult, (CUmipmappedArray,), hMipmappedArray)
end
function cuPointerGetAttribute(data::Ptr{None}, attribute::CUpointer_attribute, ptr::CUdeviceptr)
  ccall( (:cuPointerGetAttribute, :libcuda), CUresult, (Ptr{None}, CUpointer_attribute, CUdeviceptr), data, attribute, ptr)
end
function cuStreamCreate(phStream::Ptr{CUstream}, Flags::Uint32)
  ccall( (:cuStreamCreate, :libcuda), CUresult, (Ptr{CUstream}, Uint32), phStream, Flags)
end
function cuStreamCreateWithPriority(phStream::Ptr{CUstream}, flags::Uint32, priority::Cint)
  ccall( (:cuStreamCreateWithPriority, :libcuda), CUresult, (Ptr{CUstream}, Uint32, Cint), phStream, flags, priority)
end
function cuStreamGetPriority(hStream::CUstream, priority::Ptr{Cint})
  ccall( (:cuStreamGetPriority, :libcuda), CUresult, (CUstream, Ptr{Cint}), hStream, priority)
end
function cuStreamGetFlags(hStream::CUstream, flags::Ptr{Uint32})
  ccall( (:cuStreamGetFlags, :libcuda), CUresult, (CUstream, Ptr{Uint32}), hStream, flags)
end
function cuStreamWaitEvent(hStream::CUstream, hEvent::CUevent, Flags::Uint32)
  ccall( (:cuStreamWaitEvent, :libcuda), CUresult, (CUstream, CUevent, Uint32), hStream, hEvent, Flags)
end
function cuStreamAddCallback(hStream::CUstream, callback::CUstreamCallback, userData::Ptr{None}, flags::Uint32)
  ccall( (:cuStreamAddCallback, :libcuda), CUresult, (CUstream, CUstreamCallback, Ptr{None}, Uint32), hStream, callback, userData, flags)
end
function cuStreamQuery(hStream::CUstream)
  ccall( (:cuStreamQuery, :libcuda), CUresult, (CUstream,), hStream)
end
function cuStreamSynchronize(hStream::CUstream)
  ccall( (:cuStreamSynchronize, :libcuda), CUresult, (CUstream,), hStream)
end
function cuStreamDestroy_v2(hStream::CUstream)
  ccall( (:cuStreamDestroy_v2, :libcuda), CUresult, (CUstream,), hStream)
end
function cuEventCreate(phEvent::Ptr{CUevent}, Flags::Uint32)
  ccall( (:cuEventCreate, :libcuda), CUresult, (Ptr{CUevent}, Uint32), phEvent, Flags)
end
function cuEventRecord(hEvent::CUevent, hStream::CUstream)
  ccall( (:cuEventRecord, :libcuda), CUresult, (CUevent, CUstream), hEvent, hStream)
end
function cuEventQuery(hEvent::CUevent)
  ccall( (:cuEventQuery, :libcuda), CUresult, (CUevent,), hEvent)
end
function cuEventSynchronize(hEvent::CUevent)
  ccall( (:cuEventSynchronize, :libcuda), CUresult, (CUevent,), hEvent)
end
function cuEventDestroy_v2(hEvent::CUevent)
  ccall( (:cuEventDestroy_v2, :libcuda), CUresult, (CUevent,), hEvent)
end
function cuEventElapsedTime(pMilliseconds::Ptr{Cfloat}, hStart::CUevent, hEnd::CUevent)
  ccall( (:cuEventElapsedTime, :libcuda), CUresult, (Ptr{Cfloat}, CUevent, CUevent), pMilliseconds, hStart, hEnd)
end
function cuFuncGetAttribute(pi::Ptr{Cint}, attrib::CUfunction_attribute, hfunc::CUfunction)
  ccall( (:cuFuncGetAttribute, :libcuda), CUresult, (Ptr{Cint}, CUfunction_attribute, CUfunction), pi, attrib, hfunc)
end
function cuFuncSetCacheConfig(hfunc::CUfunction, config::CUfunc_cache)
  ccall( (:cuFuncSetCacheConfig, :libcuda), CUresult, (CUfunction, CUfunc_cache), hfunc, config)
end
function cuFuncSetSharedMemConfig(hfunc::CUfunction, config::CUsharedconfig)
  ccall( (:cuFuncSetSharedMemConfig, :libcuda), CUresult, (CUfunction, CUsharedconfig), hfunc, config)
end
function cuLaunchKernel(f::CUfunction, gridDimX::Uint32, gridDimY::Uint32, gridDimZ::Uint32, blockDimX::Uint32, blockDimY::Uint32, blockDimZ::Uint32, sharedMemBytes::Uint32, hStream::CUstream, kernelParams::Ptr{Ptr{None}}, extra::Ptr{Ptr{None}})
  ccall( (:cuLaunchKernel, :libcuda), CUresult, (CUfunction, Uint32, Uint32, Uint32, Uint32, Uint32, Uint32, Uint32, CUstream, Ptr{Ptr{None}}, Ptr{Ptr{None}}), f, gridDimX, gridDimY, gridDimZ, blockDimX, blockDimY, blockDimZ, sharedMemBytes, hStream, kernelParams, extra)
end
function cuFuncSetBlockShape(hfunc::CUfunction, x::Cint, y::Cint, z::Cint)
  ccall( (:cuFuncSetBlockShape, :libcuda), CUresult, (CUfunction, Cint, Cint, Cint), hfunc, x, y, z)
end
function cuFuncSetSharedSize(hfunc::CUfunction, bytes::Uint32)
  ccall( (:cuFuncSetSharedSize, :libcuda), CUresult, (CUfunction, Uint32), hfunc, bytes)
end
function cuParamSetSize(hfunc::CUfunction, numbytes::Uint32)
  ccall( (:cuParamSetSize, :libcuda), CUresult, (CUfunction, Uint32), hfunc, numbytes)
end
function cuParamSeti(hfunc::CUfunction, offset::Cint, value::Uint32)
  ccall( (:cuParamSeti, :libcuda), CUresult, (CUfunction, Cint, Uint32), hfunc, offset, value)
end
function cuParamSetf(hfunc::CUfunction, offset::Cint, value::Cfloat)
  ccall( (:cuParamSetf, :libcuda), CUresult, (CUfunction, Cint, Cfloat), hfunc, offset, value)
end
function cuParamSetv(hfunc::CUfunction, offset::Cint, ptr::Ptr{None}, numbytes::Uint32)
  ccall( (:cuParamSetv, :libcuda), CUresult, (CUfunction, Cint, Ptr{None}, Uint32), hfunc, offset, ptr, numbytes)
end
function cuLaunch(f::CUfunction)
  ccall( (:cuLaunch, :libcuda), CUresult, (CUfunction,), f)
end
function cuLaunchGrid(f::CUfunction, grid_width::Cint, grid_height::Cint)
  ccall( (:cuLaunchGrid, :libcuda), CUresult, (CUfunction, Cint, Cint), f, grid_width, grid_height)
end
function cuLaunchGridAsync(f::CUfunction, grid_width::Cint, grid_height::Cint, hStream::CUstream)
  ccall( (:cuLaunchGridAsync, :libcuda), CUresult, (CUfunction, Cint, Cint, CUstream), f, grid_width, grid_height, hStream)
end
function cuParamSetTexRef(hfunc::CUfunction, texunit::Cint, hTexRef::CUtexref)
  ccall( (:cuParamSetTexRef, :libcuda), CUresult, (CUfunction, Cint, CUtexref), hfunc, texunit, hTexRef)
end
function cuTexRefSetArray(hTexRef::CUtexref, hArray::CUarray, Flags::Uint32)
  ccall( (:cuTexRefSetArray, :libcuda), CUresult, (CUtexref, CUarray, Uint32), hTexRef, hArray, Flags)
end
function cuTexRefSetMipmappedArray(hTexRef::CUtexref, hMipmappedArray::CUmipmappedArray, Flags::Uint32)
  ccall( (:cuTexRefSetMipmappedArray, :libcuda), CUresult, (CUtexref, CUmipmappedArray, Uint32), hTexRef, hMipmappedArray, Flags)
end
function cuTexRefSetAddress_v2(ByteOffset::Ptr{Cint}, hTexRef::CUtexref, dptr::CUdeviceptr, bytes::Cint)
  ccall( (:cuTexRefSetAddress_v2, :libcuda), CUresult, (Ptr{Cint}, CUtexref, CUdeviceptr, Cint), ByteOffset, hTexRef, dptr, bytes)
end
function cuTexRefSetAddress2D_v3(hTexRef::CUtexref, desc::Ptr{CUDA_ARRAY_DESCRIPTOR}, dptr::CUdeviceptr, Pitch::Cint)
  ccall( (:cuTexRefSetAddress2D_v3, :libcuda), CUresult, (CUtexref, Ptr{CUDA_ARRAY_DESCRIPTOR}, CUdeviceptr, Cint), hTexRef, desc, dptr, Pitch)
end
function cuTexRefSetFormat(hTexRef::CUtexref, fmt::CUarray_format, NumPackedComponents::Cint)
  ccall( (:cuTexRefSetFormat, :libcuda), CUresult, (CUtexref, CUarray_format, Cint), hTexRef, fmt, NumPackedComponents)
end
function cuTexRefSetAddressMode(hTexRef::CUtexref, dim::Cint, am::CUaddress_mode)
  ccall( (:cuTexRefSetAddressMode, :libcuda), CUresult, (CUtexref, Cint, CUaddress_mode), hTexRef, dim, am)
end
function cuTexRefSetFilterMode(hTexRef::CUtexref, fm::CUfilter_mode)
  ccall( (:cuTexRefSetFilterMode, :libcuda), CUresult, (CUtexref, CUfilter_mode), hTexRef, fm)
end
function cuTexRefSetMipmapFilterMode(hTexRef::CUtexref, fm::CUfilter_mode)
  ccall( (:cuTexRefSetMipmapFilterMode, :libcuda), CUresult, (CUtexref, CUfilter_mode), hTexRef, fm)
end
function cuTexRefSetMipmapLevelBias(hTexRef::CUtexref, bias::Cfloat)
  ccall( (:cuTexRefSetMipmapLevelBias, :libcuda), CUresult, (CUtexref, Cfloat), hTexRef, bias)
end
function cuTexRefSetMipmapLevelClamp(hTexRef::CUtexref, minMipmapLevelClamp::Cfloat, maxMipmapLevelClamp::Cfloat)
  ccall( (:cuTexRefSetMipmapLevelClamp, :libcuda), CUresult, (CUtexref, Cfloat, Cfloat), hTexRef, minMipmapLevelClamp, maxMipmapLevelClamp)
end
function cuTexRefSetMaxAnisotropy(hTexRef::CUtexref, maxAniso::Uint32)
  ccall( (:cuTexRefSetMaxAnisotropy, :libcuda), CUresult, (CUtexref, Uint32), hTexRef, maxAniso)
end
function cuTexRefSetFlags(hTexRef::CUtexref, Flags::Uint32)
  ccall( (:cuTexRefSetFlags, :libcuda), CUresult, (CUtexref, Uint32), hTexRef, Flags)
end
function cuTexRefGetAddress_v2(pdptr::Ptr{CUdeviceptr}, hTexRef::CUtexref)
  ccall( (:cuTexRefGetAddress_v2, :libcuda), CUresult, (Ptr{CUdeviceptr}, CUtexref), pdptr, hTexRef)
end
function cuTexRefGetArray(phArray::Ptr{CUarray}, hTexRef::CUtexref)
  ccall( (:cuTexRefGetArray, :libcuda), CUresult, (Ptr{CUarray}, CUtexref), phArray, hTexRef)
end
function cuTexRefGetMipmappedArray(phMipmappedArray::Ptr{CUmipmappedArray}, hTexRef::CUtexref)
  ccall( (:cuTexRefGetMipmappedArray, :libcuda), CUresult, (Ptr{CUmipmappedArray}, CUtexref), phMipmappedArray, hTexRef)
end
function cuTexRefGetAddressMode(pam::Ptr{CUaddress_mode}, hTexRef::CUtexref, dim::Cint)
  ccall( (:cuTexRefGetAddressMode, :libcuda), CUresult, (Ptr{CUaddress_mode}, CUtexref, Cint), pam, hTexRef, dim)
end
function cuTexRefGetFilterMode(pfm::Ptr{CUfilter_mode}, hTexRef::CUtexref)
  ccall( (:cuTexRefGetFilterMode, :libcuda), CUresult, (Ptr{CUfilter_mode}, CUtexref), pfm, hTexRef)
end
function cuTexRefGetFormat(pFormat::Ptr{CUarray_format}, pNumChannels::Ptr{Cint}, hTexRef::CUtexref)
  ccall( (:cuTexRefGetFormat, :libcuda), CUresult, (Ptr{CUarray_format}, Ptr{Cint}, CUtexref), pFormat, pNumChannels, hTexRef)
end
function cuTexRefGetMipmapFilterMode(pfm::Ptr{CUfilter_mode}, hTexRef::CUtexref)
  ccall( (:cuTexRefGetMipmapFilterMode, :libcuda), CUresult, (Ptr{CUfilter_mode}, CUtexref), pfm, hTexRef)
end
function cuTexRefGetMipmapLevelBias(pbias::Ptr{Cfloat}, hTexRef::CUtexref)
  ccall( (:cuTexRefGetMipmapLevelBias, :libcuda), CUresult, (Ptr{Cfloat}, CUtexref), pbias, hTexRef)
end
function cuTexRefGetMipmapLevelClamp(pminMipmapLevelClamp::Ptr{Cfloat}, pmaxMipmapLevelClamp::Ptr{Cfloat}, hTexRef::CUtexref)
  ccall( (:cuTexRefGetMipmapLevelClamp, :libcuda), CUresult, (Ptr{Cfloat}, Ptr{Cfloat}, CUtexref), pminMipmapLevelClamp, pmaxMipmapLevelClamp, hTexRef)
end
function cuTexRefGetMaxAnisotropy(pmaxAniso::Ptr{Cint}, hTexRef::CUtexref)
  ccall( (:cuTexRefGetMaxAnisotropy, :libcuda), CUresult, (Ptr{Cint}, CUtexref), pmaxAniso, hTexRef)
end
function cuTexRefGetFlags(pFlags::Ptr{Uint32}, hTexRef::CUtexref)
  ccall( (:cuTexRefGetFlags, :libcuda), CUresult, (Ptr{Uint32}, CUtexref), pFlags, hTexRef)
end
function cuTexRefCreate(pTexRef::Ptr{CUtexref})
  ccall( (:cuTexRefCreate, :libcuda), CUresult, (Ptr{CUtexref},), pTexRef)
end
function cuTexRefDestroy(hTexRef::CUtexref)
  ccall( (:cuTexRefDestroy, :libcuda), CUresult, (CUtexref,), hTexRef)
end
function cuSurfRefSetArray(hSurfRef::CUsurfref, hArray::CUarray, Flags::Uint32)
  ccall( (:cuSurfRefSetArray, :libcuda), CUresult, (CUsurfref, CUarray, Uint32), hSurfRef, hArray, Flags)
end
function cuSurfRefGetArray(phArray::Ptr{CUarray}, hSurfRef::CUsurfref)
  ccall( (:cuSurfRefGetArray, :libcuda), CUresult, (Ptr{CUarray}, CUsurfref), phArray, hSurfRef)
end
function cuTexObjectCreate(pTexObject::Ptr{CUtexObject}, pResDesc::Ptr{CUDA_RESOURCE_DESC}, pTexDesc::Ptr{CUDA_TEXTURE_DESC}, pResViewDesc::Ptr{CUDA_RESOURCE_VIEW_DESC})
  ccall( (:cuTexObjectCreate, :libcuda), CUresult, (Ptr{CUtexObject}, Ptr{CUDA_RESOURCE_DESC}, Ptr{CUDA_TEXTURE_DESC}, Ptr{CUDA_RESOURCE_VIEW_DESC}), pTexObject, pResDesc, pTexDesc, pResViewDesc)
end
function cuTexObjectDestroy(texObject::CUtexObject)
  ccall( (:cuTexObjectDestroy, :libcuda), CUresult, (CUtexObject,), texObject)
end
function cuTexObjectGetResourceDesc(pResDesc::Ptr{CUDA_RESOURCE_DESC}, texObject::CUtexObject)
  ccall( (:cuTexObjectGetResourceDesc, :libcuda), CUresult, (Ptr{CUDA_RESOURCE_DESC}, CUtexObject), pResDesc, texObject)
end
function cuTexObjectGetTextureDesc(pTexDesc::Ptr{CUDA_TEXTURE_DESC}, texObject::CUtexObject)
  ccall( (:cuTexObjectGetTextureDesc, :libcuda), CUresult, (Ptr{CUDA_TEXTURE_DESC}, CUtexObject), pTexDesc, texObject)
end
function cuTexObjectGetResourceViewDesc(pResViewDesc::Ptr{CUDA_RESOURCE_VIEW_DESC}, texObject::CUtexObject)
  ccall( (:cuTexObjectGetResourceViewDesc, :libcuda), CUresult, (Ptr{CUDA_RESOURCE_VIEW_DESC}, CUtexObject), pResViewDesc, texObject)
end
function cuSurfObjectCreate(pSurfObject::Ptr{CUsurfObject}, pResDesc::Ptr{CUDA_RESOURCE_DESC})
  ccall( (:cuSurfObjectCreate, :libcuda), CUresult, (Ptr{CUsurfObject}, Ptr{CUDA_RESOURCE_DESC}), pSurfObject, pResDesc)
end
function cuSurfObjectDestroy(surfObject::CUsurfObject)
  ccall( (:cuSurfObjectDestroy, :libcuda), CUresult, (CUsurfObject,), surfObject)
end
function cuSurfObjectGetResourceDesc(pResDesc::Ptr{CUDA_RESOURCE_DESC}, surfObject::CUsurfObject)
  ccall( (:cuSurfObjectGetResourceDesc, :libcuda), CUresult, (Ptr{CUDA_RESOURCE_DESC}, CUsurfObject), pResDesc, surfObject)
end
function cuDeviceCanAccessPeer(canAccessPeer::Ptr{Cint}, dev::CUdevice, peerDev::CUdevice)
  ccall( (:cuDeviceCanAccessPeer, :libcuda), CUresult, (Ptr{Cint}, CUdevice, CUdevice), canAccessPeer, dev, peerDev)
end
function cuCtxEnablePeerAccess(peerContext::CUcontext, Flags::Uint32)
  ccall( (:cuCtxEnablePeerAccess, :libcuda), CUresult, (CUcontext, Uint32), peerContext, Flags)
end
function cuCtxDisablePeerAccess(peerContext::CUcontext)
  ccall( (:cuCtxDisablePeerAccess, :libcuda), CUresult, (CUcontext,), peerContext)
end
function cuGraphicsUnregisterResource(resource::CUgraphicsResource)
  ccall( (:cuGraphicsUnregisterResource, :libcuda), CUresult, (CUgraphicsResource,), resource)
end
function cuGraphicsSubResourceGetMappedArray(pArray::Ptr{CUarray}, resource::CUgraphicsResource, arrayIndex::Uint32, mipLevel::Uint32)
  ccall( (:cuGraphicsSubResourceGetMappedArray, :libcuda), CUresult, (Ptr{CUarray}, CUgraphicsResource, Uint32, Uint32), pArray, resource, arrayIndex, mipLevel)
end
function cuGraphicsResourceGetMappedMipmappedArray(pMipmappedArray::Ptr{CUmipmappedArray}, resource::CUgraphicsResource)
  ccall( (:cuGraphicsResourceGetMappedMipmappedArray, :libcuda), CUresult, (Ptr{CUmipmappedArray}, CUgraphicsResource), pMipmappedArray, resource)
end
function cuGraphicsResourceGetMappedPointer_v2(pDevPtr::Ptr{CUdeviceptr}, pSize::Ptr{Cint}, resource::CUgraphicsResource)
  ccall( (:cuGraphicsResourceGetMappedPointer_v2, :libcuda), CUresult, (Ptr{CUdeviceptr}, Ptr{Cint}, CUgraphicsResource), pDevPtr, pSize, resource)
end
function cuGraphicsResourceSetMapFlags(resource::CUgraphicsResource, flags::Uint32)
  ccall( (:cuGraphicsResourceSetMapFlags, :libcuda), CUresult, (CUgraphicsResource, Uint32), resource, flags)
end
function cuGraphicsMapResources(count::Uint32, resources::Ptr{CUgraphicsResource}, hStream::CUstream)
  ccall( (:cuGraphicsMapResources, :libcuda), CUresult, (Uint32, Ptr{CUgraphicsResource}, CUstream), count, resources, hStream)
end
function cuGraphicsUnmapResources(count::Uint32, resources::Ptr{CUgraphicsResource}, hStream::CUstream)
  ccall( (:cuGraphicsUnmapResources, :libcuda), CUresult, (Uint32, Ptr{CUgraphicsResource}, CUstream), count, resources, hStream)
end
function cuGetExportTable(ppExportTable::Ptr{Ptr{None}}, pExportTableId::Ptr{CUuuid})
  ccall( (:cuGetExportTable, :libcuda), CUresult, (Ptr{Ptr{None}}, Ptr{CUuuid}), ppExportTable, pExportTableId)
end

