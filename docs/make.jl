using Curious
using Documenter

DocMeta.setdocmeta!(Curious, :DocTestSetup, :(using Curious); recursive=true)

makedocs(;
    modules=[Curious],
    authors="Semiotic Labs",
    repo="https://github.com/semiotic-ai/Curious.jl/blob/{commit}{path}#{line}",
    sitename="Curious.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://semiotic-ai.github.io/Curious.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/semiotic-ai/Curious.jl",
    devbranch="main",
    devurl="latest",
)
