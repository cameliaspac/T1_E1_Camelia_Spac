% Semnal triunghiular periodic
% Perioada: 5 s. 
% Nivel maxim: +1. 
% Nivel minim: -2. 
% Panta: +1 V/s

y=0.0002; %initializam rezolutia temporara cu 0.2ms
for i=1:1:3   %intram in bucla de 3 ori pentru a afisa graficul pentru fiecare rezolutie 2ms,20ms,200ms 
   y=y*10;
t=-20:y:20;
x=3*sawtooth(0.4*pi*t,0.6)/2-0.5; %semnal triunghiular perioada 5s
                        %0.6 pentru a avea panta +1           
figure(i) %figura1-2ms,figura2-20ms,figura3-200ms
plot(t,x),axis([0 20 -3 3]),grid,xlabel('Timp (sec)'),ylabel('Amplitudine')
if(i==1)
    title('Rezolutie 2ms')
end
if(i==2)
    title('Rezolutie 20ms')
end
if(i==3)
    title('Rezolutie 200ms')
end

end
clear
