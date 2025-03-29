project "Graphics"
    kind "StaticLib"
    language "C"
    targetname "glad"

    targetdir "build/bin/%{cfg.buildcfg}"
    objdir "build/obj/%{cfg.buildcfg}"

    includedirs { "include" }

    files { "source/glad.c" }
