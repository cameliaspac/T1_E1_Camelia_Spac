a=0:0.1:2;  % a porneste de la 0 cu pasul 0.1 pana la 2
b=ones(1,21); %vectorul a are 21 de elemente=> b va avea tot 21 pentru a fi posibila inmultirea
b=b(:);  %vectorul b este coloana
A=0;
B=0;
for i=1:1:length(a) ; % de la 1 cu pas 1 pana la lungimea vectorului a
      A=A+a(1,i).*b(i,1);  %fiecare element de pe fiecare coloana a vectorului a este inmultit cu fiecare element de pe fiecare linie a vectorului b si se aduna
end
A  %A=a*b
for i=1:1:length(b)  % de la 1 cu pas 1 pana la lungimea vectorului b
    B=B+b(i,1).*a(1,i); %fiecare element de pe fiecare linie a vectorului b este inmultit cu fiecare element de pe fiecare coloana a vectorului a 
end
B
clear %stergem din memorie
       