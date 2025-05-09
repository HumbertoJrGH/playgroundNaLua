local City = {}
City.__index = City

function City:new(name)
	local obj = {
		name = name,
		neighbors = {},
	}
	setmetatable(obj, City)
	return obj
end