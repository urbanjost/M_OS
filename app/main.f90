program main
  use M_OS, only: get_os_type, separator, which
  implicit none
  character(len=*),parameter :: gen='(*(g0,1x))'
  integer :: os
  os=get_os_type()
  write(*,gen)'get_os_type ==>',os
  write(*,gen)'separator ==>',separator()
  write(*,gen)'which uname ==>',which('uname')
  write(*,gen)'which type ==>',which('type')
end program main
