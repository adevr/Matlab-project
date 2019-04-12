function matriz2Excel(Excel,matriz,dLinhas,dColunas)
    tamanho = size(matriz);
    
    if(nargin-4)
        dColunas = 0;
        if(nargin-3)
           dLinhas = 0; 
        end
    end
    Excel.ActiveSheet.Range([indiceExcel(1 + dLinhas,1 + dColunas) ':' indiceExcel(tamanho(1)+ dLinhas,tamanho(2)+ dColunas)]).Value = matriz;

%-------------------------------------------------------------------
%
%-------------------------------------------------------------------    
function str = indiceExcel(linha,coluna)
% O Problema do excel reside na base da coluna pois não possui digito zero
% não é base 26 nem 27
    
    coluna = coluna - 1;
    %está aqui implícito um ciclo mais tarde tenho de resolver isto 
    %mas agora serve
    if(coluna < 26 )
        str = char (65 + coluna);
    elseif(coluna >= 26 & coluna < 26*(26 + 1))
        straux = base26(26*(26 - 1) + coluna);
        straux = straux(2:3); %remoção do digito mais significativo
        str    = char (65 + straux);
    else  
        if(coluna >= 26*(26+1) & coluna < 26*(26*(26 + 1) + 1))
            straux = base26(26*(26*(26 - 1) - 1) + coluna);
            straux = straux(2:4);
            str = char (65 + straux);
        else
            straux = base26(26*(26*(26*(26 - 1) - 1) - 1) + coluna);
            straux = straux(2:5);
            str    = char (65 + straux);
        end 
    end
    str =[str num2str(linha)];

%-------------------------------------------------------------------
%
%-------------------------------------------------------------------
function strInt = base26(x)
     
    i=1;  
    while(1),
        [x,strInt(i)] = divInt(x,26);               
        i = i + 1;
        if(~x) break; end;
    end
    pmedio = divInt(size(strInt,2),2); %inversão do vector
    for i = 1:pmedio,
        a = strInt(i);
        strInt(i) = strInt(size(strInt,2) + 1 - i);
        strInt(size(strInt,2) + 1 - i) = a;
    end
%-------------------------------------------------------------------
%
%-------------------------------------------------------------------   
function [q,r]= divInt(D,d)
    
    q = floor(D/d);
    r = rem  (D,d); 
    