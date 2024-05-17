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

local function getInt(prompt)
	io.write(prompt .. ": ")
	io.flush()
	local userInput = io.read()

	while true do
		local number = tonumber(userInput)
		if number ~= nil and (not range or (number >= range.min and number <= range.max)) then
			return number
		end

		io.write("Invalid input. Please enter an integer." ..
			(range and ("within the range of " .. range.min .. " to " .. range.max) or "") .. ".\n")
		userInput = io.read()
	end
end

function Prompt()
	local number = getInt("Enter a number:")

	for i = 1, number do
		local randomNPC = generateNPC()
		print("\nGenerated NPC:")
		for key, value in pairs(randomNPC) do
			print(key, value)
		end
	end
end
