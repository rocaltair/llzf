local l = require "lzf"
local src = [[ {
	{foo_varname=555, bar_varname=222, xxx_varname=111},
	{foo_varname=666, bar_varname=2134, xxx_varname=234},
	{foo_varname=, bar_varname=23423, xxx_varname=789},
	{foo_varname=2349, bar_varname=54378934, xxx_varname=111},
	{foo_varname=8923, bar_varname=3459090, xxx_varname=9234892},
	{foo_varname=439, bar_varname=39994, xxx_varname=233},
	{foo_varname=39888, bar_varname=23423, xxx_varname=453},
	{foo_varname=8923, bar_varname=3459090, xxx_varname=9234892},
	{foo_varname=439, bar_varname=39994, xxx_varname=233},
	{foo_varname=234, bar_varname=234, xxx_varname=234},
	{foo_varname=39888, bar_varname=23423, xxx_varname=453},
}
]]

local c = assert(l.compress(src))

local d = assert(l.decompress(c))

print(string.len(c), string.len(d))
-- print(src, d)

