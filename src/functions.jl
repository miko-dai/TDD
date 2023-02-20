function find_neighbors(graph, i::Integer)
    neighbors = copy(graph[i])
    sort!(append!(neighbors, i)) # the node is connected to itself
    return(neighbors)
end