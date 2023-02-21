function direct_neighbors(graph, i::Integer)
    """
    find and return the direct neighbors from a starting node i in the graph provided
    """
    neighbors = copy(graph[i])
    sort!(append!(neighbors, i)) # the node is connected to itself
    return(neighbors)
end

function reachable_nodes(graph, i::Integer)
    neighbors = Set(direct_neighbors(graph, i))
    reachable = Set()
    while reachable != neighbors
        reachable = copy(neighbors)
        for n in reachable
            push!(neighbors, direct_neighbors(graph, n))
        end
    end
    return collect(reachable)
end