clear all;
ima_truth = IBWread('Truncated_uniform_truth.ibw');
ima_truth = ima_truth.y;
ima_pn = IBWread('Truncated_uniform_pn.ibw');
ima_pn = ima_pn.y;
PSNR_random = zeros(50,7);
for i = 31:40
    PSNR_random(i,:) = PSNR_calculation_new(ima_truth,ima_pn,20,20,i);
end
%SSIM_uniform = SSIM_calculation(ima_truth, ima_pn, 20, 20);
