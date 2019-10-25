function [ m,w,A ] = T1_E3_Camelia_Spac( v )
  a=v.'; %a= transpusul lui v
  A=0;
  for i=1:1:length(v)   % de la 1 cu pas 1 pana la lungimea vectorului v
      A=A+v(1,i).*a(i,1); %fiecare element de pe fiecare coloana a vectorului v este inmultit cu fiecare element de pe fiecare linie a vectorului a si se aduna
  end
  m=sum(real(v))/length(v) %media aritmetica a partilor reale ale lui v
  w=v.^2  %ridicarea la patrat a lui v
  A      %matricea A=v*vtranspus
  clear %stergem din memorie
end

