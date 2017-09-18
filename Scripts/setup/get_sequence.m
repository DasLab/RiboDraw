function [sequence,resnum,chains,non_standard_residues] = get_sequence( fasta_file )
% [sequence,resnum,chains,non_standard_residues] = get_sequence( fasta_file )
% read sequence from FASTA file ? and figure out chain/numbering from tags
% like "A:4-89" in header. Allow sequence to include "Z[1MA]" to define 
% non-standard residues, like in Rosetta.
%
% TODO: need to change non-standard residues data structure to be just
% indices & names of non-standards, like Rosetta. JSON is getting too fat.
% (C) R. Das, Stanford University, 2017

fasta = fastaread( fasta_file );
raw_sequence = fasta.Sequence;

resnum = [];
chains = '';
sequence = '';
non_standard_residues.index = [];
non_standard_residues.name  = {};
i = 1;
while (i <= length(raw_sequence) )
    sequence = [sequence, raw_sequence(i) ];
    if i < length( raw_sequence ) & strcmp(raw_sequence(i+1),'[')
        non_standard_name = '';
        i = i+2;
        while ( i <= length( raw_sequence ) & ~strcmp(raw_sequence(i),']' ) )
            non_standard_name = [non_standard_name, raw_sequence(i)];
            i = i+1;
        end
        non_standard_residues.index = [non_standard_residues.index,length(sequence)];
        non_standard_residues.name  = [non_standard_residues.name,non_standard_name];
    end
    i = i+1;
end

cols = strsplit( fasta.Header );
for i = 1:length( cols )
    [tag_resnum, tag_chains, ok ] = get_resnum_from_tag( cols{i} );
    if ( ok ) 
        resnum = [resnum, tag_resnum ];
        chains = [chains, tag_chains ];
    end
end

if length( chains ) == 0
    chains = repmat( ' ', [1 length(sequence)] );
    resnum = [1:length(sequence)];
end

assert( length( chains ) == length( resnum ) );
assert( length( chains ) == length( sequence ) );
