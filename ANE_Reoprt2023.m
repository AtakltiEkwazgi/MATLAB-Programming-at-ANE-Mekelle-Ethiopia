
clc
clear 
close all
%% ANE Report 2023,YReport
YReportType={'2023'};
prompt13='Select the Specfic Year:';
Bname='Year of Calander:';
Bsize=[300,200];
[indx13,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt13,'SelectionMode','Single','ListString',YReportType);

%% ANE Report 2023,ANEReport
ANEReportType={'IDPs','WHH','Refugee'};
prompt14='Project Type:';
Bname='ANE Report  2023:';
Bsize=[300,200];
[indx14,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt14,'SelectionMode','Single','ListString',ANEReportType);
%List of Quarterly,LQ

 LQType={'1st Quarter','2nd Quarter','3rd Quarter','4th Quarter'};
 prompt15='Select the Specfic Quarterly:';
 Bname='4th Quarter 2023:';
 Bsize=[300,200];
 [indx15,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt15,'SelectionMode','Single','ListString',LQType);
%
if indx2==1
%List of month 1st Quarter,LM1stQ
 LM1stQ={'January','February','March','April','May','June','July','August','September','October','November','December'};
 prompt3='Select the Specfic Month:';
 Bname='4th Quarter 2022:';
 Bsize=[300,200];
 [indx3,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt3,'SelectionMode','Single','ListString',LM1stQType);
 
end
 syms  W1 W2 W3 W4
 
%% 2023 IDP Report
if indx1==1 && indx2==1 && indx3==1 
    %%October Weekly Report,OWR
    OWRType={'W1','W2','W3','W4','October Report'}
    prompt4='October weekly IDP Report:';
    Bname='2023 1st Quarter IDP Report:';
    Bsize=[300,100];
    [indx4,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt4,'SelectionMode','Single','ListString',OWRType);
    %%Week one Report,W1
    if indx4==1
        W1=1
    %%Week two Report,W2
    elseif indx4==2
        W2=2
    %%Week three Report,W3
    elseif indx4==3
        W3=3
    %%Week Four Report,W4
    elseif indx4==4
        W4=4
    end
elseif indx1==1 && indx2==1 && indx3==2 
    %%November Weekly Report,NWR
    NWRType={'W1','W2','W3','W4','November Report'}
    prompt5='November weekly IDP Report:';
    Bname='2023 1st Quarter IDP Report:';
    Bsize=[300,100];
    [indx5,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt5,'SelectionMode','Single','ListString',NWRType);
    %%Week one Report,W1
    if indx5==1
        W1=1
    %%Week two Report,W2
    elseif indx5==2
        W2=2
    %%Week three Report,W3
    elseif indx5==3
        W3=3
    %%Week Four Report,W4
    elseif indx5==4
        W4=4
    end
elseif indx1==1 && indx2==1 && indx3==3 
    %%December Weekly Report,DWR
    DWRType={'W1','W2','W3','W4','December Report','1st Quarter 2023 Report'}
    prompt6='December weekly IDP Report:';
    Bname='2023 1st Quarter IDP Report:';
    Bsize=[300,100];
    [indx6,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt6,'SelectionMode','Single','ListString',DWRType);
    %%Week one Report,W1
    if indx6==1
        W1=1
    %%Week two Report,W2
    elseif indx6==2
        W2=2
    %%Week three Report,W3
    elseif indx6==3
        W3=3
    %%Week Four Report,W4
    elseif indx6==4
        W4=4
    end
end
if indx2==2
%List of month 2nd Quarter,LM2ndQ
 LM2ndQ={'January','February','March','April','May','June','July','August','September','October','November','December'};
 prompt3='Select the Specfic Month:';
 Bname='4th Quarter 2022:';
 Bsize=[300,200];
 [indx3,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt3,'SelectionMode','Single','ListString',LM2ndQType);
end
 
 if indx2==3
%List of month 3rd Quarter,LM3rdQ
 LM3rdQ={'January','February','March','April','May','June','July','August','September','October','November','December'};
 prompt3='Select the Specfic Month:';
 Bname='4th Quarter 2022:';
 Bsize=[300,200];
 [indx3,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt3,'SelectionMode','Single','ListString',LM3rdQType);
 
 end
 
if indx2==4
 %List of month 4th Quarter,LM4thQ
