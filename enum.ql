import cpp

from Enum e
where
  not e.getName().matches("(unnamed%")
select e
