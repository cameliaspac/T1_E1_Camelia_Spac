% Semnal dreptunghiular periodic cu 
% Perioada: 2 s. 
% Factor de umplere: 25%
% Nivel maxim: +0.5. 
% Nivel minim: -1. 

y=0.0002; %initializam rezolutia temporara cu 0.2ms
for i=1:1:3  %intram in bucla de 3 ori pentru a afisa graficul pentru fiecare rezolutie 2ms,20ms,200ms 
y=y*10;      
t=0:y:5;
x=3*square(pi*t,25)/4-0.25; %semnal dreptunghiular perioada 2s si factorul de umplere 25%            
figure(i) %figura1-2ms,figura2-20ms,figura3-200ms
plot(t,x),axis([0 5 -1.9 1.9]),xlabel('Timp (sec)'),ylabel('Amplitudine'),grid
if (i==1)
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
