
function ima_fil=NLPCA(nb_axis,nb_clusters,size,ima_pn)

addpath('functions')


%% Image generation

%load phantom_trunc

%ima_nse_poiss = y;
%temp = IBWread('Truncated_50%disperse_pn.ibw');
ima_nse_poiss = ima_pn;

%[dim1,dim2,dim3]=size(ima_nse_poiss);
%nb_spect_tot=dim3;
%nb_photons=sum(ima_nse_poiss(:))/(dim1*dim2*dim3)
 
%% Parameters:

param.Patch_width=round(size);
param.Patch_width_3d=7;
param.nb_axis=nb_axis; 
param.nb_clusters=nb_clusters;
param.eps_stop=1e-1; %loop stoping criterion
param.epsilon_cond=1e-3; %condition number for Hessian inversion
param.double_iteration=0;%1 or 2 pass of the whole algorithm
param.nb_iterations=4;
param.bandwith_smooth=2;
param.sub_factor=2;
param.big_cluster1=1;% special case for the biggest cluster 1st pass
param.big_cluster2=1;% special case for the biggest cluster 2nd pass
param.cste=70;
param.func_tau=@(X) lasso_tau(X{1},X{2},param.cste);
param.parallel = 1; % 0/1 determines if parallelization is used
param.SPIRALTAP = 0; % 0/1 determines if Newton's method is used (0 is recommended)

%% computation
%tic
ima_fil=denoise_poisson_kmeans_poisson_PCA_l1_4d_cube_3d(ima_nse_poiss,param);
%toc

%% Display

    
   %P = dim3;
    
  %  for j = 1:P
        %j = 3;
  %      subplot(1,2,1)
  %      imagesc(ima_nse_poiss(:,:,j));
  %      title(strcat('Noisy Band',32,num2str(j)))
  %      axis image; axis off; colorbar; colormap gray
        
  %      subplot(1,2,2)
  %      imagesc(ima_fil(:,:,j));
  %      title(strcat('NLPCA Band',32,num2str(j)))
  %      axis image; axis off; colorbar; colormap gray
        
  %      pause(2); % sets time between each frame display
  %  end
   
end

