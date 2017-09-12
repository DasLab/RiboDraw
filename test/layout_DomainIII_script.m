stems = read_stems( '4ybb_DIII_stems.txt' );
[sequence,resnum,chains,non_standard_residues] = get_sequence( '4ybb_DIII.fasta' );
base_pairs = read_base_pairs( '4ybb_DIII_base_pairs.txt' ); % includes noncanonical pairs.

clf; set(gca,'Position',[0 0 1 1]);
hold on
t = zeros( 1, length(sequence ) );
axis( [0 200 0 200] );

plot_settings.fontsize   =10;
plot_settings.spacing    = 3;
plot_settings.bp_spacing = 6;
plot_settings.show_linker_controls = 0;
setappdata( gca, 'plot_settings', plot_settings );

stems = set_default_stem_positions( stems ); % helix_center setup  could happen *inside* draw_helix or draw_helices
stems = setup_residues(  stems, sequence, resnum, chains ); %  helix_tag setup could happen inside draw_helices
setup_stem_partner( stems ); % could happen inside draw_helices? need some kind of boolean
draw_dummy_linkers(resnum,chains);
setup_base_pair_linkers( base_pairs  )
draw_dummy_ticks();
initialize_ticks();

draw_helices( stems );
