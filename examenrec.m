function examenrec
disp('Eber Gilberto P?rez Pe?a');
disp('Sistemas y Se?ales');
disp('Examen de Recuperacion');
ti=input('Cual es el tiempo inicial?'); %0
tf=input('Cual es el tiempo final?');%10
T=input('Cual es el periodo?');%2
pasos =input('Cuales son los pasos?');%.01
t=ti:pasos:tf;
t1=t;
xt=zeros(1,length(t)); %Abres el vector 
y=1;


for k=1:1:(tf-ti)/T
    for z=0:pasos:T/4   % Algoritmo listo 
        xt(1,y)=z*6/T;
        y=y+1;
    end
    for z=(T/4)+pasos:pasos:(2*T)/4 %Algoritmo Listo
        xt(1,y)=3/2;
        y=y+1;
    end
    for z=((2*T)/4)+pasos:pasos:(3*T)/4 % Algoritmo Listo
        xt(1,y)=((z*6)/T)-3/2;
        y=y+1;
    end
      for z=((3*T)/4)+pasos:pasos:T % Algoritmo Listo
        xt(1,y)=((-12*z)/T)+12;
        y=y+1;
      end
      y=y-1;
  
end
figure(1)
plot(t1,xt) % An?lisis de gr?fica
grid on


%%%%%% DISCRETA %%%%%%%%%%%


n=input('?Cual es el valor de n?   '); % 80 
N0=input('?Cual es el valor de N0?   ');%20
p=0:1:n;
p1=p;
xz=zeros(1,N0);
r=1;
for k=1:1:n/N0
    for n=0:1:N0/4
        xz(1,r)=(n*6)/N0;
        r=r+1;
    end
    for n=(N0/4)+1:1:(2*N0)/4
        xz(1,r)=3/2;
        r=r+1;
    end
    for n=((2*N0)/4)+1:1:(3*N0)/4
        xz(1,r)=((n*6)/N0)-3/2;
        r=r+1;
    end
    for n=((3*N0)/4)+1:1:N0
        xz(1,r)=((-12*n)/N0)+12;
        r=r+1;
    end
    r=r-1;
end
figure(2)
stem(p1,xz)
grid on



