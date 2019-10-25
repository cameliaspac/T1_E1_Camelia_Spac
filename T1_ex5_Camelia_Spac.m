% Semnal sinusoidal redresat dubla alternanta 
% Perioada semnalului sinusoidal neredresat: 4 s. 
% Amplitudine: 1.5.

rez1=-20:0.002:20;
rez2=-20:0.02:20;
rez3=-20:0.2:20;

T=4;
A=1.5;
w=2*pi/T;

nr=1;
for i=rez1
    if (A*sin(w*i)>0)
        y1(nr)=A*sin(w*i);
    else
        y1(nr)=-A*sin(w*i);
    end
    nr=nr+1;
end

nr=1;
for i=rez2
    if (A*sin(w*i)>0)
        y2(nr)=A*sin(w*i);
    else
        y2(nr)=-A*sin(w*i);
    end
    nr=nr+1;
end

nr=1;
for i=rez3
    if (A*sin(w*i)>0)
        y3(nr)=A*sin(w*i);
    else
        y3(nr)=-A*sin(w*i);
    end
    nr=nr+1;
end

figure(1)
subplot(3,1,1)
plot(rez1,y1),grid,title('Rezolutie 2ms'),xlabel('Timp (sec)'),ylabel('Amplitudine')
axis([-6 6 -3 3])
subplot(3,1,2)
plot(rez2,y2),grid,title('Rezolutie 20ms'),xlabel('Timp (sec)'),ylabel('Amplitudine')
axis([-6 6 -3  3])
subplot(3,1,3)
plot(rez3,y3),grid,title('Rezolutie 200ms'),xlabel('Timp (sec)'),ylabel('Amplitudine')
axis([-6 6 -3 3])

