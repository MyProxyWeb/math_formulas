// Document configuration
#set document(
  title: "Math Formulas",
  author: "Your Name"
)

// Page setup with custom margins and modern look
#set page(
  paper: "a4",
  margin: (x: 1.8cm, y: 2cm),
  header: context {
    if counter(page).get().first() > 1 [
      #set text(9pt, fill: rgb("#666666"))
      #smallcaps[Math Formulas Reference]
      #h(1fr)
      #counter(page).display("1")
    ]
  },
  numbering: "1",
)

// Typography settings
#set text(
  font: "New Computer Modern",
  size: 11pt,
  fallback: true
)

#set par(
  justify: true,
  leading: 0.65em,
  spacing: 1.2em
)

// Heading styles with page breaks
#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  set text(28pt, weight: "bold")
  set block(spacing: 1.5em)

  block(
    width: 100%,
    inset: (top: 20pt, bottom: 20pt),
    breakable: false,
    {
      // Decorative accent bar
      block(
        width: 60pt,
        height: 4pt,
        fill: gradient.linear(
          rgb("#2563eb"),
          rgb("#93c5fd"),
          angle: 90deg
        )
      )
      v(12pt)

      // Main heading with gradient text effect
      text(
        fill: gradient.linear(
          rgb("#1e40af"),
          rgb("#2563eb"),
          angle: 45deg
        ),
        weight: "black",
        size: 32pt
      )[#it.body]

      v(8pt)

      // Bottom decorative line
      line(length: 100%, stroke: (
        paint: gradient.linear(
          rgb("#2563eb"),
          rgb("#93c5fd").transparentize(80%),
          angle: 90deg
        ),
        thickness: 3pt,
        cap: "round"
      ))
    }
  )
}

#show heading.where(level: 2): it => {
  set text(20pt, weight: "bold")
  set block(spacing: 1.2em)

  block(
    width: 100%,
    inset: (top: 12pt, bottom: 10pt),
    {
      // Side accent with heading
      grid(
        columns: (4pt, 1fr),
        column-gutter: 12pt,
        // Vertical accent bar
        block(
          width: 4pt,
          height: 100%,
          fill: gradient.linear(
            rgb("#2563eb"),
            rgb("#60a5fa"),
            angle: 180deg
          ),
          radius: 2pt
        ),
        // Heading text
        align(horizon)[
          #text(fill: rgb("#1e40af"), weight: "bold")[#it.body]
        ]
      )
    }
  )
}

#show heading.where(level: 3): it => {
  set text(16pt, weight: "semibold")
  set block(spacing: 0.9em)

  block(
    inset: (left: 8pt, top: 6pt, bottom: 6pt),
    stroke: (left: 3pt + rgb("#93c5fd")),
    {
      text(fill: rgb("#2563eb"))[#it.body]
    }
  )
}

// Enhanced outline
#set outline(
  title: {
    set text(22pt, weight: "bold")
    block(
      inset: (bottom: 10pt),
      {
        text(fill: rgb("#1a1a1a"))[Table of Contents]
        v(4pt)
        line(length: 100%, stroke: 2pt + rgb("#2563eb"))
      }
    )
  },
  indent: auto
)

#show outline.entry.where(level: 1): it => {
  set text(weight: "semibold", fill: rgb("#1a1a1a"))
  v(8pt, weak: true)
  it
}

// Math equation styling
#show math.equation.where(block: true): it => {
  set block(
    fill: rgb("#f8fafc"),
    inset: 12pt,
    radius: 4pt,
    stroke: 1pt + rgb("#e2e8f0"),
    breakable: false
  )
  it
}

// Title page
#align(center + horizon)[
  #block(
    width: 80%,
    inset: 30pt,
    radius: 8pt,
    fill: gradient.linear(
      rgb("#1e40af"),
      rgb("#2563eb"),
      angle: 45deg
    ),
    {
      set text(fill: white)
      text(size: 36pt, weight: "bold")[Math Formulas]
      v(8pt)
      text(size: 16pt)[A Comprehensive Reference]
      v(20pt)
      line(length: 60%, stroke: 2pt + white)
      v(12pt)
      text(size: 12pt)[
        #datetime.today().display("[month repr:long] [day], [year]")
      ]
    }
  )
]

#pagebreak()

// Table of Contents
#outline(depth: 2)

#pagebreak()

// Main content
#set heading(numbering: none)

= Math Formulas

#include "sections/01-set.typ"
#include "sections/02-algebra.typ"
#include "sections/02-permcomb.typ"
#include "sections/03-calculus.typ"
#include "sections/04-vector.typ"
#include "sections/05-transform.typ"
#include "sections/06-prob-stats.typ"
