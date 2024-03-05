import cpp

from LocalVariable lv
where
  not lv.getFunction().isInline() and
  not lv.isInMacroExpansion() and
  not lv.getName().matches("(unnamed%") and
  not lv.getType().getUnderlyingType().getName().matches("(unnamed%") and
  lv.getLocation().toString().matches("%src/%")
select lv, lv.getFunction(), lv.getType().getUnderlyingType()
