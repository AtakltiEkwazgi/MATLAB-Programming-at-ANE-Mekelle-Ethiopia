clc
clear
close all
%Shire ANE Population Figure Data,SAPFD
SAPFDType={'Shire AoRs'};
Prompt1='Select field office Name:';
Bname='Welcome to ANE Humanitorian Organization:';
Bsize=[400,100];
[indx1,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',Prompt1,'SelectionMode','Single','ListString',SAPFDType);

if indx1==1
    %Shire AoRs,SAoRs
 SAoRsType={'Shire','Maytsebri','Sheraro'};
 Prompt3='Select Site Name:';
 Bname='Shire AoRs:';
 Bsize=[300,100];
 [indx3,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',Prompt3,'SelectionMode','Single','ListString',SAoRsType);
end

if indx3==1
     %Shire IDPs List,SIDPsL
SIDPsLType={'Adi Kentibay Elementary School','Adi Wenfito Elementary Schoo','BGI Elementary School','Dehab Tesfay Women Tranning Center','Shire Agricultural College','Shire Preparatory School','Aksum Town(BOLSA)','Shire Population Figure'};
Prompt4='Select IDPs Name:';
Bname='Shire IDPs List:';
Bsize=[250,300];
[indx4,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',Prompt4,'SelectionMode','Single','ListString',SIDPsLType);  
if indx4==1
     % Adi Kentibay Elementary School,AKES
    AKES=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
         0,0,0,0,2542,3150,3443,4980,3512,3890,7950,10580,1850,2100 ];
     [n,m]=size(AKES);
    for i=1:n
    MHH=sum(AKES(:,1));
    FHH=sum(AKES(:,2));
    THH=8440;
    MTind=sum(AKES(:,3));
    FTind=sum(AKES(:,4));
    Tind=43997;
    S1=sum(AKES(:,5));
    S2=sum(AKES(:,6));
    S12=S1+S2;
    S3=sum(AKES(:,7));
    S4=sum(AKES(:,8));
    S34=S3+S4;
    S5=sum(AKES(:,9));
    S6=sum(AKES(:,10));
    S56=S5+S6;
    S7=sum(AKES(:,11));
    S8=sum(AKES(:,12));
    S78=S7+S8;
    S9=sum(AKES(:,13));
    S10=sum(AKES(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Adi Kentibay Elementary School','FontSize',12)
elseif indx4==2
 % Adi Wenfito Elementary School,AWES 
 AWES=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
        0,0,0,0,3855,2974,5476,7246,3400,4000,14000,15000,2140,3125 ];
    [n,m]=size(AWES);
    for i=1:n
    MHH=sum(AWES(:,1));
    FHH=sum(AWES(:,2));
    THH= 10135;
    MTind=sum(AWES(:,3));
    FTind=sum(AWES(:,4));
    Tind= 61216;
    S1=sum(AWES(:,5));
    S2=sum(AWES(:,6));
    S12=S1+S2;
    S3=sum(AWES(:,7));
    S4=sum(AWES(:,8));
    S34=S3+S4;
    S5=sum(AWES(:,9));
    S6=sum(AWES(:,10));
    S56=S5+S6;
    S7=sum(AWES(:,11));
    S8=sum(AWES(:,12));
    S78=S7+S8;
    S9=sum(AWES(:,13));
    S10=sum(AWES(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Adi Wenfito Elementary School','FontSize',12)
elseif indx4==3
    % BGI Elementary School,BGI_ES 
    BGI_ES=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
       0,0,0,0,240,249,2092,2120,2899,3450,2584,3000,392,423];
    [n,m]=size(BGI_ES);
    for i=1:n
    MHH=sum(BGI_ES(:,1));
    FHH=sum(BGI_ES(:,2));
    THH= 2944;
    MTind=sum(BGI_ES(:,3));
    FTind=sum(BGI_ES(:,4));
    Tind=17208;
    S1=sum(BGI_ES(:,5));
    S2=sum(BGI_ES(:,6));
    S12=S1+S2;
    S3=sum(BGI_ES(:,7));
    S4=sum(BGI_ES(:,8));
    S34=S3+S4;
    S5=sum(BGI_ES(:,9));
    S6=sum(BGI_ES(:,10));
    S56=S5+S6;
    S7=sum(BGI_ES(:,11));
    S8=sum(BGI_ES(:,12));
    S78=S7+S8;
    S9=sum(BGI_ES(:,13));
    S10=sum(BGI_ES(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('BGI Elementary School','FontSize',12)
elseif indx4==4
    % Dehab Tesfay Women Tranning Center,DTWTC 
    DTWTC=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
        0,0,0,0,448,780,466,670,300,158,2020,2580,708,930];
    [n,m]=size(DTWTC);
    for i=1:n
    MHH=sum(DTWTC(:,1));
    FHH=sum(DTWTC(:,2));
    THH=12;
    MTind=sum(DTWTC(:,3));
    FTind=sum(DTWTC(:,4));
    Tind=667;
    S1=sum(DTWTC(:,5));
    S2=sum(DTWTC(:,6));
    S12=S1+S2;
    S3=sum(DTWTC(:,7));
    S4=sum(DTWTC(:,8));
    S34=S3+S4;
    S5=sum(DTWTC(:,9));
    S6=sum(DTWTC(:,10));
    S56=S5+S6;
    S7=sum(DTWTC(:,11));
    S8=sum(DTWTC(:,12));
    S78=S7+S8;
    S9=sum(DTWTC(:,13));
    S10=sum(DTWTC(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Dehab Tesfay Women Tranning Center','FontSize',12)
elseif indx4==5
    % Shire Agricultural College,SAC 
    SAC=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
        0,0,0,0,927,1053,2971,1053,4260,5426,6348,5891,270,160];
    [n,m]=size(SAC);
    for i=1:n
    MHH=sum(SAC(:,1));
    FHH=sum(SAC(:,2));
    THH=5672;
    MTind=sum(SAC(:,3));
    FTind=sum(SAC(:,4));
    Tind=28359;
    S1=sum(SAC(:,5));
    S2=sum(SAC(:,6));
    S12=S1+S2;
    S3=sum(SAC(:,7));
    S4=sum(SAC(:,8));
    S34=S3+S4;
    S5=sum(SAC(:,9));
    S6=sum(SAC(:,10));
    S56=S5+S6;
    S7=sum(SAC(:,11));
    S8=sum(SAC(:,12));
    S78=S7+S8;
    S9=sum(SAC(:,13));
    S10=sum(SAC(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Shire Agricultural College','FontSize',12)
elseif indx4==6
    % Shire Preparatory School,SPS
    SPS=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
        0,0,0,0,3422,4261,4469,5212,3564,3642,7569,8849,1642,1594];
    [n,m]=size(SPS);
    for i=1:n
    MHH=sum(SPS(:,1));
    FHH=sum(SPS(:,2));
    THH= 8514;
    MTind=sum(SPS(:,3));
    FTind=sum(SPS(:,4));
    Tind=44224;
    S1=sum(SPS(:,5));
    S2=sum(SPS(:,6));
    S12=S1+S2;
    S3=sum(SPS(:,7));
    S4=sum(SPS(:,8));
    S34=S3+S4;
    S5=sum(SPS(:,9));
    S6=sum(SPS(:,10));
    S56=S5+S6;
    S7=sum(SPS(:,11));
    S8=sum(SPS(:,12));
    S78=S7+S8;
    S9=sum(SPS(:,13));
    S10=sum(SPS(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Shire Preparatory School','FontSize',12)
elseif indx4==7
    % Mahberawi Guday Atsede Hitsanat,AksumT
    AksumT=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
        0,0,0,0,208,224,160,208,176,256,208,192,48,80];
    [n,m]=size(AksumT);
    for i=1:n
    MHH=sum(AksumT(:,1));
    FHH=sum(AksumT(:,2));
    THH= 423 ;
    MTind=sum(AksumT(:,3));
    FTind=sum(AksumT(:,4));
    Tind= 1759 ;
    S1=sum(AksumT(:,5));
    S2=sum(AksumT(:,6));
    S12=S1+S2;
    S3=sum(AksumT(:,7));
    S4=sum(AksumT(:,8));
    S34=S3+S4;
    S5=sum(AksumT(:,9));
    S6=sum(AksumT(:,10));
    S56=S5+S6;
    S7=sum(AksumT(:,11));
    S8=sum(AksumT(:,12));
    S78=S7+S8;
    S9=sum(AksumT(:,13));
    S10=sum(AksumT(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Mahberawi Guday Atsede Hitsanat','FontSize',12)
elseif indx4==8
    % Shire IDPs Population Figure,SPF
    SPF=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
0,0,0,0,208,224,160,208,176,256,208,192,48,80 % Aksum Town
0,0,0,0,2542,3150,3443,4980,3512,3890,7950,10580,1850,2100 % Adi Kentibay Elementary School 
0,0,0,0,3855,2974,5476,7246,3400,4000,14000,15000,2140,3125 % Adi Wenfito Elementary school
0,0,0,0,240,249,2092,2120,2899,3450,2584,3000,392,423 % BGI Elementary School
0,0,0,0,448,780,466,670,300,158,2020,2580,708,930 % Dehab Tesfay Women's Tranning Center
0,0,0,0,927,1053,2971,1053,4260,5426,6348,5891,270,160 % Shire Agricultural College
0,0,0,0,3422,4261,4469,5212,3564,3642,7569,8849,1642,1594 % Shire Preparatory School
];
[n,m]=size(SPF);
    for i=1:n
    MHH=sum(SPF(:,1));
    FHH=sum(SPF(:,2));
    THH= 423+8440+10135+2944+12+5672+8514;
    MTind=sum(SPF(:,3));
    FTind=sum(SPF(:,4));
    Tind= 1759+43997+61206+17208+667+28359+44224;
    S1=sum(SPF(:,5));
    S2=sum(SPF(:,6));
    S12=S1+S2;
    S3=sum(SPF(:,7));
    S4=sum(SPF(:,8));
    S34=S3+S4;
    S5=sum(SPF(:,9));
    S6=sum(SPF(:,10));
    S56=S5+S6;
    S7=sum(SPF(:,11));
    S8=sum(SPF(:,12));
    S78=S7+S8;
    S9=sum(SPF(:,13));
    S10=sum(SPF(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Shire IDPs Population Figure','FontSize',12)
end   
   
 elseif indx3==2
     %Maytsebri IDPs List,May_IDPsL
 May_IDPsLType={'E','F','G','H','Maytsebri Population Figure'};
Prompt5='Select IDPs Name:';
Bname='Maytsebri IDPs List:';
Bsize=[400,100];
[indx5,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',Prompt5,'SelectionMode','Single','ListString',May_IDPsLType);

 elseif indx1==1 && indx3==3
     %Sheraro IDPs List,She_IDPsL
She_IDPsLType={'High School IDP','Shade Metal Work','107-Elementary School','Awetash Diaspora','Bet Mekri','Dedebit College','Enda China','Ethnographic Museum of Kunama','Millenium Elementary School','Mulu College','Mussie Preparatory School','Semaetat Elementary School','Sheraro 2ndry School','Sheraro TVET','Tahtay Adyabo Bet Ferdi','Tekeze Co-operative Union Shed','Water Service','Cathoic Primary School','Ethiopia Number-3','Enda Berihu','Sheraro Population Figure'};
Prompt6='Select IDPs Name:';
Bname='Sheraro IDPs List:';
Bsize=[200,400];
[indx6,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',Prompt6,'SelectionMode','Single','ListString',She_IDPsLType); 
if indx6==1
    % High School IDP,HS_IDP
    HS_IDP=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
       0,0,0,0,549,497,1294,1406,727,689,1005,1191,94,83 % High Schoo IDPs
 ];
[n,m]=size(HS_IDP);
    for i=1:n
    MHH=sum(HS_IDP(:,1));
    FHH=sum(HS_IDP(:,2));
    THH= 668;
    MTind=sum(HS_IDP(:,3));
    FTind=sum(HS_IDP(:,4));
    Tind=4135;
    S1=sum(HS_IDP(:,5));
    S2=sum(HS_IDP(:,6));
    S12=S1+S2;
    S3=sum(HS_IDP(:,7));
    S4=sum(HS_IDP(:,8));
    S34=S3+S4;
    S5=sum(HS_IDP(:,9));
    S6=sum(HS_IDP(:,10));
    S56=S5+S6;
    S7=sum(HS_IDP(:,11));
    S8=sum(HS_IDP(:,12));
    S78=S7+S8;
    S9=sum(HS_IDP(:,13));
    S10=sum(HS_IDP(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('High School IDP','FontSize',12)
elseif indx6==2
    % Shade Metal Work,SM_Work
    SM_Work=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
    0,0,0,0,1300,1700,1422,1593,284,319,1604,1804,1704,1906  % Shade Metal Work
 ];
[n,m]=size(SM_Work);
    for i=1:n
    MHH=sum(SM_Work(:,1));
    FHH=sum(SM_Work(:,2));
    THH=19;
    MTind=sum(SM_Work(:,3));
    FTind=sum(SM_Work(:,4));
    Tind=80;
    S1=sum(SM_Work(:,5));
    S2=sum(SM_Work(:,6));
    S12=S1+S2;
    S3=sum(SM_Work(:,7));
    S4=sum(SM_Work(:,8));
    S34=S3+S4;
    S5=sum(SM_Work(:,9));
    S6=sum(SM_Work(:,10));
    S56=S5+S6;
    S7=sum(SM_Work(:,11));
    S8=sum(SM_Work(:,12));
    S78=S7+S8;
    S9=sum(SM_Work(:,13));
    S10=sum(SM_Work(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Shade Metal Work','FontSize',12)
elseif indx6==3
    % 107-Elementary School,ES107
    ES107=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
       0,0,0,0,250,190,313,3227,1450,2298,1466,1082,394,859 % 107-Elementary School 
 ];
[n,m]=size(ES107);
    for i=1:n
    MHH=sum(ES107(:,1));
    FHH=sum(ES107(:,2));
    THH=MHH+FHH;
    MTind=sum(ES107(:,3));
    FTind=sum(ES107(:,4));
    Tind=MTind+FTind;
    S1=sum(ES107(:,5));
    S2=sum(ES107(:,6));
    S12=S1+S2;
    S3=sum(ES107(:,7));
    S4=sum(ES107(:,8));
    S34=S3+S4;
    S5=sum(ES107(:,9));
    S6=sum(ES107(:,10));
    S56=S5+S6;
    S7=sum(ES107(:,11));
    S8=sum(ES107(:,12));
    S78=S7+S8;
    S9=sum(ES107(:,13));
    S10=sum(ES107(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('107-Elementary School','FontSize',12)
elseif indx6==4
  % Awetash Diaspora,Aw_Dia
  Aw_Dia=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
      0,0,0,0,4,5,1,3,0,1,6,13,0,2 %Awetash Diaspora,Aw_Dia
   ];
[n,m]=size(Aw_Dia);
    for i=1:n
    MHH=sum(Aw_Dia(:,1));
    FHH=sum(Aw_Dia(:,2));
    THH= 15; 
    MTind=sum(Aw_Dia(:,3));
    FTind=sum(Aw_Dia(:,4));
    Tind=35;
    S1=sum(Aw_Dia(:,5));
    S2=sum(Aw_Dia(:,6));
    S12=S1+S2;
    S3=sum(Aw_Dia(:,7));
    S4=sum(Aw_Dia(:,8));
    S34=S3+S4;
    S5=sum(Aw_Dia(:,9));
    S6=sum(Aw_Dia(:,10));
    S56=S5+S6;
    S7=sum(Aw_Dia(:,11));
    S8=sum(Aw_Dia(:,12));
    S78=S7+S8;
    S9=sum(Aw_Dia(:,13));
    S10=sum(Aw_Dia(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Awetash Diaspora','FontSize',12)
elseif indx6==5
    % Bet Mekri,Bet_M
    Bet_M=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
       0,0,0,0,11,11,15,14,3,3,29,24,6,4 %Bet Mekri
  ];
[n,m]=size(Bet_M);
    for i=1:n
    MHH=sum(Bet_M(:,1));
    FHH=sum(Bet_M(:,2));
    THH= 41;
    MTind=sum(Bet_M(:,3));
    FTind=sum(Bet_M(:,4));
    Tind=120;
    S1=sum(Bet_M(:,5));
    S2=sum(Bet_M(:,6));
    S12=S1+S2;
    S3=sum(Bet_M(:,7));
    S4=sum(Bet_M(:,8));
    S34=S3+S4;
    S5=sum(Bet_M(:,9));
    S6=sum(Bet_M(:,10));
    S56=S5+S6;
    S7=sum(Bet_M(:,11));
    S8=sum(Bet_M(:,12));
    S78=S7+S8;
    S9=sum(Bet_M(:,13));
    S10=sum(Bet_M(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Bet Mekri','FontSize',12)
elseif indx6==6
    % Dedebit College,De_Coll
    De_Coll=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
     0,0,0,0,318,402,250,321,1553,1622,310,321,2107,2289 %Dedebit College
   ];
[n,m]=size(De_Coll);
    for i=1:n
    MHH=sum(De_Coll(:,1));
    FHH=sum(De_Coll(:,2));
    THH= 1344;
    MTind=sum(De_Coll(:,3));
    FTind=sum(De_Coll(:,4));
    Tind=9492;
    S1=sum(De_Coll(:,5));
    S2=sum(De_Coll(:,6));
    S12=S1+S2;
    S3=sum(De_Coll(:,7));
    S4=sum(De_Coll(:,8));
    S34=S3+S4;
    S5=sum(De_Coll(:,9));
    S6=sum(De_Coll(:,10));
    S56=S5+S6;
    S7=sum(De_Coll(:,11));
    S8=sum(De_Coll(:,12));
    S78=S7+S8;
    S9=sum(De_Coll(:,13));
    S10=sum(De_Coll(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Dedebit College','FontSize',12)
elseif indx6==7
    % Enda China,E_China
    E_China=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
     0,0,0,0,847,943,1925,2145,693,772,4005,4462,232,259 %Enda China
  ];
[n,m]=size(E_China);
    for i=1:n
    MHH=sum(E_China(:,1));
    FHH=sum(E_China(:,2));
    THH= 1930;
    MTind=sum(E_China(:,3));
    FTind=sum(E_China(:,4));
    Tind=16283 ;
    S1=sum(E_China(:,5));
    S2=sum(E_China(:,6));
    S12=S1+S2;
    S3=sum(E_China(:,7));
    S4=sum(E_China(:,8));
    S34=S3+S4;
    S5=sum(E_China(:,9));
    S6=sum(E_China(:,10));
    S56=S5+S6;
    S7=sum(E_China(:,11));
    S8=sum(E_China(:,12));
    S78=S7+S8;
    S9=sum(E_China(:,13));
    S10=sum(E_China(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Enda China','FontSize',12)
elseif indx6==8
    % Ethnographic Museum of Kunama,EM_Ku
    EM_Ku=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
      0,0,0,0,230,170,683,567,137,113,1800,1117,50,30 %Ethnographic Museum of Kunama 
 ];
[n,m]=size(EM_Ku);
    for i=1:n
    MHH=sum(EM_Ku(:,1));
    FHH=sum(EM_Ku(:,2));
    THH=33;
    MTind=sum(EM_Ku(:,3));
    FTind=sum(EM_Ku(:,4));
    Tind=239;
    S1=sum(EM_Ku(:,5));
    S2=sum(EM_Ku(:,6));
    S12=S1+S2;
    S3=sum(EM_Ku(:,7));
    S4=sum(EM_Ku(:,8));
    S34=S3+S4;
    S5=sum(EM_Ku(:,9));
    S6=sum(EM_Ku(:,10));
    S56=S5+S6;
    S7=sum(EM_Ku(:,11));
    S8=sum(EM_Ku(:,12));
    S78=S7+S8;
    S9=sum(EM_Ku(:,13));
    S10=sum(EM_Ku(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Ethnographic Museum of Kunama','FontSize',12)
elseif indx6==9
    % Millenium Elementary School,Mil_ES
    Mil_ES=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
       0,0,0,0,109,94,347,295,69,59,560,740,29,13 %Millenium Elementary School
 ];
[n,m]=size(Mil_ES);
    for i=1:n
    MHH=sum(Mil_ES(:,1));
    FHH=sum(Mil_ES(:,2));
    THH=40;
    MTind=sum(Mil_ES(:,3));
    FTind=sum(Mil_ES(:,4));
    Tind=150;
    S1=sum(Mil_ES(:,5));
    S2=sum(Mil_ES(:,6));
    S12=S1+S2;
    S3=sum(Mil_ES(:,7));
    S4=sum(Mil_ES(:,8));
    S34=S3+S4;
    S5=sum(Mil_ES(:,9));
    S6=sum(Mil_ES(:,10));
    S56=S5+S6;
    S7=sum(Mil_ES(:,11));
    S8=sum(Mil_ES(:,12));
    S78=S7+S8;
    S9=sum(Mil_ES(:,13));
    S10=sum(Mil_ES(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Millenium Elementary School','FontSize',12)
elseif indx6==10
    % Mulu College,Mul_C
    Mul_C=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
      0,0,0,0,599,540,347,352,1695,1721,1035,1064,66,60 % Mulu College
      ];
  [n,m]=size(Mul_C);
    for i=1:n
    MHH=sum(Mul_C(:,1));
    FHH=sum(Mul_C(:,2));
    THH= 48;
    MTind=sum(Mul_C(:,3));
    FTind=sum(Mul_C(:,4));
    Tind=288;
    S1=sum(Mul_C(:,5));
    S2=sum(Mul_C(:,6));
    S12=S1+S2;
    S3=sum(Mul_C(:,7));
    S4=sum(Mul_C(:,8));
    S34=S3+S4;
    S5=sum(Mul_C(:,9));
    S6=sum(Mul_C(:,10));
    S56=S5+S6;
    S7=sum(Mul_C(:,11));
    S8=sum(Mul_C(:,12));
    S78=S7+S8;
    S9=sum(Mul_C(:,13));
    S10=sum(Mul_C(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Mulu College','FontSize',12)
elseif indx6==11
    % Mussie Preparatory School,MuPS
    MuPS=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
       0,0,0,0,651,651,1482,1263,297,253,1752,1652,109,101];
   [n,m]=size(MuPS);
    for i=1:n
    MHH=sum(MuPS(:,1));
    FHH=sum(MuPS(:,2));
    THH= 350;
    MTind=sum(MuPS(:,3));
    FTind=sum(MuPS(:,4));
    Tind=1891;
    S1=sum(MuPS(:,5));
    S2=sum(MuPS(:,6));
    S12=S1+S2;
    S3=sum(MuPS(:,7));
    S4=sum(MuPS(:,8));
    S34=S3+S4;
    S5=sum(MuPS(:,9));
    S6=sum(MuPS(:,10));
    S56=S5+S6;
    S7=sum(MuPS(:,11));
    S8=sum(MuPS(:,12));
    S78=S7+S8;
    S9=sum(MuPS(:,13));
    S10=sum(MuPS(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Mussie Preparatory School','FontSize',12)
elseif indx6==12
    % Semaetat Elementary School,SES
    SES=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
    0,0,0,0,13472,7875,7138,4122,1271,1166,5291,4603,684,634];
    [n,m]=size(SES);
    for i=1:n
    MHH=sum(SES(:,1));
    FHH=sum(SES(:,2));
    THH= 225; 	 
    MTind=sum(SES(:,3));
    FTind=sum(SES(:,4));
    Tind=1575;
    S1=sum(SES(:,5));
    S2=sum(SES(:,6));
    S12=S1+S2;
    S3=sum(SES(:,7));
    S4=sum(SES(:,8));
    S34=S3+S4;
    S5=sum(SES(:,9));
    S6=sum(SES(:,10));
    S56=S5+S6;
    S7=sum(SES(:,11));
    S8=sum(SES(:,12));
    S78=S7+S8;
    S9=sum(SES(:,13));
    S10=sum(SES(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Semaetat Elementary School','FontSize',12)
elseif indx6==13
    % Sheraro 2ndry School,S2ndry
    S2ndry=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
     0,0,0,0,497,549,1746,1684,349,337,1091,1105,83,94];
    [n,m]=size(S2ndry);
    for i=1:n
    MHH=sum(S2ndry(:,1));
    FHH=sum(S2ndry(:,2));
    THH= 668;
    MTind=sum(S2ndry(:,3));
    FTind=sum(S2ndry(:,4));
    Tind=4135;
    S1=sum(S2ndry(:,5));
    S2=sum(S2ndry(:,6));
    S12=S1+S2;
    S3=sum(S2ndry(:,7));
    S4=sum(S2ndry(:,8));
    S34=S3+S4;
    S5=sum(S2ndry(:,9));
    S6=sum(S2ndry(:,10));
    S56=S5+S6;
    S7=sum(S2ndry(:,11));
    S8=sum(S2ndry(:,12));
    S78=S7+S8;
    S9=sum(S2ndry(:,13));
    S10=sum(S2ndry(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Sheraro 2ndry School','FontSize',12)
elseif indx6==14
    % Sheraro TVET,S_TVET
    S_TVET=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
     0,0,0,0,1362,1457,1293,1406,1800,1689,1068,1464,470,317];
    [n,m]=size(S_TVET);
    for i=1:n
    MHH=sum(S_TVET(:,1));
    FHH=sum(S_TVET(:,2));
    THH= 61;
    MTind=sum(S_TVET(:,3));
    FTind=sum(S_TVET(:,4));
    Tind=2774;
    S1=sum(S_TVET(:,5));
    S2=sum(S_TVET(:,6));
    S12=S1+S2;
    S3=sum(S_TVET(:,7));
    S4=sum(S_TVET(:,8));
    S34=S3+S4;
    S5=sum(S_TVET(:,9));
    S6=sum(S_TVET(:,10));
    S56=S5+S6;
    S7=sum(S_TVET(:,11));
    S8=sum(S_TVET(:,12));
    S78=S7+S8;
    S9=sum(S_TVET(:,13));
    S10=sum(S_TVET(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Sheraro TVET','FontSize',12)
elseif indx6==15
    % Tahtay Adyabo Bet Ferdi,TABF
    TABF=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
    0,0,0,0,15,16,25,27,10,11,48,52,2,3];
    [n,m]=size(TABF);
    for i=1:n
    MHH=sum(TABF(:,1));
    FHH=sum(TABF(:,2));
    THH= 36;
    MTind=sum(TABF(:,3));
    FTind=sum(TABF(:,4));
    Tind=209;
    S1=sum(TABF(:,5));
    S2=sum(TABF(:,6));
    S12=S1+S2;
    S3=sum(TABF(:,7));
    S4=sum(TABF(:,8));
    S34=S3+S4;
    S5=sum(TABF(:,9));
    S6=sum(TABF(:,10));
    S56=S5+S6;
    S7=sum(TABF(:,11));
    S8=sum(TABF(:,12));
    S78=S7+S8;
    S9=sum(TABF(:,13));
    S10=sum(TABF(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Tahtay Adyabo Bet Ferdi','FontSize',12)
elseif indx6==16
    % Tekeze Co-operative Union Shade,TCUS
    TCUS=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
    0,0,0,0,19,19,25,29,5,6,1345,1445,40,30 
    ];
    [n,m]=size(TCUS);
    for i=1:n
    MHH=sum(TCUS(:,1));
    FHH=sum(TCUS(:,2));
    THH=23;
    MTind=sum(TCUS(:,3));
    FTind=sum(TCUS(:,4));
    Tind=110;
    S1=sum(TCUS(:,5));
    S2=sum(TCUS(:,6));
    S12=S1+S2;
    S3=sum(TCUS(:,7));
    S4=sum(TCUS(:,8));
    S34=S3+S4;
    S5=sum(TCUS(:,9));
    S6=sum(TCUS(:,10));
    S56=S5+S6;
    S7=sum(TCUS(:,11));
    S8=sum(TCUS(:,12));
    S78=S7+S8;
    S9=sum(TCUS(:,13));
    S10=sum(TCUS(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Tekeze Co-operative Union Shade','FontSize',12)
elseif indx6==17
    % Water Service,WaS
    WaS=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
        ];
    [n,m]=size(WaS);
    for i=1:n
    MHH=sum(WaS(:,1));
    FHH=sum(WaS(:,2));
    THH=MHH+FHH;
    MTind=sum(WaS(:,3));
    FTind=sum(WaS(:,4));
    Tind=MTind+FTind;
    S1=sum(WaS(:,5));
    S2=sum(WaS(:,6));
    S12=S1+S2;
    S3=sum(WaS(:,7));
    S4=sum(WaS(:,8));
    S34=S3+S4;
    S5=sum(WaS(:,9));
    S6=sum(WaS(:,10));
    S56=S5+S6;
    S7=sum(WaS(:,11));
    S8=sum(WaS(:,12));
    S78=S7+S8;
    S9=sum(WaS(:,13));
    S10=sum(WaS(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Water Service','FontSize',12)
elseif indx6==18
    % Cathoic Primary School,CPS
    CPS=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
      0,0,0,0,1710,1870,417,515,2357,2520,2725,2983,560,645 
  ];
    [n,m]=size(CPS);
    for i=1:n
    MHH=sum(CPS(:,1));
    FHH=sum(CPS(:,2));
    THH= 2600; 	 
    MTind=sum(CPS(:,3));
    FTind=sum(CPS(:,4));
    Tind=13447;
    S1=sum(CPS(:,5));
    S2=sum(CPS(:,6));
    S12=S1+S2;
    S3=sum(CPS(:,7));
    S4=sum(CPS(:,8));
    S34=S3+S4;
    S5=sum(CPS(:,9));
    S6=sum(CPS(:,10));
    S56=S5+S6;
    S7=sum(CPS(:,11));
    S8=sum(CPS(:,12));
    S78=S7+S8;
    S9=sum(CPS(:,13));
    S10=sum(CPS(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Cathoic Primary School','FontSize',12)
elseif indx6==19
    % Ethiopia Number-3,EN_3
    EN_3=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
    0,0,0,0,21,18,42,41,12,15,44,54,3,3
    ];
    [n,m]=size(EN_3);
    for i=1:n
    MHH=sum(EN_3(:,1));
    FHH=sum(EN_3(:,2));
    THH=37;
    MTind=sum(EN_3(:,3));
    FTind=sum(EN_3(:,4));
    Tind=252;
    S1=sum(EN_3(:,5));
    S2=sum(EN_3(:,6));
    S12=S1+S2;
    S3=sum(EN_3(:,7));
    S4=sum(EN_3(:,8));
    S34=S3+S4;
    S5=sum(EN_3(:,9));
    S6=sum(EN_3(:,10));
    S56=S5+S6;
    S7=sum(EN_3(:,11));
    S8=sum(EN_3(:,12));
    S78=S7+S8;
    S9=sum(EN_3(:,13));
    S10=sum(EN_3(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Ethiopia Number-3','FontSize',12)
elseif indx6==20
    % Enda Berihu,Enda_B
    Enda_B=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
     0,0,0,0,0,0,0,0,0,0,0,0,0,0 ];
    [n,m]=size(Enda_B);
    for i=1:n
    MHH=sum(Enda_B(:,1));
    FHH=sum(Enda_B(:,2));
    THH=MHH+FHH;
    MTind=sum(Enda_B(:,3));
    FTind=sum(Enda_B(:,4));
    Tind=MTind+FTind;
    S1=sum(Enda_B(:,5));
    S2=sum(Enda_B(:,6));
    S12=S1+S2;
    S3=sum(Enda_B(:,7));
    S4=sum(Enda_B(:,8));
    S34=S3+S4;
    S5=sum(Enda_B(:,9));
    S6=sum(Enda_B(:,10));
    S56=S5+S6;
    S7=sum(Enda_B(:,11));
    S8=sum(Enda_B(:,12));
    S78=S7+S8;
    S9=sum(Enda_B(:,13));
    S10=sum(Enda_B(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Enda Berihu','FontSize',12)

% Sheraro IDPs Population Figure,ShePF
ShePF=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
        ];
    [n,m]=size(ShePF);
    for i=1:n
    MHH=sum(ShePF(:,1));
    FHH=sum(ShePF(:,2));
    THH=MHH+FHH;
    MTind=sum(ShePF(:,3));
    FTind=sum(ShePF(:,4));
    Tind=MTind+FTind;
    S1=sum(ShePF(:,5));
    S2=sum(ShePF(:,6));
    S12=S1+S2;
    S3=sum(ShePF(:,7));
    S4=sum(ShePF(:,8));
    S34=S3+S4;
    S5=sum(ShePF(:,9));
    S6=sum(ShePF(:,10));
    S56=S5+S6;
    S7=sum(ShePF(:,11));
    S8=sum(ShePF(:,12));
    S78=S7+S8;
    S9=sum(ShePF(:,13));
    S10=sum(ShePF(:,14));
    S910=S9+S10;
    error=(Tind-(S12+S34+S56+S78+S910));
    end
    % HH and Individual report,IDPs
      IDPs=[THH MHH FHH Tind MTind FTind];
 X=categorical({'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'}); 
 X=reordercats(X,{'Total Household','Mal Household','Femal Household','Total Individual','Mal Total Individual','Femal Total Individual'});
 Y=[THH MHH FHH Tind MTind FTind];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on 
      
      %Age Segregated Report,AgeS
   AgeS=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
  X=categorical({'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'}); 
 X=reordercats(X,{'Total 0-4','Mal 0-4','Femal 0-4','Total 5-14','Mal 5-14','Femal 5-14','Total 15-17','Mal 15-17','Femal 15-17','Total 18-59','Mal 18-59','Femal 18-59','Total >60','Mal >60','F >60'});
 Y=[S12 S1 S2 S34 S3 S4 S56 S5 S6 S78 S7 S8 S910 S9 S10];
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
% The difference between Total individual and Segregated individual or error
 Error=(error);
X=categorical({'error'});
 X=reordercats(X,{'error'});
 Y=(error);
 b=bar(X,Y);
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
legend('Number of Household and Individual','Age based Segregation','Error b/n Tind and Segregated individuals','FontSize',12)
title('Sheraro IDPs Population Figure','FontSize',12)
end
end
 
