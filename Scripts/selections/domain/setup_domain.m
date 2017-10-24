function setup_domain( residue_string, name );
% setup_domain( residue_string, name );
% (C) Rhiju Das, Stanford University, 2017

domain.type = 'domain'; 
domain.name = name;
domain_tag = sprintf('Selection_%s_domain', strrep( strrep(name, ' ', '_' ), '-', '_' ) );
domain.selection_tag = domain_tag;

res_tags = get_res_tags( residue_string );

domain.associated_residues = {};
associated_helices = {};
for i = 1:length( res_tags )
    res_tag = res_tags{i};
    if isappdata( gca, res_tag )
        domain.associated_residues = [domain.associated_residues, res_tag ];
        residue = getappdata( gca, res_tag );
        
        if ~isfield( residue, 'associated_selections' )
            residue.associated_selections = {};
        end
        residue.associated_selections = unique( [ residue.associated_selections, domain_tag ] );
        setappdata( gca, res_tag, residue );
        
        associated_helices = [associated_helices, residue.helix_tag ];
    else
        fprintf( 'Warning: could not find %s.\n', res_tag );
    end
end

% check residues outside domain -- make sure they don't have this domain.
tags = get_tags( 'Residue' );
for i = 1:length( tags )
    tag = tags{i};
    if any( strcmp( res_tags, tag ) ); continue; end;
    residue = getappdata( gca, tag );    
    if isfield( residue, 'associated_selections' )
        if any( strcmp( residue.associated_selections, domain_tag ) )
            fprintf( 'Updating residue %s which is no longer in domain %s.\n', tag, domain_tag );
            residue.associated_selections = setdiff( residue.associated_selections, domain_tag );
            setappdata( gca, tag, residue );
        end
    end
    
end

if isappdata( gca, domain_tag )
    fprintf( 'Updating: %s\n', domain_tag );
    domain_new = domain;
    domain = getappdata( gca, domain_tag );
    domain.associated_residues = domain_new.associated_residues;
    setappdata( gca, domain_tag, domain );
else
    setappdata( gca, domain_tag, domain );
end

associated_helices =  unique( associated_helices );
for i = 1:length( associated_helices );
    helix = getappdata( gca, associated_helices{i} );
    draw_helix( helix );
end

