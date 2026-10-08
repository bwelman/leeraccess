function Span(el)
  if not quarto.doc.is_format("latex") then
    return nil
  end

  local open, close
  if el.classes:includes("key") then
    open, close = "\\texttt{\\small\\underline{", "}}"
  elseif el.classes:includes("varname") then
    open, close = "\\texttt{\\small ", "}"
  else
    return nil
  end

  local result = pandoc.List({ pandoc.RawInline("latex", open) })
  result:extend(el.content)
  result:insert(pandoc.RawInline("latex", close))
  return result
end
