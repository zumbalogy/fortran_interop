function main(a, b) ! bind(C, name='main') ! works without binding
  implicit none
  integer, value :: a, b
  integer :: main
  integer :: f2

  main = f2(a) * b
end function main

function f2(a)
  implicit none
  integer :: a
  integer :: f2

  f2 = a + 1
end function
