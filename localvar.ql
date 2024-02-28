import cpp

from LocalVariable localvar
where
  not localvar.getFunction().isInline() and
  not localvar.isInMacroExpansion() and
  not localvar.getType().getName().matches("(unnamed%") // filter out unnamed types
select localvar, localvar.getFunction(), localvar.getType()
