using Revise
using TDD
using Test

iv = Interval(3, 5)

@testset "TDD.jl" begin
    @test minimum(iv) == 3
    @test maximum(iv) == 5
    @test 3.59 ∈ iv
    @test isempty(iv) == false
    @test isempty(Interval(3,2)) == true
end