%%
%Algoritmo propio de Transformada Inversa


function mi_ifft
close all;
clear all;
clc;

y=input('Ingrese un vector a antitransformar ');
N=input('Ingrese el tamaño ');

subplot (3,1,1);
stem(y);
xlabel('Tiempo');
ylabel('A');
title('Vector de entrada');
%%

%Transformada de Fourier

 %y=zeros(1,N);
%Inicializamos la variable que hace la sumatoria
N= length(y)
N1=N;
y0=zeros(1,N1);  
Sum=0; 
for k=1:N1 
     for x=1:N       
         Sum=Sum+y(x)*exp(-2*pi*1i*(x-1)*(k-1)/N1);
     end
     
 y0(k)=Sum; 
subplot (3,1,2);
stem(abs(y0));
title('Transformada de Fourier');

Sum=0% Vaciar variable para la sumatoria de la transformada inversa
 end
% Transformada inversa de Fourier
 
 y1=zeros(1,N1);
 Sum= 0;
 for k=1:N1
     for x=1:N        
         Sum= Sum+y0(x)*exp(2*pi*1i*(x-1)*(k-1)/N1);%Tomar variable en la que se guardó la transformada para hacer ifft
         end
 y1(k)=Sum;
 Sum=0;
 end
 y1 = y1/N %Adecuar magnitud de cada muestra

 subplot (3,1,3);
stem(real(y1));
title('Antitransformada de Fourier');

end

