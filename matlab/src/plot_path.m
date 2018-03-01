function h_fig = plot_path(path, opt)

headx = cos(path.theta) * opt.headLen;
heady = sin(path.theta) * opt.headLen;

h_fig = figure(opt.fignum);clf;

set(gcf,'paperunits','inches','paperPosition',opt.figsize)
set(gcf,'Units','inches','paperPosition',opt.figsize)
set(gcf,'Units','inches','Position',opt.figsize)
set(gcf,'PaperPositionMode','auto');

h_quiv = quiver(path.x, path.y, headx, heady);hold on;
plot(path.x, path.y,'k-','linewidth',2); hold on;
set(h_quiv, 'color', 'b');
axis equal;
xlabel('x [m]');
ylabel('y [m]');

end