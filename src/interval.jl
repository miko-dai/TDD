struct Interval
    l::Real
    r::Real # implicitly l <= r
end

function Base.minimum(iv::Interval)
    iv.l
end

function Base.maximum(iv::Interval)
    iv.r
end

function Base.:(∈)(x::Real, iv::Interval)
    x >= iv.l && x <= iv.r
end

function Base.isempty(iv::Interval)
    iv.l > iv.r
end