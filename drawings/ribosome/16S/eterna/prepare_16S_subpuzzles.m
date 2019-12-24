%load_drawing 16S_drawing_eterna_theme_H2secstruct.mat
%
% note that we decided to turn off all locks and all don't cares

full_secstruct  = '........((((.........)))).((((.(((((..(((((((((....(((.(((..(((..((.((..(((....(((....))).....)))))..)))))......(((......(((((((..((...(((((((.(.((.....((((((....))))))......)).).....(((....)))....((((((..........)))))).)))))))..)).)))))))(((....(((..((((((((.......)))))))))))......)))..((((((((....))))...))))))).(((((............))))).((((....))))...)))))).).....(.(((...(((((....)))).))))).)).))))))..((((......((((....)))).....))))..((.(((((......(.((((((((.......)))))))).)........)))))....)).(((((......(((((.....((....)).......))))))))))..)))))))))..........(((.....(.((((...(((.(((((((.((((((((((......((((((.....))))))....))))))))..)))))))))..(((((((((...((((((((...((((((((...((........))......))))))))...).......((....)).)))))))..)))).))))..))))...))))....((((((...((...((((.........))))...))))))))..........((((((..((((((((((((.....))))))))))))...((....)).....)))))))))).(((......((((....))))....)))........(((((.(((((((.((..(((((..((((((((((......((........))..........(((((((..(...(((((((.................................))))).))).((.(((...((((((.(....(((((((((....)))...(((......)))...)))))).....((((.(((((((...((..((.......))))....))))))).....(((((.....)))))........)))).....).).)))...)).)))))....)))))))...)).)))))))).....((((((......(((..((...(((....)))...))....)))......))))))...........(((((((........)))))))..........))))).....(((((((.........)))))))......))...)))))))))).)).......((.(.((((.(((..((((((((((((....((((((.((((..((....)).))))))))))...))))))))))))..))).))))..).)).........(((((((((....)))))))))......';
full_locks      = repmat('o',1,length(full_secstruct));
full_sequence   = 'AAAUUGAAGAGUUUGAUCAUGGCUCAGAUUGAACGCUGGCGGCAGGCCUAACACAUGCAAGUCGAACGGUAACAGGAAGAAGCUUGCUUCUUUGCUGACGAGUGGCGGACGGGUGAGUAAUGUCUGGGAAACUGCCUGAUGGAGGGGGAUAACUACUGGAAACGGUAGCUAAUACCGCAUAACGUCGCAAGACCAAAGAGGGGGACCUUCGGGCCUCUUGCCAUCGGAUGUGCCCAGAUGGGAUUAGCUAGUAGGUGGGGUAACGGCUCACCUAGGCGACGAUCCCUAGCUGGUCUGAGAGGAUGACCAGCCACACUGGAACUGAGACACGGUCCAGACUCCUACGGGAGGCAGCAGUGGGGAAUAUUGCACAAUGGGCGCAAGCCUGAUGCAGCCAUGCCGCGUGUAUGAAGAAGGCCUUCGGGUUGUAAAGUACUUUCAGCGGGGAGGAAGGGAGUAAAGUUAAUACCUUUGCUCAUUGACGUUACCCGCAGAAGAAGCACCGGCUAACUCCGUGCCAGCAGCCGCGGUAAUACGGAGGGUGCAAGCGUUAAUCGGAAUUACUGGGCGUAAAGCGCACGCAGGCGGUUUGUUAAGUCAGAUGUGAAAUCCCCGGGCUCAACCUGGGAACUGCAUCUGAUACUGGCAAGCUUGAGUCUCGUAGAGGGGGGUAGAAUUCCAGGUGUAGCGGUGAAAUGCGUAGAGAUCUGGAGGAAUACCGGUGGCGAAGGCGGCCCCCUGGACGAAGACUGACGCUCAGGUGCGAAAGCGUGGGGAGCAAACAGGAUUAGAUACCCUGGUAGUCCACGCCGUAAACGAUGUCGACUUGGAGGUUGUGCCCUUGAGGCGUGGCUUCCGGAGCUAACGCGUUAAGUCGACCGCCUGGGGAGUACGGCCGCAAGGUUAAAACUCAAAUGAAUUGACGGGGGCCCGCACAAGCGGUGGAGCAUGUGGUUUAAUUCGAUGCAACGCGAAGAACCUUACCUGGUCUUGACAUCCACGGAAGUUUUCAGAGAUGAGAAUGUGCCUUCGGGAACCGUGAGACAGGUGCUGCAUGGCUGUCGUCAGCUCGUGUUGUGAAAUGUUGGGUUAAGUCCCGCAACGAGCGCAACCCUUAUCCUUUGUUGCCAGCGGUCCGGCCGGGAACUCAAAGGAGACUGCCAGUGAUAAACUGGAGGAAGGUGGGGAUGACGUCAAGUCAUCAUGGCCCUUACGACCAGGGCUACACACGUGCUACAAUGGCGCAUACAAAGAGAAGCGACCUCGCGAGAGCAAGCGGACCUCAUAAAGUGCGUCGUAGUCCGGAUUGGAGUCUGCAACUCGACUCCAUGAAGUCGGAAUCGCUAGUAAUCGUGGAUCAGAAUGCCACGGUGAAUACGUUCCCGGGCCUUGUACACACCGCCCGUCACACCAUGGGAGUGGGUUGCAAAAGAAGUAGGUAGCUUAACCUUCGGGAGGGCGCUUACCACUUUGUGAUUCAUGACUGGGGUGAAGUCGUAACAAGGUAACCGUAGGGGAACCUGCGGUUGGAUCA';
full_IUPAC      = 'AAAUUGAAGAGUUUGAUCMUGGCUCAGAUUGAACGCUGGCGGCAKGCYUAACACAUGCAAGUCGARCGGNARCRNDDNNNNVYUYRBDNNNNDGVYGNYKAGYGGCGRACGGGUGAGUAAYRYNURGGRAHHURSCYDDWNGWGGGGGAYARCNNNBSGAAASBNNNRYUAAUACCGCRURVBNYCKNVRGRNBAAAGNDKGSGAHYKYHDRDSCWBNYRCBWHNRGAUDDRCCYRNRUSVGAUUAGSUWGWWGGYRRGGUAANRGCYYACCWWGSCDRCGAUCBSUARCKGKUYUGAGAGGAYGAYCMGYCACAYYGGRACUGAGACACGGYCCRRACUCCUACGGGAGGCAGCAGUGGGGAAUAUUGSRCAAUGGGSGVAASCCUGAYSCAGCMAUGCCGCGUGDRUGAAGAAGGYYUKHKGRUUGUAAAGYHCUUUMRKYNDKGARGARRVGNNNNNNNYUAAUANNNNNNNNNNDKGACRUUAVHNRMAGAAKAAGSACCGGCUAACUYYGUGCCAGCAGCCGCGGUAAUACRRRGGGUSCRAGCGUUAAUCGGAWUDACUGGGCGUAAAGSGHRYGYAGGYGGYBNNDYAAGYBDRNUGUGAAAKCCCBGRGCUYAACYUVGGAAYDGCAKYBVRDACUGNNNNRCUWGAGUVBNDBAGRGRRDRGURGAAUUYCMBGUGUAGCRGUGAAAUGCGUAGAKAUVKGRAGGAAYAYCRRWGGCGAAGGCRRCYHYYUGGVHNNRBACUGACRCUSAKRYDCGAAAGCRUGGGKAGCAAACRGGAUUAGAUACCCYGGUAGUCCAYGCYSUAAACGMUGWCDAYUHGNNGNYBGDNNHHWHDDDNNBUBDBBNNYVNAGCWAACGYRHUAARUHSWCCGCCUGGGGAGUACGGYCGCAAGRYUAAAACUCAAAKGAAUUGACGGGGGCCCGCACAAGCGGUGGAGCAUGUGGUUUAAUUCGAWGCAACGCGAAGAACCUUACCWRSHCUUGACAUVBHNNGAABHNNBYAGAGAURNNNDDGUGCCUUCGGGARYNNDVABACAGGUGCUGCAUGGCUGUCGUCAGCUCGUGUYGUGARAUGUUGGGUUAAGUCCCSBMACGAGCGCAACCCYUDUCCYUDKUURCYAGCRVKHHDKBYGGGMACUYHARGGAKACUGCCRGUGAYAAACYGGAGGAAGGYGGGGAYGACGUCAAGUCAUCAUGGCCCUUAYGDSYWGGGCUACACACGUGCUACAAUGGYVNRUACARAGDGHDRCNAVVBNGCGANVKBRWGYNRAYCHYWNAAARYNBRUCKHAGUCCGGAUYGSAGUCUGCAACUCGACUSCRUGAAGUCGGAAUCGCUAGUAAUCGYRDAUCAGMAUGHYRCGGUGAAUACGUUCCCGGGCCUUGUACACACCGCCCGUCACACCAUGGGAGUKKRYUGYWMMAGAAGYRGNUAGYYUAACCBYHRGGRGRRCGNUYACCACKKWRKKRYYSAUGACUGGGGUGAAGUCGUAACAAGGUARCCSUAGGGGAACCUGSGGYUGGAUCA';
full_structure_constrained_bases = [];
export_full = 0;

domains = {...
    'Selection_Domain_3primeMajor_domain',...
    'Selection_Domain_3primeminor_domain',...
    'Selection_Domain_5prime_domain',...
    'Selection_Domain_C_domain'
    };
    
for i = 1:length( domains )
    figure(1);
    domain = getappdata(gca,domains{i} );
    % Hmm in retrospect slice_drawing was not necessary!
    slice_drawing( domains{i} );
    fprintf( '\n\n\nDOMAIN NAME: %s\n',domain.name );
    export_eterna(domains{i}, full_sequence, full_secstruct,full_locks,full_IUPAC,full_structure_constrained_bases, export_full );
    close( gcf );
    fprintf( 'DOMAIN NAME: %s\n\n\n',domain.name );
end
