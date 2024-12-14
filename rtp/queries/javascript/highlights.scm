(jsx_element
  open_tag: (jsx_opening_element
    [
      "<"
      ">"
    ] @tag.delimiter))

((jsx_element
  (jsx_opening_element
    name: (identifier) @_tag)
  (jsx_text) @markup.heading.1)
  (#eq? @_tag "h1"))

((jsx_element
  (jsx_opening_element
    name: (identifier) @_tag)
  (jsx_text) @markup.heading.2)
  (#eq? @_tag "h2"))
