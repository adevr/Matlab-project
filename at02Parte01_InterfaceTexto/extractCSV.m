%extractCSV Função para extrair os dados da tabela para csv
%
%Argumentos:
%   headers - vetor que tem os headers da tabela atual
%   handles - identificador da informação da tabela
%Retorno: 
%   ficheiro csv com o nome e localização escolhido pelo utilizador
%Finalizada a: 03/05/2019
%Modificado por: AlexandreReis      - a21280926@alunos.isec.pt
%                Celso Jordão       - a21130067@alunos.isec.pt
%                Fábio CapoBianchi  - a21280924@alunos.isec.pt

function csv = extractCSV(headers, handles)

fileDir=uigetdir('','Selecciona a pasta para guardar o teu CSV');
csvDetail=inputdlg({'Filename:'},...
                            'CSV workbook details',1,{'Test.csv'}) ;  
if ismac
    fileName  = [fileDir,'/',csvDetail{1}];
elseif isunix
    fileName  = [fileDir,'/',csvDetail{1}];
elseif ispc
    fileName  = [fileDir,'\',csvDetail{1}];
else
    warndlg('Sistema Operativo não suportado');
end


commaHeader = [headers;repmat({','},1,numel(headers))];
commaHeader = commaHeader(:)';
textHeader = cell2mat(commaHeader);


        
fp = fopen(fileName, 'w');
fprintf(fp,'%s\n',textHeader);
fclose(fp);
dlmwrite(fileName, handles, '-append');
