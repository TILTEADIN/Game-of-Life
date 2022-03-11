
function [] = DibujaCelula(i,j,estado)
x=[i-0.5 i-0.5 i+0.5 i+0.5 i-0.5];
y=[j+0.5 j-0.5 j-0.5 j+0.5 j+0.5];
    if estado == 1
        celula=fill(x,y,'k');
    else 
        celula=fill(x,y,'w');
    end
end


