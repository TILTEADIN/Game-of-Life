function [TableroSiguiente] = Expansion(TableroSiguiente)
[filas,columnas]=size(TableroSiguiente);

%ver comentario en Reducion.m%
%al contrario que en reducion aqu? no existe un caso posible en el que haya
%que usar un bucle while
    if length(find(TableroSiguiente([1,2],:)==1))>0
         TableroSiguiente=[zeros(1,columnas) ; TableroSiguiente]; %% A?ADE CEROS ARRIBA
         [filas,columnas]=size(TableroSiguiente);
    end
    
        if length(find(TableroSiguiente(:,[1,2])==1))>0
            TableroSiguiente=[zeros(filas,1),TableroSiguiente]; %%A?ADE CEROS A LA IZQUIERDA
            [filas,columnas]=size(TableroSiguiente);  
        end
        
                if length(find(TableroSiguiente([filas-1,filas-2],:)==1))>0
                    TableroSiguiente=[ TableroSiguiente; zeros(1,columnas)]; %%A?ADE CEROS ABAJO
                    [filas,columnas]=size(TableroSiguiente);
                end
                
                    if length(find(TableroSiguiente(:,[columnas-1,columnas-2])==1))>0                   
                        TableroSiguiente=[TableroSiguiente,zeros(filas,1)]; %%A?ADE CEROS A LA DERECHA
                        [filas,columnas]=size(TableroSiguiente);

                    end
end

                