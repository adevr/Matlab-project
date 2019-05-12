% Interface (versão 2) para os PVI
% Aplicação dos Métodos Numéricos de Euler e de Runge-Kutta
%
% Autores: Arménio Correia & João Pedro Alves
% Data: 21/10/2009
% Modificado por: Arménio Correia
% Data: 10/10/2013

clear;
primeira = 1;
opcao = 1;
while opcao ~= 6
    clc;
    disp('MÉTODOS NUMÉRICOS PARA PVI');
    disp(' ');
    if(~primeira)
        fprintf ('1. INTRODUZIR PARÂMETROS DO PVI\n');
        fprintf ('2. MÉTODO DE EULER\n');
        fprintf ('3. MÉTODO DE RK2\n');
        fprintf ('4. MÉTODO DE RK4\n');
        fprintf ('5. APLICAR OS 3 MÉTODOS EM SIMULT�NEO\n')
        fprintf ('6. TERMINAR\n\n');
        opcao = input('Opção: ');
    else
        opcao    = 1;
        primeira = 0;
    end

    y = [];
    switch opcao
        case 1
              strF = input('\nINTRODUZIR A FUNÇÃ0 f(t,y) = ','s');
              f    = @(t,y) eval(vectorize(strF));
              while(1)
                try
                    strA = input('\nQUAL O VALOR PARA a = ','s');
                    a    = str2num(strA);
                end
                if isscalar(a) break; end;
              end
              while(1)
                try
                    strB = input('\nQUAL O VALOR PARA b = ','s');
                    b    = str2num(strB);
                end
                if (isscalar(b) && b > a) break; end;
              end
              while (1)
                  try
                    strN = input('\nQUAL O VALOR PARA n = ','s');
                    n    = str2num(strN);
                  end
                  if (isscalar(n) && n == floor(n) && n > 0) break; end;
              end
              while(1)
                try
                    strY0 = input('\nQUAL O VALOR DE y0 = ', 's');
                    y0    = str2num(strY0);
                end
                if isscalar(y0) break; end;

              end
        case 2
              y = N_euler(f,a,b,n,y0);

        case 3
              %y = N_RK2(f,a,b,n,y0);

        case 4
              %y = N_RK4(f,a,b,n,y0);

        case 5
              %y = m_numericos_PVI(f,a,b,n,y0);
    end

    if ~isempty(y)
        disp(' ');
        disp('AS APROXIMAÇÕES OBTIDAS SÃO:');
        disp(' ');
        disp(y);
    end
    if opcao ~= 6
        tecla = input('\nPrima uma tecla para continuar ...');
    end
end
