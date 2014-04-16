# CUDA module management

immutable CuModule
    handle::lib.CUmodule

    function CuModule(filename::ASCIIString)
        a = Array(lib.CUmodule, 1)
        lib.cuModuleLoad(pointer(a), pointer(filename))
        new(a[1])
    end
end

function unload(md::CuModule)
    lib.cuModuleUnload(md.handle)
end

immutable CuFunction
    handle::lib.CUfunction

    function CuFunction(md::CuModule, name::ASCIIString)
        a = Array(lib.CUfunction, 1)
        lib.cuModuleGetFunction(pointer(a), md.handle, pointer(name))
        new(a[1])
    end
end