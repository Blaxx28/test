close all; clearvars; clc

figure(1)%绘制DR29-5样品的ZFC-FC曲线
x1=xlsread('C:\Acadamic software\Matlab install\matlab scripts\Low Temperature\ZFC_FC.xlsx','d4:d13');
y1=xlsread('C:\Acadamic software\Matlab install\matlab scripts\Low Temperature\ZFC_FC.xlsx','e4:e13');
x2=xlsread('C:\Acadamic software\Matlab install\matlab scripts\Low Temperature\ZFC_FC.xlsx','d15:d19');
y2=xlsread('C:\Acadamic software\Matlab install\matlab scripts\Low Temperature\ZFC_FC.xlsx','e15:e19');
x3=xlsread('C:\Acadamic software\Matlab install\matlab scripts\Low Temperature\ZFC_FC.xlsx','d21:d32');
y3=xlsread('C:\Acadamic software\Matlab install\matlab scripts\Low Temperature\ZFC_FC.xlsx','e21:e32');

plot(x1,y1,'ro',x2,y2,'bo',x3,y3,'co','MarkerSize',5.5,'linewidth',0.75);%将三个不同的数据点画在同一张图上
title('15 K','position',[1,8.5],'FontSize',12);%position设置title的具体位置，Fontsize设置title字体的大小
ylabel('M_F_C (Am^2/kg)')%左纵坐标的标题
xlabel('M_Z_F_C (Am^2/kg)') %横坐标的标题
% set(gca,'XLim',[0 300]);%X轴的数据显示范围
set(gca,'linewidth',1)%坐标轴的线宽为1磅
set(gca,'looseInset',[0 0 0.03 0.05]);% 宽度方向空白区域0.03， 高度方向空白区域0.05
pbaspect([1 1 1]);%使画的图等比例
legend('redbeds','grey sandstone','limestone','Location','SouthEast')%location设置legend的具体位置,SouthEast为图内右下方
hold on
line([0,7],[0,7],'color','k','linestyle','-');
line([0,5],[0,10],'color','k','linestyle','-');
text(5.5,5,'M_F_C/M_Z_F_C=1','rotation',35)%添加的文字的坐标位置及旋转的角度
text(4.1,7.5,'M_F_C/M_Z_F_C=2','rotation',53)%添加的文字的坐标位置及旋转的角度