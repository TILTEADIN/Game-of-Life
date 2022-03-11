function [G]= DibujaEvolucion (generaciones,Tablero)

    v=Evolucion(generaciones,Tablero); %Almaceno en v el resultado de la funcion evolucion para 
                                       %usarlo más tarde

    for i= 1:generaciones
        DibujaPoblacion(v{i})   %Hace un dibujo de la población en cada vueltaa del bucle, es decir, uno por generación
        title('Juego de la Vida') 
        [filas,columnas]=size(v{i}); %obtengo el tamaño de la matriz      
        axis([0 filas+1 0 columnas+1]) % uso el tamaño de la matriz para crear unos ejes siempre mayores en una ud que la matriz
        %no he sido capaz de identificar el error por el cual la matriz
        %sobresale los ejes
              
                                 
               if length(find(v{i}==1))==0  %en el caso de que la matriz sean todo 0s parará de montrar imagenes
                   pause(2)
                   clf
                   break;
               end
               pause(0.05);
               clf
              
               
              
               
            
  
    end
end

