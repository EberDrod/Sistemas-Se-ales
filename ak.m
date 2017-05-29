function ak
disp('Eber Peña /Edwin Valdes');
disp('Sistemas y Señales');
disp('Examen de Recuperación');
ti=input('¿Cual es el tiempo inicial?'); %0
tf=input('¿Cual es el tiempo final?');%10
T=input('¿Cual es el periodo?');%3
pasos =input('¿Cuales son los pasos?');%.01
t=ti:pasos:tf;
t1=t;
xt=zeros(1,length(t)); %Abres el vector 

y=1;
for k=1:1:(tf-ti)/T
    for z=0:pasos:T/4   % Algoritmo listo 
        xt(1,y)=((3*z)/T)+3;
        y=y+1;
    end
    for z=(T/4)+pasos:pasos:(2*T)/4 %Algoritmo Listo
        xt(1,y)=(z*8)/T;%((z*6)/T)-3/2;
        y=y+1;
    end
    for z=((2*T)/4)+pasos:pasos:(3*T)/4 % Algoritmo Listo
        xt(1,y)=((z*2)/T)-3/2;%(z*12 )/T;
        y=y+1;
    end
      for z=((3*T)/4)+pasos:pasos:(4*T)/4 % Algoritmo Listo
        xt(1,y)=12/T;
        y=y+1;
      end
  
end
figure(1)
plot(t1,xt) % Análisis de gráfica
grid on


%%%%%%%%DICretizacion de la Grafica 

