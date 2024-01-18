import cpp

from Struct struct
where
  struct.getAField().getType().getName().matches("%inode *%") and
  not struct.getFile().getRelativePath().matches("scripts/%")
select struct, struct.getLocation()
