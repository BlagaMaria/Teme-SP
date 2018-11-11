T=4;
%perioada este aceeasi pentru cele 3 cazuri
%primul caz : rezolutie temporara de 2 ms
t=0:0.002:4*T; %t porneste de la 0 (valoarea initiala),cu pasul de 0.002
%pana la 4*T (valoarea finala), afisand 4 perioade
f=1/T; %frecventa
w=2*pi*f; %pulsatia semnalului
A=1.5; %amplitudinea semnalului 
s=A*abs(sin(w*t));
subplot(3,1,1) %graficul este afisat in prima treime din figura
plot(t,s) %se reprezinta grafic s in functie de t
xlabel('t[s]') %textul devine eticheta de pe abscisa
ylabel('A[V]') %textul devine eticheta de pe ordonata
title('semnal sinusoidal redresat dublu alternanta cu rezolutie temporara de 2 ms')
%plaseaza deasupra graficului, ca titlu, textul din paranteze
grid;
%traseaza pe grafic o retea de linii, înlesnind astfel citirea graficului


%al doilea caz : rezolutie temporara de 20 ms
t=0:0.02:4*T;
f=1/T;
w=2*pi*f;
A=1.5;
s=A*abs(sin(w*t));
subplot(3,1,2) %graficul este afisat in a doua treime din figura
plot(t,s)
xlabel('t[s]')
ylabel('A[V]')
title('semnal sinusoidal redresat dublu alternanta cu rezolutie temporara de 20 ms')
grid;


%al treilea caz : rezolutie temporara de 200 ms
t=0:0.2:4*T;
f=1/T;
w=2*pi*f;
A=1.5; 
s=A*abs(sin(w*t));
subplot(3,1,3) %graficul este afisat in a treia treime din figura
plot(t,s)
xlabel('t[s]')
ylabel('A[V]')
title('semnal sinusoidal redresat dublu alternanta cu rezolutie temporara de 200 ms')
grid;
%am folosit functia subplot pentru a incadra graficele pentru toate
%rezolutiile intr-o singura figura
%pentru semnalul sinusoidal redresat dublu alternanta am folosit formula
%pentru valoarea medie absoluta a tensiunii redresate 
%u(t)=A*|u(t)|
%iar cum semnalul este sinusoidal u(t)= sin(2*pi*f*t)
%in cazul semnalului sinusoidal dublu alternanta 
%portiunile negative ale semnalului sunt convertite in pozitiv