function ExpResultTightPlot(ima_pn, ima_fil)
%  CDATA1-7:  seven experiment bands
%  CDATA8-14: seven denoised bands
cdata1 = ima_pn(:,:,1);
cdata2 = ima_pn(:,:,2);
cdata3 = ima_pn(:,:,3);
cdata4 = ima_pn(:,:,4);
cdata5 = ima_pn(:,:,5);
cdata6 = ima_pn(:,:,6);
cdata7 = ima_pn(:,:,7);
cdata8 = ima_fil(:,:,1);
cdata9 = ima_fil(:,:,2);
cdata10 = ima_fil(:,:,3);
cdata11 = ima_fil(:,:,4);
cdata12 = ima_fil(:,:,5);
cdata13 = ima_fil(:,:,6);
cdata14 = ima_fil(:,:,7);

% Create figure with white bg and gray colorbar
figure1 = figure('Color',[1 1 1]);
colormap('gray');

% Create axes with tight plot
axes1 = axes('Parent',figure1,'Layer','top','CLim',[0 4],...
    'Position',[0.05 0.525 0.125714285714286 0.475],...
    'DataAspectRatio',[1 1 1]);
box(axes1,'on');
hold(axes1,'on');
axis off

% Create image
image(cdata1,'Parent',axes1,'CDataMapping','scaled');

% Create axes
axes2 = axes('Parent',figure1,'Layer','top','CLim',[0 0.7],...
    'Position',[0.185714285714286 0.525 0.125714285714286 0.475],...
    'DataAspectRatio',[1 1 1]);
box(axes2,'on');
hold(axes2,'on');
axis off

% Create image
image(cdata2,'Parent',axes2,'CDataMapping','scaled');

% Create axes
axes3 = axes('Parent',figure1,'Layer','top','CLim',[0 7],...
    'Position',[0.321428571428571 0.525 0.125714285714286 0.475],...
    'DataAspectRatio',[1 1 1]);
box(axes3,'on');
hold(axes3,'on');
axis off

% Create image
image(cdata3,'Parent',axes3,'CDataMapping','scaled');

% Create axes
axes4 = axes('Parent',figure1,'Layer','top',...
    'Position',[0.457142857142857 0.525 0.125714285714286 0.475],...
    'DataAspectRatio',[1 1 1]);
box(axes4,'on');
hold(axes4,'on');
axis off

% Create image
image(cdata4,'Parent',axes4,'CDataMapping','scaled');

% Create axes
axes5 = axes('Parent',figure1,'Layer','top','CLim',[0 4],...
    'Position',[0.592857142857143 0.525 0.125714285714286 0.475],...
    'DataAspectRatio',[1 1 1]);
box(axes5,'on');
hold(axes5,'on');
axis off

% Create image
image(cdata5,'Parent',axes5,'CDataMapping','scaled');

% Create axes
axes6 = axes('Parent',figure1,'Layer','top','CLim',[0 3],...
    'Position',[0.728571428571428 0.525 0.125714285714286 0.475],...
    'DataAspectRatio',[1 1 1]);
box(axes6,'on');
hold(axes6,'on');
axis off

% Create image
image(cdata6,'Parent',axes6,'CDataMapping','scaled');

% Create axes
axes7 = axes('Parent',figure1,'Layer','top',...
    'Position',[0.864285714285714 0.525 0.125714285714286 0.475],...
    'DataAspectRatio',[1 1 1]);
box(axes7,'on');
hold(axes7,'on');
axis off

% Create image
image(cdata7,'Parent',axes7,'CDataMapping','scaled');

% Create axes
axes8 = axes('Parent',figure1,'Layer','top','CLim',[0 4],...
    'Position',[0.05 4.17655328311368e-17 0.125714285714286 0.475],...
    'DataAspectRatio',[1 1 1]);
box(axes8,'on');
hold(axes8,'on');
axis off

% Create image
image(cdata8,'Parent',axes8,'CDataMapping','scaled');

% Create colorbar
colorbar('peer',axes8,'Position',[0.05 0.480808080808081 0.125 0.026]);

% Create axes
axes9 = axes('Parent',figure1,'Layer','top','CLim',[0 0.7],...
    'Position',[0.185714285714286 4.17655328311368e-17 0.125714285714286 0.475],...
    'DataAspectRatio',[1 1 1]);
box(axes9,'on');
hold(axes9,'on');
axis off

% Create image
image(cdata9,'Parent',axes9,'CDataMapping','scaled');

% Create colorbar
colorbar('peer',axes9,'Position',[0.186856127886322 0.48 0.125 0.026]);

% Create axes
axes10 = axes('Parent',figure1,'Layer','top','CLim',[0 7],...
    'Position',[0.321428571428571 4.17655328311368e-17 0.125714285714286 0.475],...
    'DataAspectRatio',[1 1 1]);
box(axes10,'on');
hold(axes10,'on');
axis off

% Create image
image(cdata10,'Parent',axes10,'CDataMapping','scaled');

% Create colorbar
colorbar('peer',axes10,'Position',[0.321847246891651 0.48 0.125 0.026]);

% Create axes
axes11 = axes('Parent',figure1,'Layer','top',...
    'Position',[0.457142857142857 4.17655328311368e-17 0.125714285714286 0.475],...
    'DataAspectRatio',[1 1 1]);
box(axes11,'on');
hold(axes11,'on');
axis off

% Create image
image(cdata11,'Parent',axes11,'CDataMapping','scaled');

% Create colorbar
colorbar('peer',axes11,'Position',[0.45683836589698 0.48 0.125 0.026]);

% Create axes
axes12 = axes('Parent',figure1,'Layer','top','CLim',[0 4],...
    'Position',[0.592857142857143 4.17655328311368e-17 0.125714285714286 0.475],...
    'DataAspectRatio',[1 1 1]);
box(axes12,'on');
hold(axes12,'on');
axis off

% Create image
image(cdata12,'Parent',axes12,'CDataMapping','scaled');

% Create colorbar
colorbar('peer',axes12,'Position',[0.593901716992302 0.48 0.125 0.026]);

% Create axes
axes13 = axes('Parent',figure1,'Layer','top','CLim',[0 3],...
    'Position',[0.728571428571428 4.17655328311368e-17 0.125714285714286 0.475],...
    'DataAspectRatio',[1 1 1]);
box(axes13,'on');
hold(axes13,'on');
axis off

% Create image
image(cdata13,'Parent',axes13,'CDataMapping','scaled');

% Create colorbar
colorbar('peer',axes13,'Position',[0.72978093546477 0.48 0.125 0.026]);

% Create axes
axes14 = axes('Parent',figure1,'Layer','top',...
    'Position',[0.864285714285714 4.17655328311368e-17 0.125714285714286 0.475],...
    'DataAspectRatio',[1 1 1]);
box(axes14,'on');
hold(axes14,'on');
axis off

% Create image
image(cdata14,'Parent',axes14,'CDataMapping','scaled');

% Create colorbar
colorbar('peer',axes14,'Position',[0.864772054470099 0.48 0.125 0.025]);

