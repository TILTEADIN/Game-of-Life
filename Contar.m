function [vecinos] = Contar(i,j,Tablero)
vecinos = Tablero(i-1,j-1)+ Tablero(i-1,j)+ Tablero(i-1,j+1)+ Tablero(i,j-1)+ Tablero(i,j+1)+ Tablero(i+1,j-1)+ Tablero(i+1,j)+ Tablero(i+1,j+1);
end

