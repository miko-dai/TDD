function direct_neighbors(graph::AbstractVector, i::Integer)
    """
    find and return the direct neighbors from a starting node i in the graph provided
    """
    neighbors = copy(graph[i])
    sort!(append!(neighbors, i)) # the node is connected to itself
    return(neighbors)
end

function direct_neighbors(adjmatrix::AbstractMatrix, i::Integer)
    return(findall(adjmatrix[i,:]))
end

function reachable_nodes(input, i::Integer)
    neighbors = Set(direct_neighbors(input, i))
    reachable = Set()
    while reachable != neighbors
        reachable = copy(neighbors)
        for n in reachable
            union!(neighbors, Set(direct_neighbors(input, n)))
        end
    end
    return sort!(collect(reachable))
end

function find_components(input)
    nodes = 1:size(input)[1]
    components = [reachable_nodes(input, n) for n in nodes]
    return unique(components)
end