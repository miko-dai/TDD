struct Interval
    a::Real
    b::Real # implicitly a <= b
end

function Base.minimum(iv::Interval)
    iv.a
end

function Base.maximum(iv::Interval)
    iv.b
end

function Base.:(∈)(x::Real, iv::Interval)
    x <= iv.b && x >= iv.a
end

function 