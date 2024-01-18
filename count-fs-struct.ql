import cpp

from Struct struct
where
    not struct.isAnonymous()
    and struct.getFile().getRelativePath().matches("%fs%")
    and struct.hasDefinition()
select struct
