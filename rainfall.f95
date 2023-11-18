program rainfall

implicit none


integer::i
integer::rain(50)
character(20)::town(50)
integer::st
integer,parameter::Nmax=50


open(10,file='data.txt',status='old',iostat=st)


if (st/=0) then
  write(*,*)'Sfalma'
end if
  


 read(10,*)


    do i=1,Nmax
      read(10,*,iostat=st) town(i) , rain(i)
        if (st/=0) exit
    end do


close(10)


     print*, "Town","                    Average Yearly Rainfall (in millimeters)"
 
 
do i=1,min(Nmax,i-1)
print*,town(i),rain(i)
end do


end program
