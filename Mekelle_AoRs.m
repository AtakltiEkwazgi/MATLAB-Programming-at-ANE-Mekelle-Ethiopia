clc
clear
close all
%Mekelle ANE Population Figure Data,MAPFD
 MAPFDType={'Mekelle AoRs'};
 Prompt1='Select field office Name:';
 Bname='Welcome to ANE Humanitorian Organization:';
 Bsize=[400,100];
 [indx1,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',Prompt1,'SelectionMode','Single','ListString',MAPFDType);
 
 if indx1==1
 % Mekelle AoRs,MAoRs
 MAoRsType={'Mekelle','Adigrat'};
 Prompt2='Select Site Name:';
 Bname='Mekelle AoRs:';
 Bsize=[300,100];
 [indx2,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',Prompt2,'SelectionMode','Single','ListString',MAoRsType);
end
 if indx2==1
     %Mekelle IDPs List,MIDPsL
MIDPsLType={'Mayweyni 2ndry School','Alene 2ndry School','Mekelle Health Center','Midregenet Collective Center',' Mekelle IDP Population Figure'};
Prompt4='Select IDPs Name:';
Bname='Mekele IDPs List:';
Bsize=[400,100];
[indx4,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',Prompt4,'SelectionMode','Single','ListString',MIDPsLType);

if indx4==1
    %Mayweyni 2ndry School,M2ndryS
    M2ndryS=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
      590,683,2988,3223,355,368,0,0,0,0,1295,1467,99,97];
    [n,m]=size(M2ndryS);
    for i=1:n
    MHH=sum(M2ndryS(:,1));
    FHH=sum(M2ndryS(:,2));
    THH=MHH+FHH;
    MTind=sum(M2ndryS(:,3));
    FTind=sum(M2ndryS(:,4));
    Tind=MTind+FTind;
    S1=sum(M2ndryS(:,5));
    S2=sum(M2ndryS(:,6));
    S12=S1+S2;
    S3=sum(M2ndryS(:,7));
    S4=sum(M2ndryS(:,8));
    S34=S3+S4;
    S5=sum(M2ndryS(:,9));
    S6=sum(M2ndryS(:,10));
    S56=S5+S6;
    S7=sum(M2ndryS(:,11));
    S8=sum(M2ndryS(:,12));
    S78=S7+S8;
    S9=sum(M2ndryS(:,13));
    S10=sum(M2ndryS(:,14));
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
title('Mayweyni 2ndry School Population Figure','FontSize',12)
elseif indx4==2
    %Alene 2ndry School,A2ndryS
   
    A2ndryS=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
      104,75,330,553,91,80,59,100,16,21,110,200,12,4];
  [n,m]=size(A2ndryS);
  for i=1:n
    MHH=sum(A2ndryS(:,1));
    FHH=sum(A2ndryS(:,2));
    THH=MHH+FHH;
    MTind=sum(A2ndryS(:,3));
    FTind=sum(A2ndryS(:,4));
    Tind=MTind+FTind;
    S1=sum(A2ndryS(:,5));
    S2=sum(A2ndryS(:,6));
    S12=S1+S2;
    S3=sum(A2ndryS(:,7));
    S4=sum(A2ndryS(:,8));
    S34=S3+S4;
    S5=sum(A2ndryS(:,9));
    S6=sum(A2ndryS(:,10));
    S56=S5+S6;
    S7=sum(A2ndryS(:,11));
    S8=sum(A2ndryS(:,12));
    S78=S7+S8;
    S9=sum(A2ndryS(:,13));
    S10=sum(A2ndryS(:,14));
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
title('Alene 2ndry School Population Figure','FontSize',12)
elseif indx4==3
    %Mekelle Health Center,MHC
    
    MHC=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
        22,75,208,273,64,54,30,48,15,30,89,122,10,19];
    [n,m]=size(MHC);
    for i=1:n
    MHH=sum(MHC(:,1));
    FHH=sum(MHC(:,2));
    THH=MHH+FHH;
    MTind=sum(MHC(:,3));
    FTind=sum(MHC(:,4));
    Tind=MTind+FTind;
    S1=sum(MHC(:,5));
    S2=sum(MHC(:,6));
    S12=S1+S2;
    S3=sum(MHC(:,7));
    S4=sum(MHC(:,8));
    S34=S3+S4;
    S5=sum(MHC(:,9));
    S6=sum(MHC(:,10));
    S56=S5+S6;
    S7=sum(MHC(:,11));
    S8=sum(MHC(:,12));
    S78=S7+S8;
    S9=sum(MHC(:,13));
    S10=sum(MHC(:,14));
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
title('Mekelle Health Center Population Figure','FontSize',12)
elseif indx4==4
    %Midregenet Collective Center,MCC
    
    MCC=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
        28,58,63,105,22,29,14,18,1,1,2,48,24,9];
    [n,m]=size(MCC);
 for i=1:n
    MHH=sum(MCC(:,1));
    FHH=sum(MCC(:,2));
    THH=MHH+FHH;
    MTind=sum(MCC(:,3));
    FTind=sum(MCC(:,4));
    Tind=MTind+FTind;
    S1=sum(MCC(:,5));
    S2=sum(MCC(:,6));
    S12=S1+S2;
    S3=sum(MCC(:,7));
    S4=sum(MCC(:,8));
    S34=S3+S4;
    S5=sum(MCC(:,9));
    S6=sum(MCC(:,10));
    S56=S5+S6;
    S7=sum(MCC(:,11));
    S8=sum(MCC(:,12));
    S78=S7+S8;
    S9=sum(MCC(:,13));
    S10=sum(MCC(:,14));
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
title('Midregenet Collective Center Population Figure','FontSize',12)
elseif indx4==5
    %Mekelle IDP Population Figure,MIDPPF
    MIDPPF=[
       % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
       590,683,2988,3223,355,368,0,0,0,0,1295,1467,99,97 %Mayweyni 2ndry School
       104,75,330,553,91,80,59,100,16,21,110,200,12,4 %Alene 2ndry School
       22,75,208,273,64,54,30,48,15,30,89,122,10,19 %Mekelle Health Center
       28,58,63,105,22,29,14,18,1,1,2,48,24,9 %Midregenet Colective Center
       ];
   [n,m]=size(MIDPPF);
   for i=1:n
     MHH=sum(MIDPPF(:,1));
    FHH=sum(MIDPPF(:,2));
    THH=MHH+FHH;
    MTind=sum(MIDPPF(:,3));
    FTind=sum(MIDPPF(:,4));
    Tind=MTind+FTind;
    S1=sum(MIDPPF(:,5));
    S2=sum(MIDPPF(:,6));
    S12=S1+S2;
    S3=sum(MIDPPF(:,7));
    S4=sum(MIDPPF(:,8));
    S34=S3+S4;
    S5=sum(MIDPPF(:,9));
    S6=sum(MIDPPF(:,10));
    S56=S5+S6;
    S7=sum(MIDPPF(:,11));
    S8=sum(MIDPPF(:,12));
    S78=S7+S8;
    S9=sum(MIDPPF(:,13));
    S10=sum(MIDPPF(:,14));
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
title('Mekelle Total IDPs Population Figure','FontSize',12)
    
