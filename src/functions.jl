function find_neighbors(graph, i::Integer)
    neighbors = copy(graph[i])
    sort(push!(neighbors, i))
    return(neighbors)
end