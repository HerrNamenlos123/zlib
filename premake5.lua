
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

	files {
		"include/**",
		"src/**",
		"premake5.lua"
	}

	excludes {
		"example.c"
	}

	defines { "verbose=-1" }    -- Stop "bit length overflow" warning

	ZLIB_INCLUDE_DIRS = { _SCRIPT_DIR .. "/include" }
	ZLIB_LINK_DIRS = { _SCRIPT_DIR .. "/bin/" }
	ZLIB_LINKS = { "zlib" }
