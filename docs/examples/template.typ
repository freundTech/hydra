#import "/src/lib.typ": hydra

#let example(..args, body) = {
  set page(paper: "a8", header: hydra(..args, paper: "a8"))
  show heading.where(level: 1): it => pagebreak(weak: true) + it
  set par(justify: true)
  body
}
