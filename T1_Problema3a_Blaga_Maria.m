% a) {-1,1}
%pentru rezolutie temporara de 2 ms
hold on; %functie care asigura reprezentarea semnalelor pe aceeasi figura
A1=rand(1);
A2=rand(1);
t=0:0.002:0.25;
x1=A1*square(2*pi*4*t,100);% factorul de umplere 100 pentru a pastra un 
%nivel constant
x2=-A2*square(2*pi*4*t,100);
plot(t,x1);
plot(t-0.25,x2);%am deplasat al doilea semnal pentru a-l pozitiona la
%stanga primului
subplot(3,1,1)
xlabel(' t[s]')
ylabel(' A[V]')
title('Semnal dreptunghiular multinivel aleator')


%pentru rezoltie temporara de 20 ms
hold on; %functie care asigura reprezentarea  semnalelor  pe aceeasi figura
A1=rand(1);
A2=rand(1);
t=0:0.02:0.25;
x1=A1*square(2*pi*4*t,100);% factorul de umplere 100 pentru a pastra un
%nivel constant
x2=-A2*square(2*pi*4*t,100);
plot(t,x1);
plot(t-0.25,x2);%am deplasat al doilea semnal pentru a-l pozitiona la 
%stanga primului
subplot(3,1,2)
xlabel(' t[s]')
ylabel(' A[V]')
title('Semnal dreptunghiular multinivel aleator')


%pentru rezolitie temporara de 200 ms
hold on; %functie care asigura reprezentarea  semnalelor  pe aceeasi figura
A1=rand(1);
A2=rand(1);
t=0:0.2:0.25;
x1=A1*square(2*pi*4*t,100);% factorul de umplere 100 pentru a pastra un 
%nivel constant
x2=-A2*square(2*pi*4*t,100);
plot(t,x1);
plot(t-0.25,x2);%am deplasat al doilea semnal pentru a-l pozitiona la 
%stanga primului
subplot(3,1,1)
xlabel(' t[s]')
ylabel(' A[V]')
title('Semnal dreptunghiular multinivel aleator')