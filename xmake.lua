set_project("LearnVulkan")

set_allowedplats("windows", "linux", "macosx")
set_allowedarchs("windows|x64", "linux|x64", "macosx|x86_64")

add_rules("plugin.vsxmake.autoupdate")
set_languages("cxx20")
set_optimize("fastest")


add_requires("glfw")
add_requires("glm")
add_requires("vulkan-loader")

target("Application")
    set_kind("binary")

    add_files("src/**.cpp")
    add_headerfiles("include/**.hpp", "Cardia/**.h", "vendor/**.h")
    add_includedirs("include/", "vendor/")
    add_packages("glfw")
    add_packages("glm")
    add_packages("vulkan-loader")