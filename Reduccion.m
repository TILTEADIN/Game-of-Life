function [TableroSiguiente] = Reduccion(TableroSiguiente)
[filas,columnas]=size(TableroSiguiente);
while length(find(TableroSiguiente([filas-2:filas],:)==1))<1 
    % Hago uso de while en vez de for porque si se diese el caso de que de repente desaparecen 4 filas de unos dos de ellas deberían ser eliminadas y no solo una  
    TableroSiguiente=TableroSiguiente(1:filas-1,:); %%quita una de ceros abajo
    [filas,columnas]=size(TableroSiguiente);
end
        while length(find(TableroSiguiente([1:3],:)==1))<1
            TableroSiguiente=TableroSiguiente(2:filas,:); %%quita ceros arriba
            [filas,columnas]=size(TableroSiguiente);
        end
            
             while length(find(TableroSiguiente(:,[1,3])==1))<1
               TableroSiguiente=TableroSiguiente(:,2:columnas); %%quita ceros izquierda
                [filas,columnas]=size(TableroSiguiente);
            end
                
                    while length(find(TableroSiguiente(:,[columnas-2,columnas])==1))<1
                         
                          TableroSiguiente=TableroSiguiente(:,1:columnas-1) %%quita ceros derecha
                          [filas,columnas]=size(TableroSiguiente);
                    end
end
            
                               
    
    
    
           