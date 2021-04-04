program main
  use M_OS, only: get_os_type, separator, which
  use M_OS, only: read_cmd, string_t
  implicit none
  character(len=*),parameter :: gen='(*(g0,1x))'
  integer :: os
  type(string_t), allocatable :: output(:)
  integer :: i
  os=get_os_type()
  write(*,gen)'get_os_type ==>',os
  write(*,gen)'separator ==>',separator()
  write(*,gen)'which uname ==>',which('uname')
  write(*,gen)'which type ==>',which('type')
  call read_cmd('uname -a',output)
  do i=1,size(output)
     write(*,gen)output(i)%s
  enddo
  call read_cmd('systeminfo',output)
  do i=1,size(output)
     write(*,gen)output(i)%s
  enddo
end program main
