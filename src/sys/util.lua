--[[- ### sys.util
@module sys.util
@author oxrusher(email: oxrusher@gmail.com)
@license MIT
@copyright
--]]

module("sys.util",package.seeall)

--[[-
根据类型和作用域获取引用对象
@tparam string f 作用域与名称组合字符，如： u.o.x
@tparam string e 该引用的期望类型
@return ret
--]]
getfield =
function(f,e)
	local v = _G
	for w in string.gmatch(f,"[%w_]+") do
		v = v[w]
	end
	return type(v) == e and v
end

--[[-
根据全局名称设置对象
@tparam string n 作用域与名称组合字符，如： u.o.x
@tparam alltype f 被设置的值
@return ret 执行结果
--]]
setfield =
function(n,f)
    assert(type(n) == "string")
    assert(type(f) == "function")

	local v = _G
    local sub_field = nil
    local sub_name = nil
	for w in string.gmatch(n,"[%w_]+") do
        sub_field = v
        sub_name = w
		v = v[w]
	end

    if sub_field then
        sub_field[sub_name] = f
        return true
    end

    return false
end


