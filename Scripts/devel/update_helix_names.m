function update_helix_names( stems );
for n = 1:length( stems )
    stem = stems{n};
    helix_tag = sprintf('Helix_%s%d',...
        stems{n}.chain1(1),...
        stems{n}.resnum1(1));% this better be a unique identifier
    helix = getappdata( gca, helix_tag );
    helix.name = stem.name;
    setappdata( gca, helix.helix_tag, helix );
end