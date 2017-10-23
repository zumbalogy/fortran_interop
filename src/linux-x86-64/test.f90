function main(a, b) ! bind(C, name='main') ! works without binding
  implicit none
  integer, value :: a
  integer :: b(1)
  integer :: main
  integer :: f2

  main = f2(a) - b(1)
end function main

function f2(a)
  implicit none
  integer :: a
  integer :: f2

  f2 = a + 2
end function
