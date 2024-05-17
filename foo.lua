function create_pixels()
	print("test function to plot pixels on the screen")
	-- p = graph.plot("y = sin(x) * x^2")
end

print("welcome to " .. _VERSION)
print("the fastest interpreted language!")

local function teste()
	print("function call and library calcs")
	return 0
end

function sum(x, y)
	return x + y
end

function sum(x, y, callback)
	callback(x + y)
end

function process_table(data, level)
	local tabs = string.rep("\t", level)
	if type(data) == "string" or type(data) == "number" then
		io.write(" " .. data .. "\n")
	else
		io.write("\n")
		for key, value in pairs(data) do
			io.write(tabs .. key .. ":")
			process_table(value, level + 1)
		end
	end
end

my_data = {
	name = "Alice",
	age = 30,
	children = {
		{
			name = "Bob",
			age = 5,
			height = 110.5
		},
		{
			name = "Charlie",
			age = 2,
			height = 93.8,
			favorites = {
				color = "red"
			}
		}
	}
}

function Foo()
	teste()
	sum(2, 3, print)
	process_table(my_data, 0)
	create_pixels()
end
