struct Interval
    a::Real
    b::Real
end

function Base.minimum(iv::Interval)
    minimum([iv.a, iv.b])
end

function Base.maximum(iv::Interval)
    maximum([iv.a, iv.b])
end