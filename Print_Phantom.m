figure1 = figure('Color',[1 1 1]);
set(figure1,'Position',[0 0 1500 900]);
ima = tight_subplot(3,6,[0.01 0.01],[0.1,0.1],[0.03 0]);
clims1 = [0,6];
clims2 = [0,2];
clims3 = [0,10];
axes(ima(1)); imagesc(NP_truth(:,:,5),clims1);axis off;colormap gray;title('Nd L{\alpha} NPs');
axes(ima(2)); imagesc(NP_truth(:,:,2),clims2);axis off;colormap gray;title('Ca K{\alpha} NPs');
axes(ima(3)); imagesc(random_truth(:,:,2),clims2);axis off;colormap gray;title('Ca K{\alpha} Random');
axes(ima(4)); imagesc(uniform_truth(:,:,2),clims2);axis off;colormap gray;title('Ca K{\alpha} Uniform');
axes(ima(5)); imagesc(uniform_truth(:,:,1),clims1);axis off;colormap gray;title('O K{\alpha}');
axes(ima(6)); imagesc(uniform_truth(:,:,3),clims3);axis off;colormap gray;title('Ti K{\alpha}');

axes(ima(7)); imagesc(NP_pn(:,:,5),clims1);axis off;colormap gray;
axes(ima(8)); imagesc(NP_pn(:,:,2),clims2);axis off;colormap gray;
axes(ima(9)); imagesc(random_pn(:,:,2),clims2);axis off;colormap gray;
axes(ima(10)); imagesc(uniform_pn(:,:,2),clims2);axis off;colormap gray;
axes(ima(11)); imagesc(uniform_pn(:,:,1),clims1);axis off;colormap gray;
axes(ima(12)); imagesc(uniform_pn(:,:,3),clims3);axis off;colormap gray;

axes(ima(13)); imagesc(NP_fil(:,:,5),clims1);axis off;colormap gray;
axes(ima(14)); imagesc(NP_fil(:,:,2),clims2);axis off;colormap gray;
axes(ima(15)); imagesc(random_fil(:,:,2),clims2);axis off;colormap gray;
axes(ima(16)); imagesc(uniform_fil(:,:,2),clims2);axis off;colormap gray;
axes(ima(17)); imagesc(uniform_fil(:,:,1),clims1);axis off;colormap gray;
axes(ima(18)); imagesc(uniform_fil(:,:,3),clims3);axis off;colormap gray;