clims1 = [0 4];
clims2 = [0 0.7];
clims3 = [0 7];
clims4 = [0 1];
clims5 = [0 4];
clims6 = [0 3];
clims7 = [0 1];
figure1 = figure('Color',[1 1 1]);
set(figure1,'Position',[0 0 1000 600]);
ima1 = tight_subplot(2,4,[0.01 0.01],[0 0.05],[0.05 0]);
axes(ima1(1));imagesc(ima_pn(:,:,1),clims1);colormap gray;axis off;title('O K{\alpha}');xlabel('Exp');
axes(ima1(2));imagesc(ima_pn(:,:,2),clims2);colormap gray;axis off;title('Ca K{\alpha}');
axes(ima1(3));imagesc(ima_pn(:,:,3),clims3);colormap gray;axis off;title('Ti K{\alpha}');
axes(ima1(4));imagesc(ima_pn(:,:,4),clims4);colormap gray;axis off;title('Ti K{\beta}');

axes(ima1(5));imagesc(ima_fil(:,:,1),clims1);colormap gray;axis off;xlabel('Denoised');
axes(ima1(6));imagesc(ima_fil(:,:,2),clims2);colormap gray;axis off;
axes(ima1(7));imagesc(ima_fil(:,:,3),clims3);colormap gray;axis off;
axes(ima1(8));imagesc(ima_fil(:,:,4),clims4);colormap gray;axis off;

figure2 = figure('color',[1 1 1]);
ima2 = tight_subplot(2,4,[0.01 0.01],[0 0.05],[0.05 0]);
set(figure2,'Position',[0 0 1000 600]);
axes(ima2(1));imagesc(ima_pn(:,:,5),clims5);colormap gray;axis off;title('Nd L{\beta}');
axes(ima2(2));imagesc(ima_pn(:,:,6),clims6);colormap gray;axis off;title('Nd L{\beta}');
axes(ima2(3));imagesc(ima_pn(:,:,7),clims7);colormap gray;axis off;title('Nd L{\beta}4');

axes(ima2(5));imagesc(ima_fil(:,:,5),clims5);colormap gray;axis off;
axes(ima2(6));imagesc(ima_fil(:,:,6),clims6);colormap gray;axis off;
axes(ima2(7));imagesc(ima_fil(:,:,7),clims7);colormap gray;axis off;

axes(ima2(4));axis off;
axes(ima2(8));axis off;