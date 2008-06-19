function acqleg(handles,classtxt,lineSpec,spotSpec)
%ACQLEG Create/Display acquisition legend.
%   ACQLEG(HANDLES,CLASSTXT,LINESPEC,SPOTSPEC) creates (if non-existent) or
%   displays (if exists) a legend corresponding to the scatterplot of the 
%   virtual arm acquisition system.
%   
%   Inputs: handles - structure of object handles
%           classtxt - ordered list of classes-being-used strings
%           lineSpec - corresponding linestyles
%           spotSpec - corresponding marker-styles
%
%   Blair Lock 12-04-04

numclasses = length(classtxt);                                          % number of classes plotted
h_scl = 25;                                                             % a height scaling factor (height of each legend row in pixels)
w_scl = 5;                                                              % a width scaling factor (pixels per letter in legend strings)
h = numclasses*h_scl;                                                   % overall height of legend window
txt_w = max(length(char(classtxt{:})))*w_scl;                           % width of legend string column (using longest string)
w = txt_w+h_scl*2;                                                      % overall width of legend window
xLines=[zeros(1,numclasses-1), w-h_scl*2; ...                           % x-points of legend lines
        zeros(1,numclasses-1)+w, w-h_scl*2];
yLines=[(1:numclasses-1).*h_scl, 0; ...                                 % y-points of legend lines                  
        (1:numclasses-1).*h_scl, h];

win = findobj('Tag','armlayout');                                       % handle to armlayout window
sct_plt = handles.acq_contourAxes;                                      % handle to scatterplot axes

dum = get(win,'Units');                                                 % dummy: get current units value from main window
set(win,'Units', 'pixels')                                              % set main window units to pixels
win_pos = get(win,'Position');                                          % get main window position in pixels
set(win,'Units',dum);                                                   % return main window to original units

dum = get(sct_plt,'Units');                                             % dummy: get current units value from plot window
set(sct_plt,'Units', 'pixels')                                          % set plot window units to pixels
sct_plt_pos = get(sct_plt,'Position');                                  % get plot window position in pixels
set(sct_plt,'Units',dum);                                               % return plot window to original units

x = win_pos(1)+sct_plt_pos(1)+sct_plt_pos(3)-10;                        % x position of legend (just right of scatterplot)
y = win_pos(2)+win_pos(4)/2-(h+20)/2;                                   % y position of legend (vertically centered)

al = findobj('Tag','acqleg');                               
if isempty(al)                                                          % if the legend window does not exist yet
   figure('Name','Legend','Units','pixels',...                          % create the figure and set some parameters
        'NumberTitle','off','MenuBar','none',...
        'Tag','acqleg','Resize','off',...
        'Position',[x y w h]);
else                                                                    % if the legend window already exists
    figure(al)                                                          % point to the figure
    set(al,'Name','Legend','Units','pixels',...                         % set/reset some figure parameters
        'NumberTitle','off','MenuBar','none',...
        'Tag','acqleg','Resize','off');
end

hndl = axes('Parent',findobj('Tag','acqleg'),'Units','pixels','Position',[0 0 w h]); % get handle to current (legend) axes and position the window

figure(findobj('Tag','acqleg','Name','Legend'));                        % force legend as current figure
plot(xLines,yLines,'k','LineWidth',2)                                   % plot the row and column lines for the legend
set(hndl,'XLim',[0 w],'YLim',[0 h],...                                  % set axes parameters
    'XTick',[],'YTick',[],'Box','off','YDir','reverse');
hold on                                                                 % hold the plot on

a = [ 0.9000    0.8913    0.8654    0.8236    0.7677   ...              % x points of fake contour for legend (scaled)
      0.7000    0.6236    0.5418    0.4582    0.3764   ...
      0.3000    0.2323    0.1764    0.1346    0.1087   ...
      0.1000    0.1087    0.1346    0.1764    0.2323   ...
      0.3000    0.3764    0.4582    0.5418    0.6236   ...
      0.7000    0.7677    0.8236    0.8654    0.8913    0.9000];

b = [ 0.5000    0.5713    0.6395    0.7015    0.7548   ...              % y points of fake contour for legend (scaled)
      0.7969    0.8261    0.8410    0.8410    0.8261   ...
      0.7969    0.7548    0.7015    0.6395    0.5713   ...
      0.5000    0.4287    0.3605    0.2985    0.2452   ...
      0.2031    0.1739    0.1590    0.1590    0.1739   ...
      0.2031    0.2452    0.2985    0.3605    0.4287    0.5000];
set(handles.acq_previewLeg,'UserData',[a; b]);                          % store points for use with preview legend

w_scl = 2*h_scl;                                                        % reassign width scale to 2 times the height scale
for i = 0:numclasses-1                                                  % loop for number of classes to plot
    xCntr = (a.*w_scl + [0 randn(1,29).*0.5 0])+txt_w;                  % scale and position fake x contour points, randomize a bit
    yCntr = (b.*h_scl + [0 randn(1,29).*1 0])+(i*h_scl);                % scale and position fake y contour points, randomize a bit
    xPts = ((rand(1,7).*(w_scl*40/70))+w_scl*15/70)+txt_w;              % randomize and position fake legend points (x positions)
    yPts = ((rand(1,7).*(h_scl*15/35))+h_scl*10/35)+(i*h_scl);          % randomize and position fake legend points (y positions)
    plot(xCntr,yCntr,lineSpec{i+1})                                     % plot legend contour with appropriate linestyle
    plot(xPts,yPts,spotSpec{i+1})                                       % plot legend points with appropriate marker-style
    text(txt_w/2,(h_scl/2+(i*h_scl)),char(classtxt{i+1}),...            % plot associated legend string 
        'HorizontalAlignment','center',...
        'VerticalAlignment','middle',...
        'FontName','Arial Narrow',...
        'FontSize',8)
end
hold off                                                                % trun plotting hold off