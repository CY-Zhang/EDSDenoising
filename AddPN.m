clear all;
Band_truth = IBWread('Truncated_50%disperse_truth.ibw');
Band_truth = Band_truth.y;
[m,n]=size(Band_truth);
Band = zeros(256,256,7,10);
%%Add Poisson Noise to the image with function poissrnd
for i = 1:10
    temp = Band(:,:,:,i);
    for j = 1:m
        for k = 1:n
            temp(j,k) = poissrnd(Band_truth(j,k)/(1+(i-1)*0.5));
        end
    end
    Band(:,:,:,i) = temp;
end
%%Calculate PSNR of input noised image
PSNR_input = zeros(10,7);
Ref = zeros(1,7);
for i = 1:7
    Ref(i) = max(max(Band_truth(:,:,i)));
end
for i = 1:10
    temp = Band(:,:,:,i);
    for j = 1:7
        PSNR_input(i,j) = psnr(temp(:,:,j),Band_truth(:,:,j),Ref(j));
    end
end
%%Denoise with NLPCA and calculate output PSNR
%PSNR = zeros(10,7);
%for k = 1:10
%    temp = Band(:,:,:,k);
%    PSNR(k,:) = PSNR_calculation_new(Band_truth,temp,9,18,22);
%end
clear i j k m n