local testcase = require('testcase')
local basename = require('basename')

function testcase.basename()
    -- test that extract the basename
    for _, v in ipairs({
        {
            "",
            ".",
        },
        {
            ".",
            ".",
        },
        {
            "/.",
            ".",
        },
        {
            "/",
            "/",
        },
        {
            "////",
            "/",
        },
        {
            "x/",
            "x",
        },
        {
            "abc",
            "abc",
        },
        {
            "abc/def",
            "def",
        },
        {
            "a/b/.x",
            ".x",
        },
        {
            "a/b/c.",
            "c.",
        },
        {
            "a/b/c.x",
            "c.x",
        },
        {
            "a/b/   ",
            "   ",
        },
    }) do
        local name = assert(basename(v[1]))
        assert.equal(name, v[2])
    end
    local name = assert(basename())
    assert.equal(name, '.')

    -- test that throws an error if argument is invalid
    local err = assert.throws(basename, {})
    assert.match(err, 'pathname must be string')
end
