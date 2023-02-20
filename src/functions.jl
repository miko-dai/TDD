function direct_neighbors(graph, i::Integer)
    """
    find and return the direct neighbors from a starting node i in the graph provided
    """
    neighbors = copy(graph[i])
    sort!(append!(neighbors, i)) # the node is connected to itself
    return(neighbors)
end
