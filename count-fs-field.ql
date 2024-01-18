import cpp

from Field field
where
  field.getFile().getRelativePath().matches("%fs%") and
  not field.getFile().getRelativePath().matches("%arch/%") and
  not field.getFile().getRelativePath().matches("%trace%") and
  not field.getFile().getRelativePath().matches("%defs%") and
  not field.getFile().getRelativePath().matches("%sysfs%")
select field.getParentScope(), field, field.getFile().getRelativePath()
