figure1 = figure('Color',[1 1 1]);
ima = tight_subplot(3,6,[0.01 0.01],[0.1,0.1],[0 0]);
clims1 = [0,6];
clims2 = [0,2];
clims3 = [0,10];
axes(ima(1)); imagesc(uniform_truth(:,:,1),clims1);axis off;colormap gray;title('O Ka');
axes(ima(2)); imagesc(uniform_truth(:,:,3),clims3);axis off;colormap gray;title('Ti Ka');
axes(ima(3)); imagesc(uniform_truth(:,:,5),clims1);axis off;colormap gray;title('Nd La');
axes(ima(4)); imagesc(uniform_truth(:,:,2),clims2);axis off;colormap gray;title('Ca Ka');
axes(ima(5)); imagesc(NP_truth(:,:,2),clims2);axis off;colormap gray;title('Ca Ka NPs');
axes(ima(6)); imagesc(random_truth(:,:,2),clims2);axis off;colormap gray;title('Ca Ka Random');

axes(ima(7)); imagesc(uniform_pn(:,:,1),clims1);axis off;colormap gray;
axes(ima(8)); imagesc(uniform_pn(:,:,3),clims3);axis off;colormap gray;
axes(ima(9)); imagesc(uniform_pn(:,:,5),clims1);axis off;colormap gray;
axes(ima(10)); imagesc(uniform_pn(:,:,2),clims2);axis off;colormap gray;
axes(ima(11)); imagesc(NP_pn(:,:,2),clims2);axis off;colormap gray;
axes(ima(12)); imagesc(random_pn(:,:,2),clims2);axis off;colormap gray;

axes(ima(13)); imagesc(uniform_fil(:,:,1),clims1);axis off;colormap gray;colorbar;
axes(ima(14)); imagesc(uniform_fil(:,:,3),clims3);axis off;colormap gray;colorbar;
axes(ima(15)); imagesc(uniform_fil(:,:,5),clims1);axis off;colormap gray;colorbar;
axes(ima(16)); imagesc(uniform_fil(:,:,2),clims2);axis off;colormap gray;colorbar;
axes(ima(17)); imagesc(NP_fil(:,:,2),clims2);axis off;colormap gray;
axes(ima(18)); imagesc(random_fil(:,:,2),clims2);axis off;colormap gray;