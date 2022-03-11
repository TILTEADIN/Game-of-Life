function [v] = Evolucion(generaciones,Tablero)

    for i= 1 : generaciones 

            TableroFin=Reglas(Tablero); %Aplica la función reglas al tablero
            Tablero=TableroFin; %Restablece el tablero inicial, cambaindolo por el último          
            v{i}=TableroFin; %Almacena en un vector todos los tableros
            
    end
    


end

