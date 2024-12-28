clc
clear 
close all
%% ANE Report 2022,ANEReport
ANEReportType={'IDPs','WHH','Refugee'};
prompt1='Project Type:';
Bname='ANE Report  2022:';
Bsize=[300,200];
[indx1,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt1,'SelectionMode','Single','ListString',ANEReportType);

%% Year of Report,YReport
YReportType={'2022','2023','2024','2025'};
prompt2='Select the Specfic Year:';
Bname='Year of Calander:';
Bsize=[300,200];
[indx2,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt2,'SelectionMode','Single','ListString',YReportType);
if indx2==1
%%List of month,LM
 LMType={'October','November','December'};
 prompt3='Select the Specfic Month:';
 Bname='4th Quarter 2022:';
 Bsize=[300,200];
 [indx3,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt3,'SelectionMode','Single','ListString',LMType);
end
 
%% 2022 IDP Report
if indx1==1 && indx2==1 && indx3==1 
    %%October Weekly Report,OWR
    OWRType={'W1','W2','W3','W4','Oct.Report'};
    prompt4='October weekly IDP Report:';
    Bname='2022 4th Quarter IDP Report:';
    Bsize=[300,100];
    [indx4,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt4,'SelectionMode','Single','ListString',OWRType);
    %%Week one Report,W1
    if indx4==1
        W1=1;     
    %%Week two Report,W2
    elseif indx4==2
        W2=2;    
    %%Week three Report,W3
    elseif indx4==3
        W3=3;
    %%Week Four Report,W4
    elseif indx4==4
        W4=4;  
    elseif indx4==5
        Oct_Report=0;
    end
elseif indx1==1 && indx2==1 && indx3==2 
    %%November Weekly Report,NWR
    NWRType={'W1','W2','W3','W4','Nov.Report'};
    prompt5='November weekly IDP Report:';
    Bname='2022 4th Quarter IDP Report:';
    Bsize=[300,100];
    [indx5,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt5,'SelectionMode','Single','ListString',NWRType);
    %%Week one Report,W1
    if indx5==1
        W1=1;
    %%Week two Report,W2
    elseif indx5==2
        W2=2;
    %%Week three Report,W3
    elseif indx5==3
        W3=3;
    %%Week Four Report,W4
    elseif indx5==4
        W4=4;
    elseif indx5==5
        Nov.Report=0;
    end
elseif indx1==1 && indx2==1 && indx3==3 
    %%December Weekly Report,DWR
    DWRType={'W1','W2','W3','W4','Dec.Report'};
    prompt6='December weekly IDP Report:';
    Bname='2022 4th Quarter IDP Report:';
    Bsize=[300,100];
    [indx6,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt6,'SelectionMode','Single','ListString',DWRType);
    %%Week one Report,W1
    if indx6==1
        W1=1;
    %%Week two Report,W2
    elseif indx6==2
        W2=2;
    %%Week three Report,W3
    elseif indx6==3
        W3=3;
    %%Week Four Report,W4
    elseif indx6==4
        W4=4;
    elseif indx6==5
        Dec.Report=0;
    end
end
if indx1==4
    IDP_Report=sum(Oct.Report+Nov.Report+Dec.Report);
end


%% 2022 WHH Report
if indx1==2 && indx2==1 && indx3==1 
    %%October Weekly Report,WHH
    OWRType={'W1','W2','W3','W4','Oct.Report'};
    prompt7='October weekly WHH Report:';
    Bname='2022 4th Quarter WHH Report:';
    Bsize=[300,100];
    [indx7,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt7,'SelectionMode','Single','ListString',OWRType);
    %%Week one Report,W1
    if indx7==1
        W1=1;
    %%Week two Report,W2
    elseif indx7==2
        W2=2;
    %%Week three Report,W3
    elseif indx7==3
        W3=3;
    %%Week Four Report,W4
    elseif indx7==4
        W4=4;
    elseif indx7==5
        Oct.Report=0;
    end
