using TDD
using Test

testgraph = [
          [2, 3],     # list of nodes that can be reached from node 1
          [1],        # list of nodes that can be reached from node 2
          [1],        # ", node 3
          [5],        # ", node 4
          [4]]        # ", node 5

@testset "TDD.jl" begin
    find_neighbors(testgraph, 1) == [1,2,3]
end
