function set_image_representation( setting )
% set_image_representation( setting );
%
%
% (C) R. Das, Stanford University, 2018

if ~exist( 'setting', 'var' ); setting = 1; end;

plot_settings = getappdata( gca, 'plot_settings' );
plot_settings.image_representation = setting;
setappdata( gca, 'plot_settings', plot_settings );

res_tags = get_tags( 'Residue' );

for i = 1:length( res_tags )
    residue = getappdata( gca, res_tags{i} );
    if ~isfield( residue, 'ligand_partners' ); continue; end
    residue = draw_image( residue, plot_settings );
    setappdata(gca,res_tags{i},residue);
end
if setting; move_stuff_to_back; end;
