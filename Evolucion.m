function [v] = Evolucion(generaciones,Tablero)

    for i= 1 : generaciones 

            TableroFin=Reglas(Tablero); %Aplica la funci�n reglas al tablero
            Tablero=TableroFin; %Restablece el tablero inicial, cambaindolo por el �ltimo          
            v{i}=TableroFin; %Almacena en un vector todos los tableros
            
    end
    


end