elseif indx1==2 && indx2==1 && indx3==2 
    %%November Weekly Report,NWR
    NWRType={'W1','W2','W3','W4';'Nov.report'};
    prompt8='November weekly WHH Report:';
    Bname='2022 4th Quarter WHH Report:';
    Bsize=[300,100];
    [indx8,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt8,'SelectionMode','Single','ListString',NWRType);
    %%Week one Report,W1
    if indx8==1
        W1=1;
    %%Week two Report,W2
    elseif indx8==2
        W2=2;
    %%Week three Report,W3
    elseif indx8==3
        W3=3;
    %%Week Four Report,W4
    elseif indx8==4
        W4=4;
    elseif indx8==5
        Nov.Report=0;
    end
elseif indx1==2 && indx2==1 && indx3==3 
    %%December Weekly Report,DWR
    DWRType={'W1','W2','W3','W4','Dec.Report'};
    prompt9='December weekly WHH Report:';
    Bname='2022 4th Quarter WHH Report:';
    Bsize=[300,100];
    [indx9,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt9,'SelectionMode','Single','ListString',DWRType);
    %%Week one Report,W1
    if indx9==1
        W1=1;
        disp(W1)
    %%Week two Report,W2
    elseif indx9==2
        W2=2;
        disp(W2)
    %%Week three Report,W3
    elseif indx9==3
        W3=3;
        disp(W3)
    %%Week Four Report,W4
    elseif indx9==4
        W4=4;
        disp(W4)
        
    elseif indx9==5
        Dec.Report=0;
  
    end
end
 

%% 2022 Refugee Report,RRefugee
if indx1==3 && indx2==1 && indx3==1 
    %%October Weekly Report,WHH
    OWRType={'W1','W2','W3','W4','Oct.Report'};
    prompt10='October weekly Refugee Report:';
    Bname='2022 4th Quarter Refugee Report:';
    Bsize=[300,100];
    [indx10,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt10,'SelectionMode','Single','ListString',OWRType);
    %%Week one Report,W1
    if indx10==1
        W1=1;
    %%Week two Report,W2
    elseif indx10==2
        W2=2;
    %%Week three Report,W3
    elseif indx10==3
        W3=3;
    %%Week Four Report,W4
    elseif indx10==4
        W4=4;
    elseif indx10==5
        Oct_report=0;
    end
elseif indx1==3 && indx2==1 && indx3==2 
    %%November Weekly Report,NWR
    NWRType={'W1','W2','W3','W4','Nov.Report'};
    prompt11='November weekly Refugee Report:';
    Bname='2022 4th Quarter Refugee Report:';
    Bsize=[300,100];
    [indx11,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt11,'SelectionMode','Single','ListString',NWRType);
    %%Week one Report,W1
    if indx11==1
        W1=1;
    %%Week two Report,W2
    elseif indx11==2
        W2=2;
    %%Week three Report,W3
    elseif indx11==3
        W3=3;
    %%Week Four Report,W4
    elseif indx11==4
        W4=4;
    elseif indx11==5
        Nov.Report=0;
    end
elseif indx1==3 && indx2==1 && indx3==3 
    %%December Weekly Report,DWR
    DWRType={'W1','W2','W3','W4','Dec.Report'};
    prompt12='December weekly Refugee Report:';
    Bname='2022 4th Quarter Refugee Report:';
    Bsize=[300,100];
    [indx12,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt12,'SelectionMode','Single','ListString',DWRType);
    %%Week one Report,W1
    if indx12==1
        W1=1;
    %%Week two Report,W2
    elseif indx12==2
        W2=2;
    %%Week three Report,W3
    elseif indx12==3
        W3=3;
    %%Week Four Report,W4
    elseif indx12==4
        W4=4;
    elseif indx12==5
        Dec.Report=0;
    end
end





