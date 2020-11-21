class GraphNode
    attr_accessor :val, :neighbors
    def initialize(val, neighbors = [])
        @val = val
        @neighbors = neighbors
    end

    def self.bfs(starting_node, target_value)
        visited = []
        queue = [starting_node]
        
        while queue.empty? == false
            current = queue.shift
            p current.val
            return current if current.val == target_value
            visited << current
            current.neighbors.each do |neighbor|
                queue << neighbor if visited.include?(neighbor) == false
            end
        end

        nil
    end

end

a = GraphNode.new("A")
b = GraphNode.new("B")
c = GraphNode.new("C")
d = GraphNode.new("D")
e = GraphNode.new("E")
f = GraphNode.new("F")

a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p GraphNode.bfs(f, "B")
p GraphNode.bfs(f, "D")
p GraphNode.bfs(a, "F")