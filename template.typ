// template.typ

#let cheatsheet(body) = {
    set page(
        paper: "a4",
        margin: (x: 1cm, y: 1cm),
        columns: 3,
    )

    // SETTINGS
    set text(size: 08pt)
    // set page(fill: rgb("#dcccad"))
    set text(fill: rgb("#2d2924"))
    show heading.where(level: 1): set text(fill: green, size: 11pt)
    show heading.where(level: 2): set text(size: 9pt)

    body
}

// --- UTILS ---
#let recipe(title, body) = {
    block(fill: luma(210), inset: 5pt, radius: 2pt, width: 100%)[
        *#title* \
        #body
    ]
}

#let warn(body) = {
    block(stroke: (left: 2pt + red), inset: (left: 5pt))[#body]
}

// MACROS
#let zero = math.underline([0])
