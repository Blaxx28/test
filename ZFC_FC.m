close all; clearvars; clc

figure(1)%����DR29-5��Ʒ��ZFC-FC����
x1=xlsread('C:\Acadamic software\Matlab install\matlab scripts\Low Temperature\ZFC_FC.xlsx','d4:d13');
y1=xlsread('C:\Acadamic software\Matlab install\matlab scripts\Low Temperature\ZFC_FC.xlsx','e4:e13');
x2=xlsread('C:\Acadamic software\Matlab install\matlab scripts\Low Temperature\ZFC_FC.xlsx','d15:d19');
y2=xlsread('C:\Acadamic software\Matlab install\matlab scripts\Low Temperature\ZFC_FC.xlsx','e15:e19');
x3=xlsread('C:\Acadamic software\Matlab install\matlab scripts\Low Temperature\ZFC_FC.xlsx','d21:d32');
y3=xlsread('C:\Acadamic software\Matlab install\matlab scripts\Low Temperature\ZFC_FC.xlsx','e21:e32');

plot(x1,y1,'ro',x2,y2,'bo',x3,y3,'co','MarkerSize',5.5,'linewidth',0.75);%��������ͬ�����ݵ㻭��ͬһ��ͼ��
title('15 K','position',[1,8.5],'FontSize',12);%position����title�ľ���λ�ã�Fontsize����title����Ĵ�С
ylabel('M_F_C (Am^2/kg)')%��������ı���
xlabel('M_Z_F_C (Am^2/kg)') %������ı���
% set(gca,'XLim',[0 300]);%X���������ʾ��Χ
set(gca,'linewidth',1)%��������߿�Ϊ1��
set(gca,'looseInset',[0 0 0.03 0.05]);% ��ȷ���հ�����0.03�� �߶ȷ���հ�����0.05
pbaspect([1 1 1]);%ʹ����ͼ�ȱ���
legend('redbeds','grey sandstone','limestone','Location','SouthEast')%location����legend�ľ���λ��,SouthEastΪͼ�����·�
hold on
line([0,7],[0,7],'color','k','linestyle','-');
line([0,5],[0,10],'color','k','linestyle','-');
text(5.5,5,'M_F_C/M_Z_F_C=1','rotation',35)%��ӵ����ֵ�����λ�ü���ת�ĽǶ�
text(4.1,7.5,'M_F_C/M_Z_F_C=2','rotation',53)%��ӵ����ֵ�����λ�ü���ת�ĽǶ