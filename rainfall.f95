program rainfall

implicit none


integer::i
integer::rain(50)
character(20)::town(50)
integer::st
integer,parameter::Nmax=50
integer::N



call readfile(N,Nmax,town,rain)



do i=1,N
  print*,town(i),rain(i)
end do


contains

subroutine readfile(N,Nmax,T,R)
integer::k
integer::st
integer,intent(in)::Nmax
character(20),intent(out)::T(Nmax)
integer,intent(out)::R(Nmax)
integer,intent(out)::N


  
open(10,file='data.txt')


  
read(10,*)


  
k=1


  
do
   read(10,*,iostat=st) T(k),R(k)
  if (st/=0)exit

k=k+1

end do




close(10)


N=k+1


end subroutine    


  

end program
