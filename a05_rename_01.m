slCharacterEncoding='UTF-8';
close all
clear all

%% load all txt data from a folder, and list names  
%%%% change
path = 'C:\Users\adm\Documents\Andor Solis\Kira_data_Spectrum\20190930\808_01\test\';
%
%Files = dir(fullfile(path,'*.asc'));
Files = dir(strcat(path,'*.asc'));


LengthFiles = length(Files);
for i = 1:LengthFiles
    d=Files(i).name;
    f(i)=cellstr(d);%??????????? change to string
end
f=f.';%transpose
%%%% change
xlswrite('C:\Users\adm\Documents\Andor Solis\Kira_data_Spectrum\20190930\808_01\test\matlab_rename_data_list_01.xlsx',f,'sheet1','A1');
% save file name to Excel file, for rename
%????????Excel?????????Excel??????????????????

%%
%%%%% change
[data,file_id]  = xlsread('C:\Users\adm\Documents\Andor Solis\Kira_data_Spectrum\20190930\808_01\test\matlab_rename_data_list_ND00.xlsx', 'sheet1', 'A1:A78');
% reload rename list for renaming
% specify ur column xlsread('PATH', 'sheet1', 'A1:A78')
%??????????????
%??????????????
%????xlsread('PATH', 'sheet1', 'A1:A78')??????


for i=1:LengthFiles  
    x1=  Files(i).name;
    x2= file_id{i};
    % note {} not (), because file_id?i? is for cell, and file_id{i} is for string
    %????????????????file_id(i)?cell????file_id{i}?string??
    copyfile([path x1],['C:\Users\adm\Documents\Andor Solis\Kira_data_Spectrum\20190930\808_01\test\' x2]);
    % copy renamed data to specific fold
    %???“??????”?????????????????
end
%%

clear