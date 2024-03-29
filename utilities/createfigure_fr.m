function createfigure_fr(X1, YMatrix1, Legend ,Xlabel, Ylabel, Xscale, Yscale, project, time, model_no)
%CREATEFIGURE(X1, YMatrix1)
%  X1:  vector of plot x data
%  YMATRIX1:  matrix of plot y data

%  Auto-generated by MATLAB on 20-Jan-2023 21:28:20

% Create figure
figure1 = figure('Units', 'centimeters', 'Position',[3 3 3+20 3+11.25], 'Name','Frequency response','Color',[1 1 1]);

newcolors = hsv(size(YMatrix1,2));

colororder(newcolors)

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create multiple line objects using matrix input to semilogy
semilogy1 = semilogy(X1,YMatrix1,'LineWidth',1.5);
for i=1:size(YMatrix1,2)
    set(semilogy1(i),'DisplayName',Legend(i));
end

% Create ylabel
ylabel(Ylabel);

% Create xlabel
xlabel(Xlabel);

box(axes1,'on');
hold(axes1,'off');
% Set the remaining axes properties
set(axes1,'FontName','Times New Roman','FontSize',11,'XGrid','on','YGrid',...
    'on','YMinorTick','on','XScale',Xscale,'YScale',Yscale);
axes1.XAxis.Exponent = 3;

% Create legend
legend(axes1,'show');

% saveas(figure1, project.RootFolder+"\results\"+time+"fr_comp_"+num2str(model_no)+".svg")

