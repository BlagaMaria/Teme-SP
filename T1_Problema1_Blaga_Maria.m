T=2;
%perioada este aceeasi pentru cele 3 cazuri
%primul caz : rezolutie temporara de 2 ms
t=0:0.002:4*T; %t porneste de la 0 (valoarea initiala),cu pasul de 0.002
%pana la 4*T (valoarea finala), afisand 4 perioade
f=1/T; %frecventa
w=2*pi*f; %pulsatia semnalului
duty=25; %factorul de umplere
maxim=0.5; %valoarea maxima a amplitudinii
minim=-1; %valoarea minima a amplitudinii
cc=0.25; %componenta continua ( se ia cu semnul '-' fiindca semnalul e
%deplasat in jos )
A=(maxim+abs(minim))/2; %amplitudinea semnalului ( 0.75 )
d=(A*square(w*t,duty))-cc; %am folosit square pentru ca avem un semnal 
%dreptunghiular
subplot(3,1,1) %graficul este afisat in prima treime din figura
plot(t,d) %se reprezinta grafic d in functie de t
xlabel('t[s]') %textul devine eticheta de pe abscisa
ylabel('A[V]') %textul devine eticheta de pe ordonata
axis([0 8 -1.2 0.8]) 
%pe abscisa se va vizualiza intre valoriele 0 si 8 
%pe ordonata se va vizualiza intre valorile  -1.2 si 0.8
%am pornit de la -1.2 pentru a nu se suprapune semnalul pe axe si sa poata
%fi vizibil
title('semnal dreptunghiular periodic cu rezolutie temporara de 2 ms')
% plaseaza deasupra graficului, ca titlu, textul din paranteze
grid;
%traseaza pe grafic o retea de linii, înlesnind astfel citirea graficului


%al doilea caz : rezolutie temporara de 20 ms
t=0:0.02:4*T;
f=1/T;
w=2*pi*f;
duty=25;
minim=-1;
maxim=0.5;
cc=0.25;
A=(maxim+abs(minim))/2;
d=(A*square(w*t,duty))-cc;
subplot(3,1,2) %graficul este afisat in a doua treime din figura
plot(t,d)
xlabel('t[s]')
ylabel('A[V]')
axis([0 8 -1.1 0.8])
title('semnal dreptunghiular periodic cu rezolutie temporara de 20 ms')
grid;


%al treilea caz : rezolutie temporara de 200 ms
t=0:0.2:4*T;
f=1/T;
w=2*pi*f;
duty=25;
minim=-1;
maxim=0.5;
cc=0.25;
A=(maxim+abs(minim))/2;
d=(A*square(w*t,duty))-cc;
subplot(3,1,3) %graficul este afisat in a treia treime din figura
plot(t,d)
xlabel('t[s]')
ylabel('A[V]')
axis([0 8 -1.1 0.8])
title('semnal dreptunghiular periodic cu rezolutie temporara de 200 ms')
grid;
%am folosit functia subplot pentru a incadra graficele pentru toate
%rezolutiile intr-o singura figura

