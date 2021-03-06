function savedata = get_drawing( slice_res );
% savedata = get_drawing( slice_res );
%
% Pull information needed to render drawing from current figure ('gca')
%
% INPUT:
%   slice_res = subset of residues to 'slice out' of drawing. Can be
%                string like "C:QA:12-13" or name of domains or helices.
%
% OUTPUT:
%   savedata = MATLAB 'drawing' data structure with all the saved info
%
% See also: SAVE_DRAWING
%
% (C) R. Das, Stanford University, 2017

savedata = struct();
savedata.version = '0.701';
residue_tags = get_residue_tags();
helix_tags = get_helix_tags();
linker_tags = get_linker_tags();
selection_tags = get_selection_tags();
tertiary_contact_tags = get_tertiary_contact_tags();
motif_tags = get_motif_tags();

if exist( 'slice_res', 'var' )
    slice_res_tags = get_res( slice_res );
    [residue_tags, helix_tags, linker_tags, selection_tags, tertiary_contact_tags, motif_tags, slice_res_tags, ok ] = filter_by_res_tags( slice_res_tags, residue_tags, helix_tags, linker_tags, selection_tags, tertiary_contact_tags, motif_tags );    
    if ~ok; return; end;
else
    slice_res_tags = {};
end

% try to save in this order -- will help with rendering elements later.
savedata = save_residues(          savedata, residue_tags, linker_tags, selection_tags, slice_res_tags );
savedata = save_helices(           savedata, helix_tags );
savedata = save_linkers(           savedata, linker_tags );
savedata = save_selections(        savedata, selection_tags );
savedata = save_tertiary_contacts( savedata, tertiary_contact_tags );
savedata = save_motifs( savedata, motif_tags );

savedata.plot_settings   = getappdata( gca, 'plot_settings' );
savedata.xlim            = get(gca, 'xlim' );
savedata.ylim            = get(gca, 'ylim' );
savedata.data_aspect_ratio_mode = get(gca, 'DataAspectRatioMode' );
savedata.window_position = get(gcf, 'Position' );


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function new_obj = copy_fields( obj, tags )
new_obj = struct();
for i = find( isfield( obj, tags ) );
     tag = tags{i};
     new_obj = setfield( new_obj, tag, getfield( obj, tag ) );
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function savedata = save_residues( savedata, objnames, filter_linker_tags, filter_selection_tags, slice_res_tags )

for n = 1:length( objnames )
    assert( ~isempty( strfind( objnames{n}, 'Residue_' ) ) );
    figure_residue = getappdata( gca, objnames{n} );
    if ~isfield( figure_residue, 'name' ) continue; end;
    residue = copy_fields( figure_residue, {'resnum','chain','segid','res_tag','helix_tag','name','original_name','non_standard_name'...
        'stem_partner','tickrot','rgb_color','relpos','linkers','associated_selections','ligand_partners','image_boundary','image_radius','label_relpos',...
        'fill_color','ring_color','associated_motifs'} );

    % filter if we sliced residues. could just always do this, but
    % let's save time.
    if ~isempty( slice_res_tags )
        residue.linkers = intersect( residue.linkers, filter_linker_tags);
        if isfield( residue, 'associated_selections' ) residue.associated_selections = intersect( residue.associated_selections, filter_selection_tags); end;
    end
    savedata = setfield( savedata, objnames{n}, residue );
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function savedata = save_helices( savedata, objnames )

for n = 1:length( objnames )
    assert( ~isempty( strfind( objnames{n}, 'Helix_' ) ) );
    figure_helix = getappdata( gca, objnames{n} );
    helix = copy_fields( figure_helix, {'resnum1','chain1','segid1','resnum2','chain2','segid2','name',...
        'center','rotation','parity','label_relpos','helix_tag','associated_residues','rgb_color','label_visible'} );
    savedata = setfield( savedata, objnames{n}, helix );
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function savedata = save_selections( savedata, objnames )

for n = 1:length( objnames )
    assert( ~isempty( strfind( objnames{n}, 'Selection_' ) ) );
    figure_selection = getappdata( gca, objnames{n} );
    selection = copy_fields( figure_selection, {'associated_residues','associated_helices','selection_tag','type','coax_pairs','name',...
        'label_relpos','rgb_color','label_visible','helix_group'} );
    savedata = setfield( savedata, objnames{n}, selection );
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function savedata = save_tertiary_contacts( savedata, objnames )

for n = 1:length( objnames )
    assert( ~isempty( strfind( objnames{n}, 'TertiaryContact_' ) ) );
    figure_selection = getappdata( gca, objnames{n} );
    selection = copy_fields( figure_selection, {'associated_residues1','associated_residues2','name','tertiary_contact_tag',...
        'interdomain_linker','intradomain_linkers1','intradomain_linkers2','linkers'} );
    savedata = setfield( savedata, objnames{n}, selection );
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function savedata = save_motifs( savedata, objnames )

for n = 1:length( objnames )
    assert( ~isempty( strfind( objnames{n}, 'Motif_' ) ) );
    figure_selection = getappdata( gca, objnames{n} );
    selection = copy_fields( figure_selection, {'motif_type','associated_residues','motif_tag'});
    savedata = setfield( savedata, objnames{n}, selection );
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function savedata = save_linkers( savedata, objnames )
    
