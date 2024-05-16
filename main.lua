require "foo"

print("welcome to " .. _VERSION)
print("the fastest interpreted language!")

if 1 < 2 then
	print("1 is less than 2")
end

local numero = 1
while numero < 4 do
	print(numero)
	numero = numero + 1
end

local function teste()
	print("function call and library calcs")
	return 0
end

teste()

function sum(x, y)
	return x + y
end

function sum(x, y, callback)
	callback(x + y)
end

sum(2, 3, print)

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
			age = 5
		},
		{
			name = "Charlie",
			age = 2
		}
	}
}

process_table(my_data, 0)
create_pixels()

Person = {}
function Person:new(name, age)
	local obj = { name = name, age = age }
	setmetatable(obj, self)
	self.__index = self
	return obj
end

function Person:sayHello()
	print("Hello! My name is " .. self.name .. " and I am " .. self.age .. " years old.")
end

-- local p1 = Person:new("First Object", 0)
-- p1:sayHello()
math.randomseed(os.time())

-- GERADOR DE NPCS
local mnames = {
	"Alain",
	"Alan",
	"Alano",
	"Alejandro",
	"Arnau",
	"Arnaud",
	"Arnaude",
	"Arnaudo",
	"Arnou",
	"Arnoud",
	"Arnoude",
	"Arnoudo",
	"Bernard",
	"Bernarde",
	"Bernardo",
	"Bonard",
	"Bonarde",
	"Bonardo",
	"Bonart",
	"Bonarte",
	"Bonarto",
	"Bruno",
	"Castre",
	"Donnan",
	"Erik",
	"Mellenoir",
	"Oliver",
	"Revieur",
	"Sorin",
	"Vincenzo",
}

local fnames = {
	"Annastazia",
	"Carmen",
	"Isabella",
}

local professions = { "Occultist", "Merchant", "Wizard", "Knight", "Bard", "Thief", "Alchemist", "Cleric" }
local races = { "Human" }
local nations = { "Mendiberdim", "Valleriana", "Italia", "Allermina", "Arguillo", "Gascogne" }
local hair = { "Black", "Brown", "Blonde", "Red", "Grey", "White" }
local genders = { "Male", "Female" }

-- Function to generate a random NPC
function generateNPC()
	local npc = {}

	npc.gender = genders[math.random(#genders)]

	if npc.gender == "Male" then
		npc.name = mnames[math.random(#mnames)]
	else
		npc.name = fnames[math.random(#fnames)]
	end
	npc.profession = professions[math.random(#professions)]
	npc.race = races[math.random(#races)]
	npc.height = math.random(140, 250)
	npc.hair = hair[math.random(#hair)]
	npc.nation = nations[math.random(#nations)]
	npc.age = math.random(99)

	return npc
end

for i = 0, 9 do
	local randomNPC = generateNPC()
	print("\nGenerated NPC:")
	for key, value in pairs(randomNPC) do
		print(key, value)
	end
end
