function [TableroSiguiente] = Reglas(Tablero)
     
        [filas,columnas]=size(Tablero);
            for i= 2:filas-1
                for j=2:columnas-1
                    vivas = Contar(i,j,Tablero);
                    TableroSiguiente(i,j) = [vivas];
                    if vivas==3 % siempre que haya tres vecinas vivas la celula estará viva
                        TableroSiguiente(i,j)=1;
                        estado=1;
                    elseif Tablero(i,j)== 1 && vivas ==2 %si la celula se encuentra viva y le rodean dos vivas
                        TableroSiguiente(i,j)=1;         %en la siguiente gen. estará viva
                        estado=1;
                    else
                        TableroSiguiente(i,j)=0;  %en cualquier otro caso estará muerta en la siguiente gen.
                        estado=0;

                    end
                end
            end

            TableroSiguiente=Expansion(TableroSiguiente); %expande el cordon si hay un uno en él
            TableroSiguiente=Reduccion(TableroSiguiente); %Reduce el cordon si hay tres filas/columnas de ceros
          
          
     end
        

  

