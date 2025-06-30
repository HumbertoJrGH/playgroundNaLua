require "foo"
require "generator"

print("eu euin")
Prompt()

function love.load()
	love.window.setMode(800, 600, { resizable = false })
	love.window.setTitle("window")
end

function love.draw()
	love.graphics.print("Hello, Lua!", 350, 280)
end
