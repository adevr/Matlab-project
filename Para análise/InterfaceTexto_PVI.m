% Interface (vers?o 2) para os PVI
% Aplica??o dos M?todos Num?ricos de Euler e de Runge-Kutta
% 
% Autores: Arm?nio Correia & Jo?o Pedro Alves
% Data: 21/10/2009
% Modificado por: Arm?nio Correia
% Data: 10/10/2013

clc;
clear;
primeira = 1;
opcao = 1;
while opcao ~= 6 
    clc;
    disp('M?TODOS NUM?RICOS PARA PVI');
    disp(' ');
    if(~primeira)
        fprintf ('1. INTRODUZIR PAR?METROS DO PVI\n');     
        fprintf ('2. M?TODO DE EULER\n'); 
        fprintf ('3. M?TODO DE RK2\n');
        fprintf ('4. M?TODO DE RK4\n');
        fprintf ('5. APLICAR OS 3 M?TODOS EM SIMULT?NEO\n');
        fprintf ('6. TERMINAR\n\n');
        opcao = input('Op??o: ');
    else
            opcao    = 1;
            primeira = 0;
     
    end
    
    y = [];
    switch opcao
        case 1
              strF = input('\nINTRODUZIR A FUN?A0 f(t,y) = ','s');
              f    = @(t,y) eval(vectorize(t, y));
              while(1)
                try
                    strA = input('\nQUAL O VALOR PARA a = ','s');
                    a    = str2double(strA);
                catch ME
                end
                if isscalar(a) 
                    break; 
                end;
              end
              while(1)
                try
                    strB = input('\nQUAL O VALOR PARA b = ','s');
                    b    = str2double(strB);
                catch ME
                end
                if (isscalar(b) && b > a) 
                    break;
                end;
              end
              while (1)
                  try
                    strN = input('\nQUAL O VALOR PARA n = ','s');
                    n    = str2double(strN);
                  catch ME
                  end
                  if (isscalar(n) && n == floor(n) && n > 0) 
                      break;
                  end
              end
              while(1)
                try 
                    strY0 = input('\nQUAL O VALOR DE y0 = ', 's');
                    y0    = str2double(strY0);
                catch ME
                end
                if isscalar(y0) 
                    break; 
                end
                
              end
              
        case 2 
            y = N_Euler(f, a, b, n, y0);
            h = (b-a) / n;
            t(1) = a;
            y(1) = y0;
            for i= 1:n
                y(i+1) =y(i) + h*f(t(i), y(i));
                t(i + 1) = t(i) + h;
            end;

                        
        case 3  
              %y = N_RK2(f,a,b,n,y0);
                         
        case 4
              %y = N_RK4(f,a,b,n,y0);
              
        case 5
              %y = m_numericos_PVI(f,a,b,n,y0);          
    end
    
    if  isempty(y)
        disp(' ');
        disp('AS APROXIMA??ES OBTIDAS S?O:');
        disp(' ');
        disp(y); 
    end
    if opcao ~= 6
        tecla = input('\nPrima uma tecla para continuar ...');
    end
end
    
