function varargout = GUI_PVI_act02_Excel(varargin)
% GUI_PVI_act02_Excel M-file for GUI_PVI_act02_Excel.fig
%      GUI_PVI_act02_Excel, by itself, creates a new GUI_PVI_act02_Excel or raises the existing
%      singleton*.
%
%      H = GUI_PVI_act02_Excel returns the handle to a new GUI_PVI_act02_Excel or the handle to
%      the existing singleton*.
%
%      GUI_PVI_act02_Excel('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_PVI_act02_Excel.M with the given input arguments.
%
%      GUI_PVI_act02_Excel('Property','Value',...) creates a new GUI_PVI_act02_Excel or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_PVI_act02_Excel_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_PVI_act02_Excel_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_PVI_act02_Excel

% Last Modified by GUIDE v2.5 15-Nov-2010 14:59:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_PVI_act02_Excel_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_PVI_act02_Excel_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUI_PVI_act02_Excel is made visible.
function GUI_PVI_act02_Excel_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_PVI_act02_Excel (see VARARGIN)

% Choose default command line output for GUI_PVI_act02_Excel
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_PVI_act02_Excel wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% meusDados é uma ESTRUTURA DE DADOS
meusDados.Count = 1; % folha onde escreve na 1ª vez
meusDados.hExcel = actxserver('Excel.Application'); % ligação ActiveX
meusDados.hExcel.WorkBooks.Add(); % abre por defeito um livro com 3 folhas
set(hObject,'UserData',meusDados) % guardar a a variável meusDados
                                  % na propriedade UserData (evitar
                                  % variáveis globais)
Actualiza(handles); % actualizar os outputs


% --- Outputs from this function are returned to the command line.
function varargout = GUI_PVI_act02_Excel_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function eF_Callback(hObject, eventdata, handles)
% hObject    handle to eF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eF as text
%        str2double(get(hObject,'String')) returns contents of eF as a double


% --- Executes during object creation, after setting all properties.
function eF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eA_Callback(hObject, eventdata, handles)
% hObject    handle to eA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eA as text
%        str2double(get(hObject,'String')) returns contents of eA as a double


% --- Executes during object creation, after setting all properties.
function eA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eB_Callback(hObject, eventdata, handles)
% hObject    handle to eB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eB as text
%        str2double(get(hObject,'String')) returns contents of eB as a double


% --- Executes during object creation, after setting all properties.
function eB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eN_Callback(hObject, eventdata, handles)
% hObject    handle to eN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eN as text
%        str2double(get(hObject,'String')) returns contents of eN as a double


% --- Executes during object creation, after setting all properties.
function eN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eY0_Callback(hObject, eventdata, handles)
% hObject    handle to eY0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eY0 as text
%        str2double(get(hObject,'String')) returns contents of eY0 as a double


% --- Executes during object creation, after setting all properties.
function eY0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eY0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bActualizar.
function bActualizar_Callback(hObject, eventdata, handles)
% hObject    handle to bActualizar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Actualiza(handles);

function df_dt=avaliaFunc (strF, t,y)
df_dt = eval(vectorize(strF));
% --------------------------------------------------------------------
%
% --------------------------------------------------------------------
function Actualiza(handles)
% handles    structure with handles and user data (see GUIDATA)

strF  =  get(handles.eF,'String');
f     = @(t,y) avaliaFunc(strF,t,y);      
a     = str2num(get(handles.eA, 'String'));
b     = str2num(get(handles.eB, 'String'));
n     = str2num(get(handles.eN, 'String'));
strY0 = get(handles.eY0,'String');
Y0    = str2num(strY0);



escolha = find([handles.rEuler,handles.rEulerM,handles.rRK2,handles.rRK4,handles.rODE45,handles.rTodos]...
               == get(handles.bSelect,'SelectedObject'));
           
%Excepçoes para validar parâmetros

Exbadfunc = MException('MATLAB:actualiza:badfunc', 'A função introduzida não é válida');

Exbadinterval = MException('MATLAB:actualiza:badinterval','O valor de b tem de ser superior ao de a');

Exbadint = MException('MATLAB:actualiza:badinteiro','O valor de n tem de ser um numero inteiro');
                       
            
try 
    try
        j = f(sym('t'),sym('y'));
    catch Me
        throw(Exbadfunc);
    end
        
    variaveis = {'a','b','n','Y0'};
        
    for i = 1:4
          Exbadnum = MException('MATLAB:actualiza:badnum',...
                        ['A variável ',variaveis{i},' não está correcta!']);
          Exbadnum1 = MException('MATLAB:actualiza:badnum1',...
                        ['A variável ',variaveis{i},' é complexa']);
                    
          eval(['if (~isscalar(',variaveis{i},'))throw(Exbadnum);',...
                        'elseif(imag(',variaveis{i},'))throw(Exbadnum1);',...
                        'end']);
    end
        
    if(b<=a)
        throw(Exbadinterval);
    end
    
    if (n-floor(n) || n<1)
        throw(Exbadint)
    end
    

      
    yEuler = N_euler(f,a,b,n,Y0); % chamada ao método de Euler
    yEulerM = Eulerm(f,a,b,n,Y0); % chamada ao metodo de Euler Modificado
    yRK2   = RK2(f,a,b,n,Y0);% chamada ao método RK2
    yRK4   = RK4(f,a,b,n,Y0);% chamada ao método RK4 
    yODE45 =  ODE45 (f,a,b,n,Y0); % chamada ao metodo ODE45
    t = a:(b-a)/n:b; % discretização do domínio
    
    sExacta = dsolve(['Dy=' strF],['y(' num2str(t(1)) ')=' strY0]);
    yExacta = eval(vectorize(char(sExacta)));
    
    switch(escolha)
        case 1
            plot(t,yEuler,'-r')
            hold on
            plot(t,yExacta,'b')
            legend('Euler','Solução Exacta')
            
            set(handles.uiTabela,'ColumnName',{'t','Solução Exacta',...
               'Euler','Erro Euler'});
            cTabela = [t.',yExacta.', yEuler.',abs(yEuler-yExacta).'];
            set(handles.uiTabela,'Data',num2cell(cTabela));
            
        case 2            
            plot(t,yEulerM,'g')
            hold on
            plot(t,yExacta,'b')
            legend('Euler Modificado','Solução Exacta')
            
            set(handles.uiTabela,'ColumnName',{'t','Solução Exacta',...
               'Euler Modificado','Erro Euler Modificado'});
            cTabela = [t.',yExacta.', yEulerM.',abs(yEulerM-yExacta).'];
            set(handles.uiTabela,'Data',num2cell(cTabela));   
            
            
        case 3
            plot(t,yRK2,'g')
            hold on
            plot(t,yExacta,'b')
            legend('RK2','Solução Exacta')
            
            set(handles.uiTabela,'ColumnName',{'t','Solução Exacta',...
               'RK2','Erro Euler'});
            cTabela = [t.',yExacta.', yRK2.',abs(yRK2-yExacta).'];
            set(handles.uiTabela,'Data',num2cell(cTabela));
           
        case 4
            plot(t,yRK4,'g')
            hold on
            plot(t,yExacta,'b')
            legend('RK4','Solução Exacta')
            
            set(handles.uiTabela,'ColumnName',{'t','Solução Exacta','RK4','Erro RK4'});
            cTabela = [t.',yExacta.', yRK2.',abs(yRK4-yExacta).'];
            set(handles.uiTabela,'Data',num2cell(cTabela));
            
        case 5
            plot(yODE45(:,1), yODE45(:,2), 'g' )
            hold on
            yExacta=subs(sExacta,'t',yODE45(:,1));
            plot(yODE45(:,1),yExacta,'b')
            legend('RK4','Solução Exacta')
    
             set(handles.uiTabela,'ColumnName',{'t','Solução Exacta','ODE45','Erro ODE45'});
            cTabela = [yODE45(:,1),yExacta, yODE45(:,2),abs(yODE45(:,2)-yExacta)];
            set(handles.uiTabela,'Data',num2cell(cTabela));
            
        case 6
            plot(t,yExacta,'g')
            hold on
            plot(t,yEuler,'k')
            hold on
            plot(t,yEulerM,'b')
            plot(t,yRK2,'y')
            hold on
            plot(t,yRK4,'r')
            hold on
            
            legend('Solução Exact','Euler','Euler Modificado','RK2','RK4')
          
            set(handles.uiTabela,'ColumnName',{'t','Solução Exacta','Euler','Erro Euler','Euler Modificado','Erro Euler Modificado','RK2','Erro RK2' , 'RK4','Erro RK4'});
            cTabela = [t.',yExacta.', yEuler.',abs(yEuler-yExacta).', yEulerM.',abs(yEulerM-yExacta).', yRK2.',abs(yRK2-yExacta).',yRK4.',abs(yRK4-yExacta).'];
            set(handles.uiTabela,'Data',num2cell(cTabela));
    end
    grid on 
    xlabel('t')
    ylabel('y')
    hold off 
 catch Me
      errordlg(['Ocorreu um Erro: ' Me.message],'Erro','modal');
 end



% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
%
% --------------------------------------------------------------------
function expToExcel_Callback(hObject, eventdata, handles)
Actualiza(handles); %prevenir se houver modificação,que seja actualizado
                    %antes de enviar dados para o excel

meusDados = get(handles.figure1,'UserData'); % Aceder à variável meusDados
                                             % inicializada em OpeningFcn
                                             
if(~meusDados.hExcel.Workbooks.Count) % Abrir um novo livro caso não exista     
     meusDados.hExcel.Workbooks.Add();
     meusDados.Count = 1;
end
meusDados.hExcel.Visible = 1; % Tornar visivel o excel

folhas = meusDados.hExcel.ActiveWorkBook.Sheets; % folhas do livro
if(folhas.Count < meusDados.Count)
    folha  = get(folhas, 'Item',folhas.Count); % apontar para a última
    folhas.Add([],folha); % acrescenta uma nova folha
end

folha  = folhas.Item(meusDados.Count); % aponta para a folha onde se 
folha.Activate();                      % pretende escrever

strF  = get(handles.eF, 'String'); 
a     = get(handles.eA, 'String');
b     = get(handles.eB, 'String');
n     = get(handles.eN, 'String');
strY0 = get(handles.eY0,'String');



indice  = find([handles.rEuler ...
                handles.rRK2 ...
                handles.rRK4 ...
                handles.rTodos] == get(handles.bSelect,'SelectedObject'));
nomeAlgo = {'Euler','RK2','RK4','Todos'};

folha.Name=[num2str(meusDados.Count) 'º ' nomeAlgo{indice}]; %nome da folha

folha.Range('C1').Font.Name='Symbol';
matriz2Excel(meusDados.hExcel,{['y''=' strF ','],'t',char(206),...
                              ['[' a ',' b ']']})
matriz2Excel(meusDados.hExcel,{['n=' n],['y(' a ')=' strY0]},1)

matriz2Excel(meusDados.hExcel,get(handles.uiTabela,'ColumnName').',3)
matriz2Excel(meusDados.hExcel,get(handles.uiTabela,'Data'),4)% deslocamento
                                                             % de 4 linhas

meusDados.Count = meusDados.Count + 1;
set(handles.figure1,'UserData',meusDados) % Actualizar UserData

% --------------------------------------------------------------------
%
% --------------------------------------------------------------------
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% Fechar a figura (GUI)

sair = questdlg('Tem a certeza que pretende sair da aplicação?', 'Sair', 'Sim', 'Não', 'Sim');
                     
if (strcmp(sair,'Sim')==1)   
    meusDados = get(handles.figure1,'UserData');
    try
        if(meusDados.hExcel.Workbooks.Count)
            meusDados.hExcel.Workbooks.Close();
        end
        meusDados.hExcel.Quit();   % Sair do excel
        meusDados.hExcel.delete(); % Eliminar o excel
        delete(hObject); % Eliminar a GUI
        
    catch 
    end
    

end
