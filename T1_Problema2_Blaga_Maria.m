T=5;
%perioada este aceeasi pentru cele 3 cazuri
%primul caz : rezolutie temporara de 2 ms
t=0:0.002:4*T; %t porneste de la 0 (valoarea initiala),cu pasul de 0.002
%pana la 4*T (valoarea finala), afisand 4 perioade
f=1/T; %frecventa
w=2*pi*f; %pulsatia semnalului
maxim=1; %valoarea maxima a amplitudinii
minim=-2; %valoarea minima a amplitudinii
cc=abs(maxim-abs(minim))/2; %componenta continua ( se ia cu semnul '-' 
%fiindca semnalul e deplasat in jos )
A=(maxim+abs(minim))/2; %amplitudinea semnalului (1.5)
tr=(A*sawtooth(w*t,0.5))-cc; %am folosit sawtooth pentru ca avem un semnal 
%triunghiular
subplot(3,1,1) %graficul este afisat in prima treime din figura
plot(t,tr) %se reprezinta grafic d in functie de t
xlabel('t[s]') %textul devine eticheta de pe abscisa
ylabel('A[V]') %textul devine eticheta de pe ordonata
axis([0 20 -2.1 1.1]) 
%pe abscisa se va vizualiza intre valorile 0 si 20
%pe ordonata se va vizualiza intre valorile  -2.1 si 1.1
%am pornit de la -2.1 pentru a nu se suprapune semnalul pe axe si sa poata
%fi vizibil
title('semnal triunghiular periodic cu rezolutie temporara de 2 ms')
% plaseaza deasupra graficului, ca titlu, textul din paranteze
grid;
%traseaza pe grafic o retea de linii, înlesnind astfel citirea graficului


%al doilea caz : rezolutie temporara de 20 ms
t=0:0.02:4*T;
f=1/T;
w=2*pi*f;
minim=-2;
maxim=1;
cc=abs(maxim-abs(minim))/2;
A=(maxim+abs(minim))/2;
tr=(A*sawtooth(w*t,0.5))-cc;
subplot(3,1,2) %graficul este afisat in a doua treime din figura
plot(t,tr)
xlabel('t[s]')
ylabel('A[V]')
axis([0 20  -2.1 1.1])
title('semnal triunghiular periodic cu rezolutie temporara de 20 ms')
grid;


%al treilea caz : rezolutie temporara de 200 ms
t=0:0.2:4*T;
f=1/T;
w=2*pi*f;
minim=-2;
maxim=1;
cc=abs(maxim-abs(minim))/2;
A=(maxim+abs(minim))/2;
tr=(A*sawtooth(w*t,0.5))-cc;
subplot(3,1,3) %graficul este afisat in a treia treime din figura
plot(t,tr)
xlabel('t[s]')
ylabel('A[V]')
axis([0 20 -2.1 1.1])
title('semnal triunghiular periodic cu rezolutie temporara de 200 ms')
grid;
%am folosit functia subplot pentru a incadra graficele pentru toate
%rezolutiile intr-o singura figura
