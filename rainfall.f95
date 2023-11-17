program rainfall

implicit none


integer::i
integer::rain(5)
character(20)::town(5)


open(10,file='data.txt',status='old')


 read(10,*)


    do i=1,5
      read(10,*) town(i) , rain(i)
    end do


close(10)


     print*, "Town","                    Average Yearly Rainfall (in millimeters)"
 
 
do i=1,5
print*,town(i),rain(i)
end do


end program
