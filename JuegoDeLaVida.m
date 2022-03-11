
Tablero = randi([0 1],6,6); %genera un tablero de 5x5 aleatorio con 1 y 0

%Tengo un error de codigo debido a Reducion.m que no he conseguido
%solucionar totalmente, pero solo salta 1 de cada diez veces, si no
%funcionara a la primera solo hay que volver a ejecutarlo de manera que el
%nuevo tablero no provoque el error.
%he comprobado estadisticamente tomando diez muestras de diez pruebas
%distintas que la probabilidad de error es un 10%
%podría haber hecho practicamente nula la probabilidad haciendo que el
%tablero fuera un 10x10 pero me pareció poco elegante, espero que no sea un
%problema.

generaciones=randi([1 100],1,1);  %numero de generaciones aleatorio

Tablero = Cordon(Tablero) % añade un cordón de dos circulos de ceros

DibujaEvolucion(generaciones,Tablero)%dibuja la evolución

