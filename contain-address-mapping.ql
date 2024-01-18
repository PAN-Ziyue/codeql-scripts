import cpp

from Struct struct
where
  struct.getAField().getType().getName().matches("%address_space *%") and
  not struct.isAnonymous() and
  not struct.getFile().getRelativePath().matches("scripts/%")
select struct
