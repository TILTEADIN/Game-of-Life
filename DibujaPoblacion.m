function [] = DibujaPoblacion(TableroSiguiente)

[filas,columnas]=size(TableroSiguiente);
            for i= 1:filas 
                for j=1:columnas
                    hold on 
                    if TableroSiguiente(i,j)==1
                        estado=1;
                    DibujaCelula(i,j,estado)

                    else
                    estado=0;
                    DibujaCelula(i,j,estado)

                    end
                    hold off
                end
            end
end
