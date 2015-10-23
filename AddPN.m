clear all;
addpath('Igor2Matlab');
addpath('Data');
Band_truth = IBWread('Truncated_50%disperse_truth.ibw');
Band_truth = Band_truth.y;
[m,n]=size(Band_truth);
Band = zeros(256,256,7,10);%Band is used to save the band with PN
Denoised_Band = 0.*Band;   %Denoised_Band is used to save the denoised bands
Reduced_Band = 0.*Band;    %Reduced_Band is used to save truth with reduced intensity
%%Add Poisson Noise to the image with function poissrnd
for i = 1:10
    temp = Band(:,:,:,i);
    percentage = 10*i-5;
    ratio = 100/percentage;
    for j = 1:m
        for k = 1:n
            temp(j,k) = poissrnd(Band_truth(j,k)/ratio);
        end
    end
    Band(:,:,:,i) = temp;
    Reduced_Band(:,:,:,i) = Band_truth./ratio;
end
%%Calculate PSNR of input noised image
PSNR_input = zeros(10,7);
for i = 1:10
    temp = Band(:,:,:,i);
    temp_truth = Reduced_Band(:,:,:,i);
    for j = 1:7
        PSNR_input(i,j) = psnr(temp(:,:,j),temp_truth(:,:,j),max(max(temp_truth(:,:,j))));
    end
end
%%Denoise with NLPCA and calculate output PSNR
PSNR = zeros(10,7);
for k = 1:10
    temp = Band(:,:,:,k);
    [PSNR(k,:),temp_denoised] = PSNR_calculation_new(Band_truth,temp,9,18,22);
    Denoised_Band(:,:,:,k) = temp_denoised;
end
clear i j k m n