import cpp

from GlobalVariable gv
where
  not gv.isInMacroExpansion() and
  not gv.getName().matches("(unnamed%") and
  not gv.getType().getUnderlyingType().getName().matches("(unnamed%") and
  gv.getLocation().toString().matches("%src/date%")
select gv, gv.getType().getUnderlyingType()
