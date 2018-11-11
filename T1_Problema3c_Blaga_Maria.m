%c) {-5,-3,-1,1,3,5}
%pentru rezolutie temporara de 2 ms
hold on; % functie carea asigura reprezentarea  semnalelor  pe aceeasi figura
A1=rand(1);
A2=rand(1);
A3=rand(1);
A4=rand(1);
A5=rand(1);
A6=rand(1);
t=0:0.002:0.25;
x1=A1*square(2*pi*4*t,100);% factorul de umplere 100 pentru a pastra un nivel constant
x2=-A2*square(2*pi*4*t,100);
x3=3*A3*square(2*pi*4*t,100);
x4=-3*A4*square(2*pi*4*t,100);
x5=5*A5*square(2*pi*4*t,100);
x6=-5*A6*square(2*pi*4*t,100);
plot(t,x1);
plot(t-0.25,x2);%am deplasat al doilea semnal pentru a-l pozitiona la stanga primului
plot(t+0.25,x3);
plot(t-0.5,x4);
plot(t+0.5,x5);
plot(t-0.75,x6);
subplot(3,1,1)
xlabel('t[s]')
ylabel('A[V]')
title('Semnal dreptunghiular multinivel aleator')


hold on; % functie carea asigura reprezentarea  semnalelor  pe aceeasi figura
A1=rand(1);
A2=rand(1);
A3=rand(1);
A4=rand(1);
A5=rand(1);
A6=rand(1);
t=0:0.02:0.25;
x1=A1*square(2*pi*4*t,100);% factorul de umplere 100 pentru a pastra un nivel constant
x2=-A2*square(2*pi*4*t,100);
x3=3*A3*square(2*pi*4*t,100);
x4=-3*A4*square(2*pi*4*t,100);
x5=5*A5*square(2*pi*4*t,100);
x6=-5*A6*square(2*pi*4*t,100);
plot(t,x1);
plot(t-0.25,x2);%am deplasat al doilea semnal pentru a-l pozitiona la stanga primului
plot(t+0.25,x3);
plot(t-0.5,x4);
plot(t+0.5,x5);
plot(t-0.75,x6);
subplot(3,1,2)
xlabel('t[s]')
ylabel('A[V]')
title('Semnal dreptunghiular multinivel aleator')  


%pentru rezolutie temporara de 200 ms
hold on; % functie carea asigura reprezentarea  semnalelor  pe aceeasi figura
A1=rand(1);
A2=rand(1);
A3=rand(1);
A4=rand(1);
A5=rand(1);
A6=rand(1);
t=0:0.2:0.25;
x1=A1*square(2*pi*4*t,100);% factorul de umplere 100 pentru a pastra un nivel constant
x2=-A2*square(2*pi*4*t,100);
x3=3*A3*square(2*pi*4*t,100);
x4=-3*A4*square(2*pi*4*t,100);
x5=5*A5*square(2*pi*4*t,100);
x6=-5*A6*square(2*pi*4*t,100);
plot(t,x1);
plot(t-0.25,x2);%am deplasat al doilea semnal pentru a-l pozitiona la stanga primului
plot(t+0.25,x3);
plot(t-0.5,x4);
plot(t+0.5,x5);
plot(t-0.75,x6);
subplot(3,1,3)
xlabel('t[s]')
ylabel('A[V]')
title('Semnal dreptunghiular multinivel aleator')