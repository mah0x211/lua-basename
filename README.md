# lua-basename

[![test](https://github.com/mah0x211/lua-basename/actions/workflows/test.yml/badge.svg)](https://github.com/mah0x211/lua-basename/actions/workflows/test.yml)
[![Coverage Status](https://coveralls.io/repos/github/mah0x211/lua-basename/badge.svg?branch=master)](https://coveralls.io/github/mah0x211/lua-basename?branch=master)

extract the base portion of a pathname.


## Installation

```
luarocks install basename
```


## name = basename( pathname )

extract the base portion of a pathname.

**Parameters**

- `pathname:string`: pathname string.

**Returns**

- `name:string`: the base portion of a pathname.

**Example**

```lua
local basename = require('basename')
print(basename('/foo/bar/baz.qux')) -- 'baz.qux'
-- the trailing-slashes will be deleted.
print(basename('///usr///bin///')) -- 'bin'
```
