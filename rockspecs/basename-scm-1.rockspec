rockspec_format = "3.0"
package = "basename"
version = "scm-1"
source = {
    url = "git+https://github.com/mah0x211/lua-basename.git",
}
description = {
    summary = "extract the base portion of a pathname.",
    homepage = "https://github.com/mah0x211/lua-basename",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        basename = "basename.lua"
    }
}
