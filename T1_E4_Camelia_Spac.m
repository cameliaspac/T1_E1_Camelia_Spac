z=zeros(1,21); %initializam vectorul cu zerouri
z(1,6)=1;  %selectam pozitia 6 si punem in ea valoarea 1
n=0:20;
m=-5:15;
figure(1);  %figura pentru subpunctu a)
subplot(2,1,1),stem(n,z),xlabel('n'),grid,axis([0 20 min(z) max(z)])
subplot(2,1,2),stem(m,z),xlabel('m'),grid,axis([-5 15 min(z) max(z)])

t=abs(10-n);
figure(2); %figura pentru subpunctul b)
stem(n,t),xlabel('n'),grid

n=-15:25;
x=sin(pi*n/17);
figure(3); %figura1 pentru c) ambele semnale pe un singur grafic
plot(n,x),grid,xlabel('n'),axis([-15 50 min(x) max(x)]) %alegem axele de la -15 la 50 pentru a cuprinde minumul si maximul n-urilor celor doua semnale
hold on;  %folosim hold on pentru a pastra plot si stem pe grafic
stem(n,x)
hold on; %folosim hold on pentru a pastra primul semnal pe grafic, la care se adauga al doilea cu forma specifica plot, respectiv stem
m=0:50;
y=cos(pi*m/sqrt(23));
plot(m,y),grid,axis([-15 50 min(y) max(y)])
hold on;
stem(m,y)
hold off; 

figure(4); %figura2 pentru c) cele 2 semnale pe grafice diferite
subplot(2,1,1),plot(n,x),xlabel('n'),ylabel('x1'),grid,axis([-15 25 min(x) max(x)]) %fiind pe grafice separate alegem pentru axe minul si maximul n-ului specifice fiecarui semnal
hold on;
stem(n,x)
subplot(2,1,2),plot(m,y),xlabel('n'),ylabel('x2'),grid,axis([0 50 min(y) max(y)])
hold on;
stem(m,y)
clear  %stergem din memorie