project "glew"
	kind "SharedLib"
	language "C"

	targetdir ("bin/" .. outputDir .. "/%{prj.name}")
	objdir ("obj/" .. outputDir .. "/%{prj.name}")

	files
	{
        "include/GL/glew.h",
        "include/GL/wglew.h",
        "include/GL/glxew.h",
		"src/glew.c"
    }

    includedirs { "include/" }
    
	filter "system:linux"
		systemversion "latest"

		links { "GL", "X11" }

	
	filter "system:windows"
		systemversion "latest"


	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"