for n = 1:length( objnames )
    assert( ~isempty( strfind( objnames{n}, 'Linker_' ) ) );
    figure_linker = getappdata( gca, objnames{n} );
    linker = copy_fields( figure_linker, {'residue1','residue2','type','linker_tag','relpos1',...
        'relpos2','edge1','edge2','LW_orientation','tertiary_contact','show_split_arrows','outarrow_label_relpos1','outarrow_label_relpos2'} );
    savedata = setfield( savedata, objnames{n}, linker );
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function tags = get_residue_tags();
tags = sort( get_tags( 'Residue_' ) );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function tags = get_helix_tags();
tags = sort( get_tags( 'Helix_' ) );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function tags = get_linker_tags();
linker_tags = get_tags( 'Linker_');
arrow_tags               = sort( get_tags( 'Linker_', 'arrow', linker_tags ) );
stem_pair_tags           = sort( get_tags( 'Linker_', 'stem_pair', linker_tags ) );
noncanonical_tags        = sort( get_tags( 'Linker_', 'noncanonical_pair', linker_tags ) );
stack_tags               = sort( get_tags( 'Linker_', 'stack', linker_tags ) );
other_contact_tags       = sort( get_tags( 'Linker_', 'other_contact', linker_tags )  );
ligand_tags              = sort( get_tags( 'Linker_', 'ligand', linker_tags ) );
tertcontact_interdomain_tags = sort( get_tags( 'Linker_', 'tertcontact_interdomain', linker_tags ) );
tertcontact_intradomain_tags = sort( get_tags( 'Linker_', 'tertcontact_intradomain', linker_tags ) );
tags = [arrow_tags; stem_pair_tags; noncanonical_tags; stack_tags; other_contact_tags; ligand_tags; ...
    tertcontact_interdomain_tags; tertcontact_intradomain_tags ];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function tags = get_selection_tags();
tags = sort( get_tags( 'Selection_' ) );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function tags = get_tertiary_contact_tags();
tags = sort( get_tags( 'TertiaryContact_' ) );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function tags = get_motif_tags();
tags = sort( get_tags( 'Motif_' ) );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [new_residue_tags, new_helix_tags, new_linker_tags, new_selection_tags, new_tertiary_contact_tags, new_motif_tags, slice_res_tags, ok ] = filter_by_res_tags( slice_res_tags, residue_tags, helix_tags, linker_tags, selection_tags, tertiary_contact_tags, motif_tags );    
fprintf( 'Filtering by slice_res\n' );
tic
ok = 1;

new_residue_tags = {};
new_helix_tags   = {};
new_linker_tags  = {}; 
new_selection_tags = {};
new_tertiary_contact_tags = {};
new_motif_tags = {};

% residues
new_residue_tags = intersect( slice_res_tags, residue_tags );
if isempty( new_residue_tags ) 
    fprintf( 'Could not find desired res_tags\n' );
    ok = 0; return;
end

% helices
for i = 1:length( helix_tags )
    tag = helix_tags{i};
    helix = getappdata( gca, tag );
    intersect_tags = intersect( helix.associated_residues, slice_res_tags );
    if length( intersect_tags ) == 0; 
        % helix could be cleanly outside target res
        continue;
    elseif  length( intersect_tags ) < length( helix.associated_residues )
        fprintf( 'Warning! slice_res only catches part of helix %s. Will include the rest of that helix too\n', tag);
        new_helix_tags = [new_helix_tags, tag ];
        new_residue_tags = unique( [ new_residue_tags; helix.associated_residues' ] );
    else
        new_helix_tags = [new_helix_tags, tag ];
    end
end

% NEW -- let's actually update slice_res to include those extra helices
% that are brought in.
slice_res_tags = new_residue_tags;

% linkers
for i = 1:length( linker_tags )
    tag = linker_tags{i};
    linker = getappdata( gca, tag );
    if ~any(strcmp(linker.residue1, slice_res_tags ) ) continue; end;
    if ~any(strcmp(linker.residue2, slice_res_tags ) ) continue; end;
    new_linker_tags = [new_linker_tags, tag ];
end

% selections
for i = 1:length( selection_tags )
    tag = selection_tags{i};
    selection = getappdata( gca, tag );
    selection_res_tags = unique(selection.associated_residues);
    if length(intersect( selection_res_tags, slice_res_tags )) < length( selection_res_tags ) continue; end;
    new_selection_tags = [new_selection_tags, tag ];
end

% tertiary_contact_residues
for i = 1:length( tertiary_contact_tags )
    tag = tertiary_contact_tags{i};
    tertiary_contact = getappdata( gca, tag );
    
    contact_ok = 1;
    tertiary_contact_res_tags = unique(tertiary_contact.associated_residues1);
    if length(intersect( tertiary_contact_res_tags, slice_res_tags )) < length( tertiary_contact_res_tags ); contact_ok = 0; end;
    
    tertiary_contact_res_tags = unique(tertiary_contact.associated_residues2);
    if length(intersect( tertiary_contact_res_tags, slice_res_tags )) < length( tertiary_contact_res_tags ); contact_ok = 0; end;

    if ( ~contact_ok )
        new_linker_tags = setdiff( new_linker_tags, [{tertiary_contact.interdomain_linker}, tertiary_contact.intradomain_linkers1, tertiary_contact.intradomain_linkers2 ] );
    else
        new_tertiary_contact_tags = [new_tertiary_contact_tags, tag ];
    end
end


% motifs
for i = 1:length( motif_tags )
    tag = motif_tags{i};
    motif = getappdata( gca, tag );
    motif_res_tags = unique(motif.associated_residues);
    if length(intersect(motif_res_tags, slice_res_tags )) < length(motif_res_tags); continue; end;
    new_motif_tags = [new_motif_tags, tag ];
end

toc



