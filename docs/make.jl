using TDD
using Documenter

DocMeta.setdocmeta!(TDD, :DocTestSetup, :(using TDD); recursive=true)

makedocs(;
    modules=[TDD],
    authors="miko-dai <miko.yc.dai@gmail.com> and contributors",
    repo="https://github.com/miko-dai/TDD.jl/blob/{commit}{path}#{line}",
    sitename="TDD.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://miko-dai.github.io/TDD.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/miko-dai/TDD.jl",
    devbranch="main",
)
