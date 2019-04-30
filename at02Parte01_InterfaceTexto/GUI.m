function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 25-Apr-2019 18:32:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @GUI_OpeningFcn, ...
    'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1




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


% --- Executes on selection change in selectMethod.
function selectMethod_Callback(hObject, eventdata, handles)
% hObject    handle to selectMethod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns selectMethod contents as cell array
%        contents{get(hObject,'Value')} returns selected item from selectMethod


% --- Executes during object creation, after setting all properties.
function selectMethod_CreateFcn(hObject, eventdata, handles)
% hObject    handle to selectMethod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
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


% --- Executes on button press in execMethod.
function execMethod_Callback(hObject, eventdata, handles)
% hObject    handle to execMethod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
method = handles.selectMethod.Value;
strF  =  get(handles.eF,'String');
strY0 = get(handles.eY0,'String');
eA = get(handles.eA, 'String');
eB = get(handles.eB, 'String');
eN = get(handles.eN, 'String');
eY0 = get(handles.eY0, 'String');

disp(isnan(str2double(eA)));

if isnan(str2double(eA)) == 1 | isnan(str2double(eB)) == 1 | isnan(str2double(eN)) == 1 | isnan(str2double(eY0)) == 1
    if(isnan(str2double(eA)))
        set(handles.eA,'string', 0);
        errordlg(sprintf('O valor de a passou para 0, pois o seu valor era inválido!\nInserir dados válidos no campo a!'));
    elseif(isnan(str2double(eB)))
        set(handles.eB,'string', 0);
        errordlg(sprintf('O valor de b passou para 0, pois o seu valor era inválido!\nInserir dados válidos no campo b!'));
    elseif(isnan(str2double(eN)))
        set(handles.eN,'string', 0);
        errordlg(sprintf('O valor de n passou para 0, pois o seu valor era inválido!\nInserir dados válidos no campo n!'));
    elseif(isnan(str2double(eY0)))
        set(handles.eY0,'string', 0);
        errordlg(sprintf('O valor de y0 passou para 0, pois o seu valor era inválido!\nInserir dados válidos no campo y0!'));
    end
    
elseif str2double(eA) == 0 & str2double(eB)==0 & str2double(eN)==0 & str2double(eY0)==0
    warndlg(sprintf('Os valores de A,B,N e Y0 estão a 0\nInserir valores inteiros!'));
else
    
    f = @(t,y) eval(vectorize(strF));
    a = str2double(get(handles.eA, 'String'));
    b = str2double(get(handles.eB, 'String'));
    n = str2double(get(handles.eN, 'String'));
    y0 = str2double(get(handles.eY0, 'String'));
    
    yEuler = N_Euler(f,a,b,n,y0); % chamada ao método de Euler
    yEulerM = N_Euler_v2(f,a,b,n,y0); % chamada ao metodo de Euler Modificado
    yRK2   = N_RK2(f,a,b,n,y0);% chamada ao método RK2
    yRK4   = N_RK4(f,a,b,n,y0);% chamada ao método RK4
    yODE45 =  ODE45 (f,a,b,n,y0); % chamada ao metodo ODE45
    t = a:(b-a)/n:b; % discretização do domínio
    
    sExacta = dsolve(['Dy=' strF],['y(' num2str(t(1)) ')=' strY0]);
    yExacta = eval(vectorize(char(sExacta)));
    
    switch(method)
        case 2
            plot(t,yEuler,'-r')
            hold on
            plot(t,yExacta,'b')
            hold off
            legend('Euler','Solução Exacta')
            set(handles.uitable2,'ColumnName',{'t','Solução Exacta',...
                'Euler','Erro Euler'});
            cTabela = [t.',yExacta.', yEuler.',abs(yEuler-yExacta).'];
            set(handles.uitable2,'Data',num2cell(cTabela));
        case 3
            plot(t,yEulerM,'-r')
            hold on
            plot(t,yExacta,'b')
            hold off
            legend('Euler Melhorado','Solução Exacta')
            set(handles.uitable2,'ColumnName',{'t','Solução Exacta',...
                'Euler Melhorado','Erro Euler'});
            cTabela = [t.',yExacta.', yEulerM.',abs(yEulerM-yExacta).'];
            set(handles.uitable2,'Data',num2cell(cTabela));
        case 4
            plot(t,yRK2,'-r')
            hold on
            plot(t,yExacta,'b')
            hold off
            legend('Runge Kutta Ordem 2','Solução Exacta')
            set(handles.uitable2,'ColumnName',{'t','Solução Exacta',...
                'RK2','Erro RK2'});
            cTabela = [t.',yExacta.', yRK2.',abs(yRK2-yExacta).'];
            set(handles.uitable2,'Data',num2cell(cTabela));
        case 5
            plot(t,yRK4,'-r')
            hold on
            plot(t,yExacta,'b')
            hold off
            legend('Runge Kutta Ordem 4','Solução Exacta')
            set(handles.uitable2,'ColumnName',{'t','Solução Exacta',...
                'RK4','Erro RK4'});
            cTabela = [t.',yExacta.', yRK4.',abs(yRK4-yExacta).'];
            set(handles.uitable2,'Data',num2cell(cTabela));
        case 6
            plot(t,yODE45,'-r')
            hold on
            plot(t,yExacta,'b')
            hold off
            legend('ODE45','Solução Exacta')
            set(handles.uitable2,'ColumnName',{'t','Solução Exacta',...
                'ODE45','Erro ODE45'});
            cTabela = [t.',yExacta.', yODE45.',abs(yODE45-yExacta).'];
            set(handles.uitable2,'Data',num2cell(cTabela));
    end
    
end

% --- Executes on button press in csvExport.
function csvExport_Callback(hObject, eventdata, handles)
% hObject    handle to csvExport (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
method = handles.selectMethod.Value;
switch(method)
    case 2
        writecell(get(handles.uitable2, 'Data'),'/home/adevreis/Documents/Matlab-project/at02Parte01_InterfaceTexto/table.csv');

    case 3
        headers = {'T', 'Solução Exata', 'Euler Melhorado', 'Erro Euler Melhorado'};
        csvwrite('/home/adevreis/Documents/Matlab-project/at02Parte01_InterfaceTexto/table.csv', get(handles.uitable2, 'Data'), headers);

    case 4
        headers = {'T', 'Solução Exata', 'RK2', 'Erro RK2'};
        csvwrite('/home/adevreis/Documents/Matlab-project/at02Parte01_InterfaceTexto/table.csv', get(handles.uitable2, 'Data'), headers);

    case 5
        headers = {'T', 'Solução Exata', 'RK4', 'Erro RK4'};
        csvwrite('/home/adevreis/Documents/Matlab-project/at02Parte01_InterfaceTexto/table.csv', get(handles.uitable2, 'Data'), headers);

end

% --- Executes on button press in xlsxExtract.
function xlsxExtract_Callback(hObject, eventdata, handles)
% hObject    handle to xlsxExtract (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
