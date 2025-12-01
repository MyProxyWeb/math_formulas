// =========================
// Document metadata
// =========================
#set document(title: "Math Formulas")

// =========================
// Typography
// =========================
#set text(font: "New Computer Modern", size: 11pt, fallback: true)
#set par(justify: true, leading: 0.65em, spacing: 1.2em)

// =========================
// Heading styles
// =========================
#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  set text(28pt, weight: "bold")
  set block(spacing: 1.5em)
  it
}
#show heading.where(level: 2): it => {
  set text(20pt, weight: "bold")
  set block(spacing: 1.2em)
  it
}
#show heading.where(level: 3): it => {
  set text(16pt, weight: "semibold")
  set block(spacing: 0.9em)
  it
}

// =========================
// Outline / Table of Contents
// =========================
#set outline(
  title: [#text(22pt, weight: "bold")[Table of Contents]],
  indent: auto
)

// =========================
// Page footer helper
// =========================
#let page-footer = context {
  align(center)[
    #text(9pt, fill: rgb(102, 102, 102))[#counter(page).display()]
  ]
}

// =========================
// Title page (no page number)
// =========================
#set page(footer: none)
#align(center)[
  #block(
    width: 80%,
    inset: 30pt,
    radius: 8pt,
    fill: gradient.linear(rgb(30, 64, 175), rgb(37, 99, 235), angle: 45deg),
  )[
    #set text(fill: white)
    #text(size: 36pt, weight: "bold")[Math Formulas]
    #v(8pt)
    #text(size: 16pt)[A Comprehensive Reference]
    #v(12pt)
    #line(length: 60%, stroke: 2pt + white)
    #v(12pt)
    #text(size: 12pt)[#datetime.today().display("[month repr:long] [day], [year]")]
  ]
]
#pagebreak()

// =========================
// TOC with roman numerals
// =========================
#set page(numbering: "i", footer: page-footer)
#counter(page).update(1)

#include "sections/syllabus.typ"

#outline(depth: 2)
#pagebreak()

// =========================
// Main chapters (arabic numerals)
// =========================
#set page(numbering: "1", footer: page-footer)
#counter(page).update(1)
#set heading(numbering: none)

#include "sections/01-set.typ"
#include "sections/02-algebra.typ"
#include "sections/02-permcomb.typ"
#include "sections/04-vector.typ"
#include "sections/03-calculus.typ"
#include "sections/05-transform.typ"

#include "sections/07-geometry.typ"
#include "sections/07-geometry3.typ"
