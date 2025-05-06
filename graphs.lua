-- graphs.lua
-- Código para gerar um grafo simples em Lua

-- Classe para representar um grafo
local Graph = {}
Graph.__index = Graph

-- Construtor do grafo
function Graph:new()
	local obj = {
		vertices = {}, -- Tabela para armazenar os vértices e suas conexões
	}
	setmetatable(obj, Graph)
	return obj
end

-- Adiciona um vértice ao grafo
function Graph:addVertex(vertex)
	if not self.vertices[vertex] then
		self.vertices[vertex] = {}
	end
end

-- Adiciona uma aresta entre dois vértices
function Graph:addEdge(vertex1, vertex2)
	if not self.vertices[vertex1] then
		self:addVertex(vertex1)
	end
	if not self.vertices[vertex2] then
		self:addVertex(vertex2)
	end
	table.insert(self.vertices[vertex1], vertex2)
	table.insert(self.vertices[vertex2], vertex1) -- Para grafos não direcionados
end

-- Exibe o grafo
function Graph:printGraph()
	for vertex, edges in pairs(self.vertices) do
		io.write(vertex .. " -> ")
		for _, edge in ipairs(edges) do
			io.write(edge .. " ")
		end
		io.write("\n")
	end
end

-- Exemplo de uso
local g = Graph:new()
g:addVertex("A")
g:addVertex("B")
g:addEdge("A", "C")
g:addEdge("A", "B")
g:addEdge("B", "C")
g:printGraph()