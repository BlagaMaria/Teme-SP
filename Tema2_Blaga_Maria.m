T=40; %perioada data din cerinta
f=1/T; %frecventa
w=2*pi*f; %pulsatia semnalului
rez=.001; %pasul
t=0:rez:4*T; %reprezentam patru perioade
N=50; %numarul de coeficienti
duty=3/T*100; %factorul de umplere calculeaza cat la suta inseamna 3 (durata este D=3 (a treia la catalog))
x=(1+square(w*t,duty))/2; %am adunat un 1 si am impartit la 2 pentru ca
%amplitudinea semnalului sa ia valori intre 0 si 1
%calculam coeficientii Fourier conform formulei:
for k = -N:N
    C(k+N+1) = 1/T * integral(@(t)((1+square(w*t,duty))/2).*exp(-1i*k*w*t),0,T) ;
    %C(k+N+1) deoarece indicii trebuie sa fie pozitivi
    %@(t) <=> dt
end
%calculam seria trunchiata:
sum = 0;
for k = -N:N
    sum = sum + C(k+N+1)*exp(1i*k*w*t) ;
end
figure(1); %pentru reprezentarea mai multor grafice în ferestre separate
%reprezentam spectrul de amplitudini
hold on % reþine graficul curent ºi adaugã în aceeaºi fereastrã graficã 
%urmãtoarele reprezentãri grafice. 
for k=-N:N
stem(k*w,2*abs(C(k+N+1)),'.g'); %Ak=2*|Ck|
end %stem este o functie ce reprezinta o anumita valoare
%printr-un segment pornind de pe axa Ox (realizeazã o reprezentare în formã
%“discretã” a datelor. )
xlabel('fk');
ylabel('Ak');
title('Spectrul de amplitudini');
hold off %dacã se doreºte în continuare reprezentarea în ferestre grafice
%separate (dezactiveazã comanda hold on). 
figure(2);
%reprezentam cele doua semnale (initial si reconstruit prin serie Fourier)
hold on
plot(t,real(sum),'-.r'); %partile imaginare ar fi ignorate daca instructiunea ar fi plot(t,sum)
plot(t,x);
xlabel('t[s]');
title('Semnalul initial (albastru) si Semnalul reconstruit (rosu)');
hold off
%Observam din grafic ca seria Fourier, trunchiata la un numar adecvat de 
%termeni, este o buna aproximare pentru semnalul teoretic
%Acest lucru este util pentru reconstruirea unui semnal atunci cand
%dispunem de un spectru de amplitudini masurat la aparat

%Analiza Fourier a semnalelor analogice si anume continue ne permite
%sa exprimam orice semnal ce indeplineste criteriul de suficienta Diriclet
%intr-o suma finita de semnale elementare ceea ce este util in
%analiza usoara a circuitelor in domeniul fazorial sau construirea unui
%semnal necunoscut pe baza spectrului sau de amplitudini si de faze ce pot
%fi aflate cu un analizator de spectru.