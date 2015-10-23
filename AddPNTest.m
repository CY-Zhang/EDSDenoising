clear all;
addpath('Igor2Matlab');
addpath('Data');
Band_truth = IBWread('Truncated_50%disperse_truth.ibw');
Band_truth = Band_truth.y(:,:,2); %use only Ca band
[m,n]=size(Band_truth);
Band = zeros(256,256,10);
Reduced_truth = zeros(256,256,10);
%%Add Poisson Noise to the image with function poissrnd
for i = 1:10
    temp = Band(:,:,i);
    percentage = 10*i-5;
    ratio = 100/percentage;
    for j = 1:m
        for k = 1:n
            temp(j,k) = knuth_poissrnd(Band_truth(j,k)/ratio);
        end
    end
    Band(:,:,i) = temp;
    Reduced_truth(:,:,i) = Band_truth./ratio;
end
%%Calculate PSNR of input noised image
PSNR_input = zeros(1,10);
MSE = zeros(1,10);
for i = 1:10
    temp = Band(:,:,i);
    temp_truth = Reduced_truth(:,:,i);
    temp_ref = max(max(Reduced_truth(:,:,i)));
    PSNR_input(i) = psnr(temp,Band_truth,max(max(Band_truth)));
    MSE(i) = immse(temp, temp_truth);
end
Diff_map = zeros(256,256,10);
for i = 1:10
    Diff_map(:,:,i) = (Band(:,:,i) - Band_truth).^2;
end
clim = [0 5];
subplot(2,3,1);imagesc(Band_truth,clim);colormap gray; axis off;
subplot(2,3,2);imagesc(Band(:,:,1),clim);colormap gray; axis off;
subplot(2,3,3);imagesc(Diff_map(:,:,1),clim);colormap hot; axis off;colorbar;
subplot(2,3,4);imagesc(Band_truth,clim);colormap gray; axis off;
subplot(2,3,5);imagesc(Band(:,:,10),clim);colormap gray; axis off;
subplot(2,3,6);imagesc(Diff_map(:,:,10),clim);colormap hot; axis off;colorbar;