using Revise
using TDD
using Test

testgraph = [
          [2, 3],     # list of nodes that can be reached from node 1
          [1],        # list of nodes that can be reached from node 2
          [1],        # ", node 3
          [5],        # ", node 4
          [4]]        # ", node 5

A = Bool[
  1 1 1 0 0;
  1 1 0 0 0;
  1 0 1 0 0;
  0 0 0 1 1;
  0 0 0 1 1;
]

@testset "TDD.jl" begin
    @test direct_neighbors(testgraph, 1) == [1,2,3]
    @test reachable_nodes(testgraph, 2) == [1,2,3]
    @test find_components(testgraph) == [[1,2,3],[4,5]]
    @test direct_neighbors(A, 1) == [1,2,3]
    @test reachable_nodes(A, 2) == [1,2,3]
    @test find_components(A) == [[1,2,3],[4,5]]
end
