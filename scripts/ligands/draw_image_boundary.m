function ligand = draw_image_boundary( ligand )
% ligand = draw_image_boundary( ligand )
% 
% Draw the 'silhouette' of a ligand (like a protein) if
%  its image_boundary field has been setup by SETUP_IMAGE_FOR_LIGAND.
%
% Note: this function does not move the image boundary to the back of the
%  drawing -- that needs to be handled by a call to MOVE_STUFF_TO_BACK later.
% 
% (C) Rhiju Das, Stanford Universrity


assert( isfield( ligand, 'image_boundary') );
if ( ~isfield( ligand, 'image_handle2' ) | ~isvalid( ligand.image_handle2 ) )
    ligand.image_handle2 = patch(0,0,[0,0,0],'edgecolor','none');
    send_to_top_of_back( ligand.image_handle2 );
end
if( ~isfield( ligand, 'image_handle' ) | ~isvalid( ligand.image_handle ) )
    ligand.image_handle = patch(0,0,[0,0,0],'edgecolor','none');
    send_to_top_of_back( ligand.image_handle );
    setappdata( ligand.image_handle, 'res_tag', ligand.res_tag );
    draggable( ligand.image_handle,'n',[-inf inf -inf inf], @move_snapgrid, 'endfcn', @redraw_res_and_helix );
end
if( ~isfield( ligand, 'image_offset' ) )
    ligand.image_offset = [0,0];
end

image_boundary = ligand.image_boundary;

plot_settings = getappdata( gca, 'plot_settings' );
if isfield( plot_settings, 'ligand_image_scaling' ) image_boundary = image_boundary * plot_settings.ligand_image_scaling; end;

set( ligand.image_handle, ...
    'XData', image_boundary(:,1) + ligand.plot_pos(:,1) + ligand.image_offset(1), ...
    'YData', image_boundary(:,2) + ligand.plot_pos(:,2) + ligand.image_offset(2) );
set( ligand.image_handle2, ...
    'XData', image_boundary(:,1) + ligand.plot_pos(:,1) + ligand.image_offset(1) + 0.25, ...
    'YData', image_boundary(:,2) + ligand.plot_pos(:,2) + ligand.image_offset(2) - 0.25);

set_ligand_image_color( ligand );
   
if isfield( ligand, 'handle' )  set( ligand.handle, 'fontsize',  plot_settings.fontsize*1.5  ); end;