LM4thQ={'January','February','March','April','May','June','July','August','September','October','November','December'};
 prompt3='Select the Specfic Month:';
 Bname='4th Quarter 2022:';
 Bsize=[300,200];
 [indx3,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt3,'SelectionMode','Single','ListString',LM4thQType);
end

%% 2022 WHH Report
if indx1==2 && indx2==1 && indx3==1 
    %%October Weekly Report,WHH
    OWRType={'W1','W2','W3','W4'}
    prompt7='October weekly WHH Report:';
    Bname='2022 4th Quarter WHH Report:';
    Bsize=[300,100];
    [indx7,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt7,'SelectionMode','Single','ListString',OWRType);
    %%Week one Report,W1
    if indx7==1
        W1=1
    %%Week two Report,W2
    elseif indx7==2
        W2=2
    %%Week three Report,W3
    elseif indx7==3
        W3=3
    %%Week Four Report,W4
    elseif indx7==4
        W4=4
    end
elseif indx1==2 && indx2==1 && indx3==2 
    %%November Weekly Report,NWR
    NWRType={'W1','W2','W3','W4'}
    prompt8='November weekly WHH Report:';
    Bname='2022 4th Quarter WHH Report:';
    Bsize=[300,100];
    [indx8,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt8,'SelectionMode','Single','ListString',NWRType);
    %%Week one Report,W1
    if indx8==1
        W1=1
    %%Week two Report,W2
    elseif indx8==2
        W2=2
    %%Week three Report,W3
    elseif indx8==3
        W3=3
    %%Week Four Report,W4
    elseif indx8==4
        W4=4
    end
elseif indx1==2 && indx2==1 && indx3==3 
    %%December Weekly Report,DWR
    DWRType={'W1','W2','W3','W4'}
    prompt9='December weekly WHH Report:';
    Bname='2022 4th Quarter WHH Report:';
    Bsize=[300,100];
    [indx9,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt9,'SelectionMode','Single','ListString',DWRType);
    %%Week one Report,W1
    if indx9==1
        W1=1
    %%Week two Report,W2
    elseif indx9==2
        W2=2
    %%Week three Report,W3
    elseif indx9==3
        W3=3
    %%Week Four Report,W4
    elseif indx9==4
        W4=4
    end
end
 

%% 2022 Refugee Report,RRefugee
if indx1==3 && indx2==1 && indx3==1 
    %%October Weekly Report,WHH
    OWRType={'W1','W2','W3','W4'}
    prompt10='October weekly Refugee Report:';
    Bname='2022 4th Quarter Refugee Report:';
    Bsize=[300,100];
    [indx10,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt10,'SelectionMode','Single','ListString',OWRType);
    %%Week one Report,W1
    if indx10==1
        W1=1
    %%Week two Report,W2
    elseif indx10==2
        W2=2
    %%Week three Report,W3
    elseif indx10==3
        W3=3
    %%Week Four Report,W4
    elseif indx10==4
        W4=4
    end
elseif indx1==3 && indx2==1 && indx3==2 
    %%November Weekly Report,NWR
    NWRType={'W1','W2','W3','W4'}
    prompt11='November weekly Refugee Report:';
    Bname='2022 4th Quarter Refugee Report:';
    Bsize=[300,100];
    [indx11,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt11,'SelectionMode','Single','ListString',NWRType);
    %%Week one Report,W1
    if indx11==1
        W1=1
    %%Week two Report,W2
    elseif indx11==2
        W2=2
    %%Week three Report,W3
    elseif indx11==3
        W3=3
    %%Week Four Report,W4
    elseif indx11==4
        W4=4
    end
elseif indx1==3 && indx2==1 && indx3==3 
    %%December Weekly Report,DWR
    DWRType={'W1','W2','W3','W4'}
    prompt12='December weekly Refugee Report:';
    Bname='2022 4th Quarter Refugee Report:';
    Bsize=[300,100];
    [indx12,tf]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt12,'SelectionMode','Single','ListString',DWRType);
    %%Week one Report,W1
    if indx12==1
        W1=1
    %%Week two Report,W2
    elseif indx12==2
        W2=2
    %%Week three Report,W3
    elseif indx12==3
        W3=3
    %%Week Four Report,W4
    elseif indx12==4
        W4=4
    end
end


