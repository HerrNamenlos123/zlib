
project "zlib"
	language "C"
	kind "StaticLib"
	targetname "zlib"
	targetdir "bin"
	staticruntime "on"
	runtime "Release"
	symbols "On"
	location "build"

	system "Windows"
	architecture "x86_64"

	includedirs { "include" }
	defines { "verbose=-1", "_CRT_SECURE_NO_WARNINGS" }

	files {
		"include/**",
		"src/**",
		"premake5.lua"
	}

	excludes {
		"example.c"
	}

	ZLIB_INCLUDE_DIRS = { _SCRIPT_DIR .. "/include" }
	ZLIB_LINK_DIRS = { _SCRIPT_DIR .. "/bin/" }
	ZLIB_LINKS = { "zlib" }
