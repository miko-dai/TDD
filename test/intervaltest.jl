using Revise
using TDD
using Test

iv = Interval(3, 5)

@testset "TDD.jl" begin
    @test minimum(iv) == 3
    @test maximum(iv) == 5
end