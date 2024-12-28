clc
clear all
clc
%%NFI=[Bket Smat Mnet Kset Jcan Buket Soap Plsheet Slamp Soap2 Underwear SanitaryPad]
NFI=[
1	1	1	1	1	1	0	1	1	0	1	1
7	7	5	4	6	4	0	4	4	0	4	4
4	4	3	2	3	2	0	2	2	0	2	2
16	16	14	14	16	14	0	14	14	0	8	8
12	12	9	9	12	9	0	9	9	0	4	4
23	23	21	21	23	21	0	21	21	0	5	5
4	4	3	3	4	3	0	3	3	0	1	1
4	4	3	3	4	3	0	3	3	0	2	2
85	85	84	84	85	84	0	84	84	0	30	30
3	3	3	3	3	3	0	3	3	0	3	3
25	25	19	18	24	18	0	18	18	0	15	15
5	7	5	5	5	5	0	5	5	0	4	4
9	9	7	7	9	7	0	7	7	0	3	3
15	15	14	14	15	14	0	14	14	0	2	2
6	6	5	5	6	5	0	5	5	0	3	3
2	2	2	2	2	2	0	2	2	0	1	1
1	1	1	1	1	1	0	1	1	0	0	0
5	5	4	4	5	4	0	4	4	0	3	3
4	4	3	2	3	2	0	2	2	0	2	2
6	6	4	3	5	3	0	3	3	0	5	5
2	2	2	2	2	2	0	2	2	0	0	0
2	2	2	2	2	2	0	2	2	0	0	0
10	10	7	6	9	6	0	6	6	0	7	7
3	3	2	1	2	1	0	1	1	0	1	1
2	2	2	2	2	2	0	2	2	0	2	2
5	5	3	2	3	2	0	2	2	0	4	4
19	19	14	11	15	11	0	11	11	0	12	12
9	9	5	4	8	4	9	4	4	0	3	3
3	3	3	3	3	3	3	3	3	0	1	1
1	1	1	1	1	1	1	1	1	0	0	0
3	3	2	1	2	1	3	1	1	0	1	1
1	1	1	1	1	1	1	1	1	0	1	1
1	1	1	1	1	1	1	1	1	0	0	0
2	2	1	1	2	1	2	1	1	0	3	3
37	37	25	23	34	23	23	23	23	0	22	22
11	11	9	8	10	8	8	8	8	0	5	5
2	2	2	2	2	2	2	2	2	0	1	1
3	2	2	3	2	2	2	2	2	0	1	1
9	9	6	6	9	6	0	6	6	0	1	1
6	6	4	4	6	4	0	4	4	0	4	4
6	6	4	3	5	3	0	3	3	0	5	5
9	9	7	6	8	6	0	6	6	0	3	3
5	5	4	4	5	4	0	4	4	0	2	2
9	9	7	7	9	7	0	7	7	0	4	4
26	26	19	15	22	15	0	15	15	0	14	14
28	28	24	24	25	24	0	24	24	0	14	14
3	3	2	2	3	2	0	2	2	0	3	3
5	5	4	4	5	4	0	4	4	0	2	2
1	1	1	1	1	1	0	1	1	0	1	1
16	16	10	9	15	9	0	9	9	0	8	8
5	5	4	4	5	4	0	4	4	0	3	3
];
[m,n]=size(NFI);
for i=1:m

SBket=sum(NFI(:,1));
SSmat=sum(NFI(:,2));
SMnet=sum(NFI(:,3));
SKset=sum(NFI(:,4));
SJcan=sum(NFI(:,5));
SBuket=sum(NFI(:,6));
SSoap=sum(NFI(:,7));
SPlsheet=sum(NFI(:,8));
SSlamp=sum(NFI(:,9));
SSoap2=sum(NFI(:,10));
SUwear=sum(NFI(:,11));
SSpad=sum(NFI(:,12));
end

%% Centeral Zone
C=[1	1
4	10
2	6
14	19
9	17
21	27
3	5
3	6
84	97
3	3
18	35
5	7
7	14
14	18
5	8
2	3
1	1
4	6
2	7
3	9
];
[m,n]=size(C);
for i=1:m
THHC=sum(C(:,1));
TINc=sum(C(:,2));
end
%%Eastern Zone
E=[6	14
4	12
3	10
6	13
4	9
7	14
15	41
24	38
2	5
4	7
1	1
9	28
4	8
];
[m,n]=size(E);
for i=1:m
THHE=sum(E(:,1));
TINe=sum(E(:,2));
end
%%Southeaster Zone
SE=[6	16
1	5
2	4
2	10
11	35
];
[m,n]=size(SE);
for i=1:m
THHSE=sum(SE(:,1));
TINse=sum(SE(:,2));
end
%%Souther Zone
S=[2	2
2	2
];
[m,n]=size(S);
for i=1:m
THHS=sum(S(:,1));
TINs=sum(S(:,2));
end
%%Northwaster Zone
NW=[4	17
3	5
1	1
1	6
1	2
1	1
1	4
23	57
8	16
2	2
2	5
];
[m,n]=size(NW);
for i=1:m
THHNW=sum(NW(:,1));
TINnw=sum(NW(:,2));
end
%Waster Zone
%W=[]; 
%         THHW=sum(W(:,1));
%         TINw=sum(W(:,2));
%Sum_item=[SBket,SSmat,SMnet,SKset,SJcan,SBuket,SSoap,SPlsheet,SSlamp,SSoap2,SUwear,SSpad]
HH=[THHC,THHE,THHSE,THHS,THHNW]
ToIN=[TINc,TINe,TINse,TINs,TINnw]
 X=categorical({'THH Centeral','THH Eastern','THH South East','THH South','THH North West'}); 
 X=reordercats(X,{'THH Centeral','THH Eastern','THH South East','THH South','THH North West'});
 Y=[THHC THHE THHSE THHS THHNW ];
 b=bar(X,Y)
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
hold on
X=categorical({'TIN Centeral','TIN Eastern','TIN South Eastern','TIN Southern','TIN North Western'}); 
 X=reordercats(X,{'TIN Centeral','TIN Eastern','TIN South Eastern','TIN Southern','TIN North Western'});
 Y=[TINc TINe TINse TINs TINnw];
 b=bar(X,Y)
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')

hold on
 X=categorical({'Blanket','Sleeping Mat','Mosquito net','Kitchen Set','Jerry Can','Bucket','Soap','Plsheet','Solar Lamp','Soap2','Underwear','Sanitary Pad'});
 X=reordercats(X,{'Blanket','Sleeping Mat','Mosquito net','Kitchen Set','Jerry Can','Bucket','Soap','Plsheet','Solar Lamp','Soap2','Underwear','Sanitary Pad'});
 Y=[SBket,SSmat,SMnet,SKset,SJcan,SBuket,SSoap,SPlsheet,SSlamp,SSoap2,SUwear,SSpad];
 b=bar(X,Y)
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
 'VerticalAlignment','bottom')

