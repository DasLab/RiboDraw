function show_ligand_linkers( setting );
% show_ligand_linkers( setting );
%
% Show or hide linkers that connect ligands (like proteins) to RNA, based on
%  whether setting is 1 or 0.
%
% (C) R. Das, Stanford University, 2017
if ~exist( 'setting', 'var' ); setting = 1; end;

plot_settings = getappdata( gca, 'plot_settings' );
plot_settings.show_ligand_linkers = setting;
setappdata( gca, 'plot_settings', plot_settings );

linker_tags = get_tags( 'Linker', 'ligand');

for i = 1:length( linker_tags )
    draw_linker( getappdata( gca, linker_tags{i} ) );
end
if setting; move_stuff_to_back(); end;

