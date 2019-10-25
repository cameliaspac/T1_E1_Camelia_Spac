% Semnal dreptunghiular multinivel, aleator 
% Durata fiecarui nivel: 0,25 s. 


% Pt nivelurile {-1, 1} ;

rez1=-20:0.002:20;
rez2=-200:0.02:200;
rez3=-20:0.2:20;

nr=1;
for i=rez1   %pentru rezolutia de 2ms
    if(mod(round(i/0.25),2)==0)  %impartim timpul la durata nivelului si rotunjim la partea intreaga acest rezultat apoi impartim la numarul de niveluri
        y1(nr)=1;
    else
        y1(nr)=-1;
    end
   nr=nr+1;
end

nr=1;
for i=rez2  %pentru rezolutia de 20ms
    if(mod(round(i/0.25),2)==0)
        y2(nr)=1;
    else
        y2(nr)=-1;
    end
   nr=nr+1;
end

nr=1;
for i=rez3   %pentru rezolutia de 200ms
    if(mod(round(i/0.25),2)==0)
        y3(nr)=1;
    else
        y3(nr)=-1;
    end
   nr=nr+1;
end
figure(1)
subplot(3,1,1)
plot(rez1,y1),grid,title('Rezolutie 2ms'),xlabel('Timp (sec)'),ylabel('Amplitudine')
axis([-3 3 -2 2])
subplot(3,1,2)
plot(rez2,y2),grid,title('Rezolutie 20ms'),xlabel('Timp (sec)'),ylabel('Amplitudine')
axis([-3 3 -2 2])
subplot(3,1,3)
plot(rez3,y3),grid,title('Rezolutie 200ms'),xlabel('Timp (sec)'),ylabel('Amplitudine')
axis([-3 3 -2 2])

%Pt nivelurile {-3,-1,1,3} 


rez1=-20:0.002:20;
rez2=-200:0.02:200;
rez3=-20:0.2:20;

nr=1;
for i=rez1
    if(mod(round(i/0.25),4)==0)
        y1(nr)=3;
    elseif(mod(round(i/0.25),4)==1)
        y1(nr)=1;
    elseif(mod(round(i/0.25),4)==2)
        y1(nr)=-1;
    else
        y1(nr)=-3;
    end
   nr=nr+1;
end

nr=1;
for i=rez2
    if(mod(round(i/0.25),4)==0)
        y2(nr)=3;
    elseif(mod(round(i/0.25),4)==1)
        y2(nr)=1;
    elseif(mod(round(i/0.25),4)==2)
        y2(nr)=-1;
    else
        y2(nr)=-3;
    end
   nr=nr+1;
end

nr=1;
for i=rez3
   if(mod(round(i/0.25),4)==0)
        y3(nr)=3;
    elseif(mod(round(i/0.25),4)==1)
        y3(nr)=1;
    elseif(mod(round(i/0.25),4)==2)
        y3(nr)=-1;
    else
        y3(nr)=-3;
    end
   nr=nr+1;
end

figure(2)
subplot(3,1,1)
plot(rez1,y1),grid,title('Rezolutie 2ms'),xlabel('Timp (sec)'),ylabel('Amplitudine')
axis([-3 3 -4 4])
subplot(3,1,2)
plot(rez2,y2),grid,title('Rezolutie 20ms'),xlabel('Timp (sec)'),ylabel('Amplitudine')
axis([-3 3 -4 4])
subplot(3,1,3)
plot(rez3,y3),grid,title('Rezolutie 200ms'),xlabel('Timp (sec)'),ylabel('Amplitudine')
axis([-3 3 -4 4])

%Pt nivelurile {-5,-3,-1,1,3,5} 


rez1=-20:0.002:20;
rez2=-200:0.02:200;
rez3=-20:0.2:20;

nr=1;
for i=rez1
    if(mod(round(i/0.25),6)==0)
        y1(nr)=5;
    elseif(mod(round(i/0.25),6)==1)
        y1(nr)=3;
    elseif(mod(round(i/0.25),6)==2)
        y1(nr)=1;
    elseif(mod(round(i/0.25),6)==3)
        y1(nr)=-1;
    elseif(mod(round(i/0.25),6)==4)
        y1(nr)=-3;
    else
        y1(nr)=-5;
    end
   nr=nr+1;
end

