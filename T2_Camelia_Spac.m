N=50; % numarul de coeficienti
P=40; % perioada                                                       
D=22; % durata de crestere                                                        
w0=2*pi/P; % pulsatie
t_initial=0:0.02:D; % esantionarea semnalului initial

% generam semnalul triunghiular initial
x_initial= sawtooth((pi/2)*t_initial,0.5)/2+0.5; 
t=0:0.02:P; % esantionarea semnalului reconstruit
x = zeros(1,length(t)); % initializarea vectorului x cu zerouri
x(t<=D)=x_initial; % inlocuim valorile nule cu cele din semnalul initial, cu conditia t<=D

figure(1);
plot(t,x);% afisarea semnalului x(t)
title('x(t)(linie solida) si reconstructia (linie punctata)');
hold on;

% k reprezinta variabilia dupa care se face suma
for k = -N:N
    x_t = x_initial; %x_t este semnalul realizat cu formula SF
    x_t = x_t .* exp(-j*k*w0*t_initial); % vectorul ce trebuie integrat
    X(k+N+1)=0;% initializarea 

    for i = 1: length(t_initial)-1
        X(k+N+1) = X(k+N+1) + (t_initial(i+1)-t_initial(i))* (x_t(i)+x_t(i+1))/2; % integrare folosind metoda dreptunghiurilor
    end
end

for i = 1: length(t)
    x_reconstruit(i) = 0;% initializarea elementelor vectorului reconstruit
    for k=-N:N
        x_reconstruit(i) = x_reconstruit(i) + (1/P)*X(k+N+1)*exp(j*k*w0*t(i));% calcularea sumei
    end
end

plot(t,x_reconstruit,'--');% afisarea semnalului reconstruit cu linie punctata pe acelasi grafic cu semnalul original
figure(2);

w=-50*w0:w0:50*w0;% generarea vectorului de pulsatii corespunzatoare coeficientilor Xk
stem(w/(2*pi),abs(X));% afisarea spectrului de amplitudini
title('Spectrul de amplitudini al semnalului')


% Orice semnal periodic poate fi descris de o suma de cos si sin, inmultite
% cu coeficienti corespunzatori. Acesti coeficienti constituie spectrul.
% Semnalul reconstruit se apropie de forma semnalului initial, avand o
% marja de eroare din cauza folosirii unui numar finit de coeficienti( in
% cazul nostru 50). Pe masura ce folosim mai multi coeficienti ai seriei
% Fourier, semnalul reconstruit se apropie din ce in ce mai mult de
% semnalul initial.