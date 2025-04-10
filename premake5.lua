project "GLAD"
    kind "StaticLib"
    language "C"
    location "build"

    targetdir ("out/build/bin/%{cfg.buildcfg}/%{prj.name}")
    objdir    ("out/build/obj/%{cfg.buildcfg}/%{prj.name}")

    includedirs { "include" }
    files { "source/glad.c" }

    filter "system:windows"
        systemversion "latest"
        staticruntime "On"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
