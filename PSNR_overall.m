clear all;
addpath('functions');
addpath('Data');
addpath('Igor2Matlab');
ima_truth = IBWread('Data/Truncated_50%disperse_truth.ibw');
ima_truth = ima_truth.y;
ima_pn = IBWread('Data/Truncated_50%disperse_pn.ibw');
ima_pn = ima_pn.y;
PSNR_random = zeros(50,7);
for i = 29:35
    [PSNR_random(i,:),~] = PSNR_calculation_new(ima_truth,ima_pn,9,18,i);
end
%SSIM_uniform = SSIM_calculation(ima_truth, ima_pn, 20, 20);