nr=1;
for i=rez2
     if(mod(round(i/0.25),6)==0)
        y2(nr)=5;
    elseif(mod(round(i/0.25),6)==1)
        y2(nr)=3;
    elseif(mod(round(i/0.25),6)==2)
        y2(nr)=1;
    elseif(mod(round(i/0.25),6)==3)
        y2(nr)=-1;
    elseif(mod(round(i/0.25),6)==4)
        y2(nr)=-3;
    else
        y2(nr)=-5;
     end
     
   nr=nr+1;
end

nr=1;
for i=rez3
   if(mod(round(i/0.25),6)==0)
        y3(nr)=5;
    elseif(mod(round(i/0.25),6)==1)
        y3(nr)=3;
    elseif(mod(round(i/0.25),6)==2)
        y3(nr)=1;
    elseif(mod(round(i/0.25),6)==3)
        y3(nr)=-1;
    elseif(mod(round(i/0.25),6)==4)
        y3(nr)=-3;
    else
        y3(nr)=-5;
    end
   nr=nr+1;
end

figure(3)
subplot(3,1,1)
plot(rez1,y1),grid,title('Rezolutie 2ms'),xlabel('Timp (sec)'),ylabel('Amplitudine')
axis([-3 3 -6 6])
subplot(3,1,2)
plot(rez2,y2),grid,title('Rezolutie 20ms'),xlabel('Timp (sec)'),ylabel('Amplitudine')
axis([-3 3 -6 6])
subplot(3,1,3)
plot(rez3,y3),grid,title('Rezolutie 200ms'),xlabel('Timp (sec)'),ylabel('Amplitudine')
axis([-3 3 -6 6])

%Pt nivelurile {-7,-5,-3,-1,1,3,5,7}

rez1=-20:0.002:20;
rez2=-200:0.02:200;
rez3=-20:0.2:20;
nr=1;
for i=rez1
    if(mod(round(i/0.25),8)==0)
        y1(nr)=7;
    elseif(mod(round(i/0.25),8)==1)
        y1(nr)=5;
    elseif(mod(round(i/0.25),8)==2)
        y1(nr)=3;
    elseif(mod(round(i/0.25),8)==3)
        y1(nr)=1;
    elseif(mod(round(i/0.25),8)==4)
        y1(nr)=-1;
    elseif(mod(round(i/0.25),8)==5)
        y1(nr)=-3;
    elseif(mod(round(i/0.25),8)==6)
        y1(nr)=-5;
    else
        y2(nr)=-7;
     end
     
   nr=nr+1;
end

nr=1;
for i=rez2
   if(mod(round(i/0.25),8)==0)
        y2(nr)=7;
    elseif(mod(round(i/0.25),8)==1)
        y2(nr)=5;
    elseif(mod(round(i/0.25),8)==2)
        y2(nr)=3;
    elseif(mod(round(i/0.25),8)==3)
        y2(nr)=1;
    elseif(mod(round(i/0.25),8)==4)
        y2(nr)=-1;
    elseif(mod(round(i/0.25),8)==5)
        y2(nr)=-3;
    elseif(mod(round(i/0.25),8)==6)
        y2(nr)=-5;
    else
        y2(nr)=-7;
     end
     
   nr=nr+1;
end

nr=1;
for i=rez3
    if(mod(round(i/0.25),8)==0)
        y3(nr)=7;
    elseif(mod(round(i/0.25),8)==1)
        y3(nr)=5;
    elseif(mod(round(i/0.25),8)==2)
        y3(nr)=3;
    elseif(mod(round(i/0.25),8)==3)
        y3(nr)=1;
    elseif(mod(round(i/0.25),8)==4)
        y3(nr)=-1;
    elseif(mod(round(i/0.25),8)==5)
        y3(nr)=-3;
    elseif(mod(round(i/0.25),8)==6)
        y3(nr)=-5;
    else
        y3(nr)=-7;
    end
   nr=nr+1;
end

figure(4)
subplot(3,1,1)
plot(rez1,y1),grid,title('Rezolutie 2ms'),xlabel('Timp (sec)'),ylabel('Amplitudine')
axis([-3 3 -8 8])
subplot(3,1,2)
plot(rez2,y2),grid,title('Rezolutie 20ms'),xlabel('Timp (sec)'),ylabel('Amplitudine')
axis([-3 3 -8 8])
subplot(3,1,3)
plot(rez3,y3),grid,title('Rezolutie 200ms'),xlabel('Timp (sec)'),ylabel('Amplitudine')
axis([-3 3 -8 8])

clear