end
 elseif indx2==2
     %Adigrat IDPs List,AIDPsL
AIDPsLType={'Edaga-hamus 2ndry School','Meda-agame 2ndry School','Finote-Birhane 2ndry School','Adigrat Population Figure'};
Prompt5='Select IDPs Name:';
Bname='Adigrat IDPs List:';
Bsize=[400,100];
[indx5,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',Prompt5,'SelectionMode','Single','ListString',AIDPsLType);  
if indx5==1
    %Edaga-hamus 2ndry School,Eh2ndryS
    Eh2ndryS=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
          54,90,262,339,46,62,49,58,29,51,126,165,12,3 %Edagahamus inside camp
         194,381,704,751,154,194,108,99,132,98,302,343,8,10 %Edagahamus outside camp
          ];
      [n,m]=size(Eh2ndryS);
      for i=1:n
    MHH=sum(Eh2ndryS(:,1));
    FHH=sum(Eh2ndryS(:,2));
    THH=MHH+FHH;
    MTind=sum(Eh2ndryS(:,3));
    FTind=sum(Eh2ndryS(:,4));
    Tind=MTind+FTind;
    S1=sum(Eh2ndryS(:,5));
    S2=sum(Eh2ndryS(:,6));
    S12=S1+S2;
    S3=sum(Eh2ndryS(:,7));
    S4=sum(Eh2ndryS(:,8));
    S34=S3+S4;
    S5=sum(Eh2ndryS(:,9));
    S6=sum(Eh2ndryS(:,10));
    S56=S5+S6;
    S7=sum(Eh2ndryS(:,11));
    S8=sum(Eh2ndryS(:,12));
    S78=S7+S8;
    S9=sum(Eh2ndryS(:,13));
    S10=sum(Eh2ndryS(:,14));
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
title('Edagahamus Population Figure','FontSize',12)  
elseif indx5==2
    %Meda-agame 2ndry School,Ma2ndryS
    Ma2ndryS=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
        0,0,0,0,15,16,230,221,23,34,100,100,6,5 ];
    [n,m]=size(Ma2ndryS);
    for i=1:n
    MHH=sum(Ma2ndryS(:,1));
    FHH=sum(Ma2ndryS(:,2));
    THH=150;
    MTind=sum(Ma2ndryS(:,3));
    FTind=sum(Ma2ndryS(:,4));
    Tind=750;
    S1=sum(Ma2ndryS(:,5));
    S2=sum(Ma2ndryS(:,6));
    S12=S1+S2;
    S3=sum(Ma2ndryS(:,7));
    S4=sum(Ma2ndryS(:,8));
    S34=S3+S4;
    S5=sum(Ma2ndryS(:,9));
    S6=sum(Ma2ndryS(:,10));
    S56=S5+S6;
    S7=sum(Ma2ndryS(:,11));
    S8=sum(Ma2ndryS(:,12));
    S78=S7+S8;
    S9=sum(Ma2ndryS(:,13));
    S10=sum(Ma2ndryS(:,14));
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
title('Meda-agame 2ndry School Population Figure','FontSize',12)
elseif indx5==3
    %Finote-Birhane 2ndry School,FB2ndryS
    FB2ndryS=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
        0,0,0,0,13,25,359,359,100,100,250,250,25,19 ];
    [n,m]=size(FB2ndryS);
    for i=1:n
    MHH=sum(FB2ndryS(:,1));
    FHH=sum(FB2ndryS(:,2));
    THH=300;
    MTind=sum(FB2ndryS(:,3));
    FTind=sum(FB2ndryS(:,4));
    Tind=1500;
    S1=sum(FB2ndryS(:,5));
    S2=sum(FB2ndryS(:,6));
    S12=S1+S2;
    S3=sum(FB2ndryS(:,7));
    S4=sum(FB2ndryS(:,8));
    S34=S3+S4;
    S5=sum(FB2ndryS(:,9));
    S6=sum(FB2ndryS(:,10));
    S56=S5+S6;
    S7=sum(FB2ndryS(:,11));
    S8=sum(FB2ndryS(:,12));
    S78=S7+S8;
    S9=sum(FB2ndryS(:,13));
    S10=sum(FB2ndryS(:,14));
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
title('Finote Birhan 2ndry School Population Figure','FontSize',12)
elseif indx5==4
    %Adigrat Population Figure,APF
    APF=[
        % MHH,FHH,MTind,FTind,0M4(S1),0F4(S2),5M14(S3),5F14(S4),15M17(S5),15F17(S6),18M59(S7),18F59(S8),>60M(S9),>60F(S10)
       54,90,262,339,46,62,49,58,29,51,126,165,12,3 
      194,381,704,751,154,194,108,99,132,98,302,343,8,10 
      0,0,0,0,15,16,230,221,23,34,100,100,6,5
      0,0,0,0,13,25,359,359,100,100,250,250,25,19 ];
  [n,m]=size(APF);
  for i=1:n
    MHH=sum(APF(:,1));
    FHH=sum(APF(:,2));
    THH=MHH+FHH;
    MTind=sum(APF(:,3));
    FTind=sum(APF(:,4));
    Tind=MTind+FTind;
    S1=sum(APF(:,5));
    S2=sum(APF(:,6));
    S12=S1+S2;
    S3=sum(APF(:,7));
    S4=sum(APF(:,8));
    S34=S3+S4;
    S5=sum(APF(:,9));
    S6=sum(APF(:,10));
    S56=S5+S6;
    S7=sum(APF(:,11));
    S8=sum(APF(:,12));
    S78=S7+S8;
    S9=sum(APF(:,13));
    S10=sum(APF(:,14));
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
title('Adigrat Total IDPs Population Figure','FontSize',12)
 end
 end
