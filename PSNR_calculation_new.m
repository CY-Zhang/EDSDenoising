function [PSNR, image] = PSNR_calculation_new(ima_truth,ima_pn,num_cluster,num_axis,patch_size)
%% Import phantom truth and pn, denoise pn with function NLPCA
phantom_truth = ima_truth;
phantom_pn = ima_pn;
phantom_fil = NLPCA(num_axis, num_cluster,patch_size,phantom_pn);
image = phantom_fil;

%% Calculate MSE and PSNR based on the truth and output of function NLPCA
dim3 = size(phantom_fil,3);
PSNR = zeros(1,dim3);
for i = 1:dim3
    result = phantom_fil(:,:,i);
    ref = phantom_truth(:,:,i);
    peakval = max(max(ref));
    PSNR(i) = psnr(result,ref,peakval);
end
end