clc
clear
close all
%Mekelle ANE Population Figure Data,MAPFD
MAPFDType={'Mekelle AoRs','Shire AoRs'};
Prompt1='Select field office Name:';
Bname='Welcome to ANE Humanitorian Organization:';
Bsize=[400,100];
[indx,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',Prompt1,'SelectionMode','Single','ListString',MAPFDType);

switch indx
    case 1
        disp(' Mekelle AoRs')
        disp('  ------------------ ')
        Mekelle_AoRs;%calling staff lists in Mekelle
    case 2
        disp(' Shire AoRs')
        disp('  -------------------------')
        Shire_AoRs;%caling staff lists in Shire 
end
 
