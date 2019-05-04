function csv = extractCSV(headers, handles)

fileDir=uigetdir('','Selecciona a pasta para guardar o teu CSV');
csvDetail=inputdlg({'Filename:'},...
                            'CSV workbook details',1,{'Test.csv'}) ;  
fileName  = [fileDir,'/',csvDetail{1}];

commaHeader = [headers;repmat({','},1,numel(headers))];
commaHeader = commaHeader(:)';
textHeader = cell2mat(commaHeader);


        
fp = fopen(fileName, 'w');
fprintf(fp,'%s\n',textHeader);
fclose(fp);
dlmwrite(fileName, handles, '-append');