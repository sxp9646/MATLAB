function varargout = Cash_register(varargin)
% CASH_REGISTER MATLAB code for Cash_register.fig
%      CASH_REGISTER, by itself, creates a new CASH_REGISTER or raises the existing
%      singleton*.
%
%      H = CASH_REGISTER returns the handle to a new CASH_REGISTER or the handle to
%      the existing singleton*.
%
%      CASH_REGISTER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CASH_REGISTER.M with the given input arguments.
%
%      CASH_REGISTER('Property','Value',...) creates a new CASH_REGISTER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Cash_register_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Cash_register_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Cash_register

% Last Modified by GUIDE v2.5 26-Feb-2015 18:44:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Cash_register_OpeningFcn, ...
                   'gui_OutputFcn',  @Cash_register_OutputFcn, ...
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


% --- Executes just before Cash_register is made visible.
function Cash_register_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Cash_register (see VARARGIN)

% Choose default command line output for Cash_register
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Cash_register wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Cash_register_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pb_price.
function pb_price_Callback(hObject, eventdata, handles)
% hObject    handle to pb_price (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
subtotal=handles.subtotal; % creating variable from handles stuture 
taxrate=handles.taxrate; %creating taxrate variable from stutrure
[price]=calculate_price(subtotal,taxrate); % caluate the price using a function using variables subtotal and taxrate
handles.price=price;%placing price into handles sturture
set(handles.text_purchase_price,'String',num2str(price,'%5.2f'));%turns numbers into stings
guidata(hObject,handles);%saves data

% --- Executes on button press in pb_change.
function pb_change_Callback(hObject, eventdata, handles)
% hObject    handle to pb_change (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tendered=handles.tendered;
price = handles.price 
[change, x]= calculate_change(tendered,price);
handles.change=change;
handles.denoms=x;
guidata(hObject,handles);
denoms=handles.denoms;
set(handles.text_change,'String',num2str(change,'%5.2f'));
set(handles.text_50,'String',num2str(denoms(1)));
set(handles.text_20,'String',num2str(denoms(2)));
set(handles.text_10,'String',num2str(denoms(3)));
set(handles.text_5,'String',num2str(denoms(4)));
set(handles.text_1,'String',num2str(denoms(5)));
set(handles.text_Q,'String',num2str(denoms(6)));
set(handles.text_D,'String',num2str(denoms(7)));
set(handles.text_N,'String',num2str(denoms(8)));
set(handles.text_P,'String',num2str(denoms(9)));
guidata(hObject,handles);


function edit_subtotal_Callback(hObject, eventdata, handles)
% hObject    handle to edit_subtotal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_subtotal as text
%        str2double(get(hObject,'String')) returns contents of edit_subtotal as a double
handles.subtotal = str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit_subtotal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_subtotal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_taxrate_Callback(hObject, eventdata, handles)
% hObject    handle to edit_taxrate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_taxrate as text
%        str2double(get(hObject,'String')) returns contents of edit_taxrate as a double
handles.taxrate = str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit_taxrate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_taxrate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_tendered_Callback(hObject, eventdata, handles)
% hObject    handle to edit_tendered (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_tendered as text
%        str2double(get(hObject,'String')) returns contents of edit_tendered as a double
handles.tendered = str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit_tendered_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_tendered (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pb_Quit.
function pb_Quit_Callback(hObject, eventdata, handles)
% hObject    handle to pb_Quit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc
clear 
close all