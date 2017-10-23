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

! function map_inc(lst_a) result(lst_b) bind(C, name="map_inc")
!   use, intrinsic :: iso_c_binding, only : c_double
!   implicit none
!   real(c_double), intent(in), dimension(:) :: lst_a
!   real(c_double), intent(out), dimension(*) :: lst_b

!   lst_b(1:SIZE(lst_a)) = lst_a*2

! end function map_inc

subroutine foo(a) bind(c, name='foo')
   !use, intrinsic :: iso_c_binding, only : c_double
   implicit none
   integer :: a(1) ! a(*) also works

   a(1) = 99

end subroutine foo
