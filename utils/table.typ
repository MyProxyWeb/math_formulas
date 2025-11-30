// Reusable function to create tables with auto S.N.
#let table_with_sn(
  headers,
  data,
  columns: auto,
  stroke: 0.5pt + blue.darken(20%),
  fill: (x, y) => if y == 0 { blue.lighten(70%) },
  align: auto,
) = {
  // Calculate columns if auto
  let cols = if columns == auto {
    (auto, ..headers.map(_ => 1fr))
  } else {
    columns
  }
  
  // Calculate alignment if auto
  let aligns = if align == auto {
    (center + horizon, ..headers.map(_ => left + horizon))
  } else {
    align
  }
  
  table(
    columns: cols,
    stroke: stroke,
    fill: fill,
    align: aligns,
    
    // Header row
    [*S.N.*], ..headers.map(h => [*#h*]),
    
    // Data rows with auto numbering
    ..data.enumerate().map(((i, row)) => (
      [#(i + 1)],
      ..row,
    )).flatten()
  )
}
)

