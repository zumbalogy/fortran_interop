function main(a, b) ! bind(C, name='main') ! works without binding
    integer, value :: a, b
    integer :: mult

    mult = f2(a) * b
end function main

function f2(a)
  integer :: a
  f2 = a + 1
end function
