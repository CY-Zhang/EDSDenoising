%%Set figure color size and use tight subplot
fig = figure('color',[1 1 1],'Position',[0 0 1500 1000]);
%set(fig,'Position',[0 0 1500 1000])
ima = tight_subplot(2,2,[0.1 0.05],[0.1 0.01],[0.05 0.01]);
%%Plot PSNR vs Patch Size
axes(ima(1));
plot(Random_Patch(:,1),Random_Patch(:,2),Random_Patch(:,1),Random_Patch(:,3),Random_Patch(:,1),Random_Patch(:,4),...
Random_Patch(:,1),Random_Patch(:,6),'LineWidth',2);hold on;
scatter(Random_Patch(:,1),Random_Patch(:,2),'filled','MarkerFaceColor','0 .447 .741');hold on;
scatter(Random_Patch(:,1),Random_Patch(:,3),'filled','MarkerFaceColor','.85 .325 .098');hold on;
scatter(Random_Patch(:,1),Random_Patch(:,4),'filled','MarkerFaceColor','.929 .694 .125');hold on;
scatter(Random_Patch(:,1),Random_Patch(:,6),'filled','MarkerFaceColor','.494 .184 .556');hold on;
legend1 = legend('O K{\alpha}','Ca K{\alpha}','Ti K{\alpha}','Nd L{\alpha}','Location','northwest');
set(legend1,'FontSize',18);
set(gca,'FontSize',18);
ylabel('PSNR','FontSize',22);
xlabel('Patch Size','FontSize',22);
axis([5,35,10,40]);

axes(ima(2));
plot(Random_Axis(:,1),Random_Axis(:,2),Random_Axis(:,1),Random_Axis(:,3),Random_Axis(:,1),Random_Axis(:,4),...
    Random_Axis(:,1),Random_Axis(:,6),'LineWidth',2);hold on;
scatter(Random_Axis(:,1),Random_Axis(:,2),'filled','MarkerFaceColor','0 .447 .741');hold on;
scatter(Random_Axis(:,1),Random_Axis(:,3),'filled','MarkerFaceColor','.85 .325 .098');hold on;
scatter(Random_Axis(:,1),Random_Axis(:,4),'filled','MarkerFaceColor','.929 .694 .125');hold on;
scatter(Random_Axis(:,1),Random_Axis(:,6),'filled','MarkerFaceColor','.494 .184 .556');hold on;
%legend2 = legend('O K{\alpha}','Ca K{\alpha}','Ti K{\alpha}','Nd L{\alpha}','Location','northeast');
%set(legend2,'FontSize',18);
set(gca,'FontSize',18);
ylabel('PSNR','FontSize',22);
xlabel('Number of Axis','FontSize',22);
axis([1,20,10,40]);

axes(ima(3));
plot(Random_Cluster(:,1),Random_Cluster(:,2),Random_Cluster(:,1),Random_Cluster(:,3),...
    Random_Cluster(:,1),Random_Cluster(:,4),Random_Cluster(:,1),Random_Cluster(:,6),'LineWidth',2);hold on;
scatter(Random_Cluster(:,1),Random_Cluster(:,2),'filled','MarkerFaceColor','0 .447 .741');hold on;
scatter(Random_Cluster(:,1),Random_Cluster(:,3),'filled','MarkerFaceColor','.85 .325 .098');hold on;
scatter(Random_Cluster(:,1),Random_Cluster(:,4),'filled','MarkerFaceColor','.929 .694 .125');hold on;
scatter(Random_Cluster(:,1),Random_Cluster(:,6),'filled','MarkerFaceColor','.494 .184 .556');hold on;
%legend3 = legend('O K{\alpha}','Ca K{\alpha}','Ti K{\alpha}','Nd L{\alpha}','Location','northeast');
%set(legend3,'FontSize',18);
set(gca,'FontSize',18);
ylabel('PSNR','FontSize',22);
xlabel('Number of Clusters','FontSize',22);
axis([1,30,10,40]);

axes(ima(4));
plot(Input_PSNR(:,1),Output_PSNR(:,1),Input_PSNR(:,2),Output_PSNR(:,2),...
    Input_PSNR(:,3),Output_PSNR(:,3),Input_PSNR(:,5),Output_PSNR(:,5),'LineWidth',2);hold on;
scatter(Input_PSNR(:,1),Output_PSNR(:,1),'filled','MarkerFaceColor','0 .447 .741');hold on;
scatter(Input_PSNR(:,2),Output_PSNR(:,2),'filled','MarkerFaceColor','.85 .325 .098');hold on;
scatter(Input_PSNR(:,3),Output_PSNR(:,3),'filled','MarkerFaceColor','.929 .694 .125');hold on;
scatter(Input_PSNR(:,5),Output_PSNR(:,5),'filled','MarkerFaceColor','.494 .184 .556');hold on;
%legend4 = legend('O K{\alpha}','Ca K{\alpha}','Ti K{\alpha}','Nd L{\alpha}','Location','northeast');
%set(legend4,'FontSize',18);
set(gca,'FontSize',18);
ylabel('Output PSNR','FontSize',22);
xlabel('Input PSNR','FontSize',22);
%axis([1,30,10,40]);