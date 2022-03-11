function [Tablero] = Cordon(Tablero)

[filas,columnas]=size(Tablero);
Tablero=[zeros(filas,2) , Tablero];
[filas,columnas]=size(Tablero);
Tablero=[Tablero, zeros(filas,2) ];
[filas,columnas]=size(Tablero);
Tablero=[zeros(2,columnas) ; Tablero];
[filas,columnas]=size(Tablero);
Tablero=[ Tablero;zeros(2,columnas)];

end

