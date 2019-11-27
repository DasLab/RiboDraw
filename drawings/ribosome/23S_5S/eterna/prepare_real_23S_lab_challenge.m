%load_drawing 23S_5S_drawing_eterna_theme.mat

full_secstruct  = '((((((((......((((((((((......((..(((((((((((((......((((((........))).....((((((...(((.......))).......))))))...)))....(((....)))(((((.(....).))))).(((((((((.........))))))))).))...((((((...................))))).).........((....))...(((((.....((.....))....)))))...(((..((((......(((((((((.(((.(((...(((((......)))))........(((.......)))...)))...))).)))))))))...))))........((((((((.........))))))))......(((((......)))))..)))......)).))))))).))...............((....))....)).........((((.....))))...................)))))))))).......((((..(((((......)))))..))))..................((((((....(((((((((((((..(((...((.....))...)))...((....))..((((.....)))).....)))))))))))))..((.....((((((.....((((((((((.((((...((((((......))))))...).)))...(((.(((((........))))))))..).)))))))))...(((.....)))......))))))........))..((((((....(((((....))))).((((((((..((((((((((.....(((...(((.((((...((.((.........))..))...)))).)))..)).).....)))))).)))..)))))))).)...(((((((((........)))))))))....(((......)))...((((.(((...(((......(.((((((...........((..(((((..(((.......(((((.(((..(((.........)))..)))........(((......)))..)))))...)))..))))).))...................))))))))))...)))))))((((((((......))))))))....))))))..(((((...(((......((((((((....))))))))...)))..)))))........)))))).......((.....((((((.......))))))((((....((((..((..(((((((...((.....)).))))))......(((.(((.(.(((...(((....)))...)))..))))..(((((........)))))..(((((((((((((...((((....((((..(((..((((((((((((.......).))))))((..((((....(((((((((((.((.....))))))))))..)))....))))...))(..(((((....)))))...))))))...)))...)))).........))))...))....))))))))))).))).))).....((......)).)))).((((.....))))..))))..((((....((((((((.((..(............(((((...............)))))((((((.....(((...((((.....))))...)))...))))))............(((((((((...((.........))...(((((((.....(((....))).......)))))))..((((.(((..(((((((..(((........(((((..((....))...)))))........))))))))..)))))(((((.........)))))....................(((((.......)))))..........))))...)).)))))))....))).)))))))).))))))...........(((((........)))))..((((((((.(((.((......((((.((((((..(((((.(((.(((((.((((((((((...((...............((...((......(.((((((....)))))).)...)).............))......))...))))))))))...(((.((((((.....)))))))))....))))).)))..)))))..(((.......)))((((((...........))))))..((...(((((((...((((((.......)))))).....((......))....)))))))...((((..((((....))))..)))).(((....))).))..........(((((((.((........))))))))).............))))..))))))......((((..(.((((((...((.......))...))))))...).)).).).....((.((.((((((..(((((((((......))))))..))).(((((.....))))).....)))))..)...))..))....(..((((....))).)..)....))..)))))))))))....(((((((...((((..(((((((...............))))))).(((((...((((...(((((((((((....))))))..)))))...)))).)))))...(((....((((.............))))....))).)))).......)))))))(.(((((.....))))).....((..(((((.......)))))....((((((((..((....(((((....)))))...))...))))).))).....))....)))))))))..';
full_locks      = 'ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooxooxxxoooooooooooooooooooooxxxooxooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooxoooooooooooooooooooooooooooooooooooooooooooooooooxooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooxxooooooooooooooxxooooooooooooooooooooooooooooooooooooooooooooooooooxoooooooooooooooooooooooooxoxxxxoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooxooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooxooooooooooooooooooooooxooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooxxxoooooooooooooooooooooooooooooooooooooooooxooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooxxxooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooxxooooooooooooooooooooooooooooooooooooooooooooooooooooooooooxxooooooooooooooooooooooooooooooooooooooooooooooooooxxxooooooooooooooooooooooooooooooooooooooooooooooooooooooooooxooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooxooooooooooooooooooooooooooooooooooooooxoooooooooooooooooooooooooooooooooooooooooxooooooooooooooooooooooooooooooooooooooooooooooooooooooxooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooxooooooooooooxxooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooxoooooooooooooooooooxoooooooxoooooooooooooooooooooooooooooooooooooooooxxoxxxooooooooooooooooooooooooooooxoooooooooooooooooooooooooxxxoxoooooooooooooooooxxxxoooooooooooooooooxooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooxooooooooooooooooxoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooxxxooooooooooooooooooooooooooooooooooooooooooooooxoooooooooooooooooooooooooxooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo';
full_sequence   = 'GGUUAAGCGACUAAGCGUACACGGUGGAUGCCCUGGCAGUCAGAGGCGAUGAAGGACGUGCUAAUCUGCGAUAAGCGUCGGUAAGGUGAUAUGAACCGUUAUAACCGGCGAUUUCCGAAUGGGGAAACCCAGUGUGUUUCGACACACUAUCAUUAACUGAAUCCAUAGGUUAAUGAGGCGAACCGGGGGAACUGAAACAUCUAAGUACCCCGAGGAAAAGAAAUCAACCGAGAUUCCCCCAGUAGCGGCGAGCGAACGGGGAGCAGCCCAGAGCCUGAAUCAGUGUGUGUGUUAGUGGAAGCGUCUGGAAAGGCGCGCGAUACAGGGUGACAGCCCCGUACACAAAAAUGCACAUGCUGUGAGCUCGAUGAGUAGGGCGGGACACGUGGUAUCCUGUCUGAAUAUGGGGGGACCAUCCUCCAAGGCUAAAUACUCCUGACUGACCGAUAGUGAACCAGUACCGUGAGGGAAAGGCGAAAAGAACCCCGGCGAGGGGAGUGAAAAAGAACCUGAAACCGUGUACGUACAAGCAGUGGGAGCACGCUUAGGCGUGUGACUGCGUACCUUUUGUAUAAUGGGUCAGCGACUUAUAUUCUGUAGCAAGGUUAACCGAAUAGGGGAGCCGAAGGGAAACCGAGUCUUAACUGGGCGUUAAGUUGCAGGGUAUAGACCCGAAACCCGGUGAUCUAGCCAUGGGCAGGUUGAAGGUUGGGUAACACUAACUGGAGGACCGAACCGACUAAUGUUGAAAAAUUAGCGGAUGACUUGUGGCUGGGGGUGAAAGGCCAAUCAAACCGGGAGAUAGCUGGUUCUCCCCGAAAGCUAUUUAGGUAGCGCCUCGUGAAUUCAUCUCCGGGGGUAGAGCACUGUUUCGGCAAGGGGGUCAUCCCGACUUACCAACCCGAUGCAAACUGCGAAUACCGGAGAAUGUUAUCACGGGAGACACACGGCGGGUGCUAACGUCCGUCGUGAAGAGGGAAACAACCCAGACCGCCAGCUAAGGUCCCAAAGUCAUGGUUAAGUGGGAAACGAUGUGGGAAGGCCCAGACAGCCAGGAUGUUGGCUUAGAAGCAGCCAUCAUUUAAAGAAAGCGUAAUAGCUCACUGGUCGAGUCGGCCUGCGCGGAAGAUGUAACGGGGCUAAACCAUGCACCGAAGCUGCGGCAGCGACGCUUAUGCGUUGUUGGGUAGGGGAGCGUUCUGUAAGCCUGCGAAGGUGUGCUGUGAGGCAUGCUGGAGGUAUCAGAAGUGCGAAUGCUGACAUAAGUAACGAUAAAGCGGGUGAAAAGCCCGCUCGCCGGAAGACCAAGGGUUCCUGUCCAACGUUAAUCGGGGCAGGGUGAGUCGACCCCUAAGGCGAGGCCGAAAGGCGUAGUCGAUGGGAAACAGGUUAAUAUUCCUGUACUUGGUGUUACUGCGAAGGGGGGACGGAGAAGGCUAUGUUGGCCGGGCGACGGUUGUCCCGGUUUAAGCGUGUAGGCUGGUUUUCCAGGCAAAUCCGGAAAAUCAAGGCUGAGGCGUGAUGACGAGGCACUACGGUGCUGAAGCAACAAAUGCCCUGCUUCCAGGAAAAGCCUCUAAGCAUCAGGUAACAUCAAAUCGUACCCCAAACCGACACAGGUGGUCAGGUAGAGAAUACCAAGGCGCUUGAGAGAACUCGGGUGAAGGAACUAGGCAAAAUGGUGCCGUAACUUCGGGAGAAGGCACGCUGAUAUGUAGGUGAGGUCCCUCGCGGAUGGAGCUGAAAUCAGUCGAAGAUACCAGCUGGCUGCAACUGUUUAUUAAAAACACAGCACUGUGCAAACACGAAAGUGGACGUAUACGGUGUGACGCCUGCCCGGUGCCGGAAGGUUAAUUGAUGGGGUUAGCGCAAGCGAAGCUCUUGAUCGAAGCCCCGGUAAACGGCGGCCGUAACUAUAACGGUCCUAAGGUAGCGAAAUUCCUUGUCGGGUAAGUUCCGACCUGCACGAAUGGCGUAAUGAUGGCCAGGCUGUCUCCACCCGAGACUCAGUGAAAUUGAACUCGCUGUGAAGAUGCAGUGUACCCGCGGCAAGACGGAAAGACCCCGUGAACCUUUACUAUAGCUUGACACUGAACAUUGAGCCUUGAUGUGUAGGAUAGGUGGGAGGCUUUGAAGUGUGGACGCCAGUCUGCAUGGAGCCGACCUUGAAAUACCACCCUUUAAUGUUUGAUGUUCUAACGUUGACCCGUAAUCCGGGUUGCGGACAGUGUCUGGUGGGUAGUUUGACUGGGGCGGUCUCCUCCUAAAGAGUAACGGAGGAGCACGAAGGUUGGCUAAUCCUGGUCGGACAUCAGGAGGUUAGUGCAAUGGCAUAAGCCAGCUUGACUGCGAGCGUGACGGCGCGAGCAGGUGCGAAAGCAGGUCAUAGUGAUCCGGUGGUUCUGAAUGGAAGGGCCAUCGCUCAACGGAUAAAAGGUACUCCGGGGAUAACAGGCUGAUACCGCCCAAGAGUUCAUAUCGACGGCGGUGUUUGGCACCUCGAUGUCGGCUCAUCACAUCCUGGGGCUGAAGUAGGUCCCAAGGGUAUGGCUGUUCGCCAUUUAAAGUGGUACGCGAGCUGGGUUUAGAACGUCGUGAGACAGUUCGGUCCCUAUCUGCCGUGGGCGCUGGAGAACUGAGGGGGGCUGCUCCUAGUACGAGAGGACCGGAGUGGACGCAUCACUGGUGUUCGGGUUGUCAUGCCAAUGGCACUGCCCGGUAGCUAAAUGCGGAAGAGAUAAGUGCUGAAAGCAUCUAAGCACGAAACUUGCCCCGAGAUGAGUUCUCCCUGACCCUUUAAGGGUCCUGAAGGAACGUUGAAGACGACGACGUUGAUAGGCCGGGUGUGUAAGCGCAGCGAUGCGUUGAGCUAACCGGUACUAAUGAACCGUGAGGCUUAACCUU';
full_IUPAC      = 'RRUYARGYRRHBAAGBGYAYRHGGYRRAUGCCYDGGCRRWVASAGGCGAWRAARGRCGURNDWDBBKRCGAWAASBBNNGRBVAGBYRRBADNRDVCNNWNNNNNCNNVSAUNYYYGAAURGGRVAAYCCRVYNNNNNUHRNNNNRBYWWYDHNHNVBNRAUHCAUMRBNDNDHRRRGSDAASSNRGDRAASUGAAACAUCUHAGUABYYNBAGGARMRGAAAUCAAYHGAKAUUYCSNHAGUAGYGGCGARCGAAMVBGRANNAGYCHNGARCCUGAAUCAGYRKRUGUGUUARNDRAABSRUYUGGAAARKYVMRCSRDASHRRGUGABADYCYBGUANNYAAAAAUGCACAURCUGUGAGCUCRMHRARUARRDCGRVRCACGWGDHAYBYUGWYUGAANAWRGGGGGMCCAUCCUCYAAGRCUAAAUACUMSUBWYYGACCGAUAGYGAACHAGUACYGURARGVAARGKBRAAAAGAACCSCKGHDAGGGSAGUGAAAHAGAWMCURAAACYBBRURCVUACAAGCWGURGRAGYVNNNUUAGNBNKGYGACUGCGUACCUUUUGUAUMAUSGGUCAGCGASUURYWYDYHGURGCRAGSUUAABCRHVUAGSGDAGSCGNARVRAAABCGAGUYYKAAHHRRGCRHUAAGUYKCDRBVWRYASACCSRAMMCSNRRYGAUCUABYYAUGRBCAKGDWGRRKGYNRRGUAAHAYYDRCUGRAGGDCCGAMCYSACKNHYGUKRMAARRBBMGSGGAUGAVHUGUGRMUVGGRGUGAAAGRCYAAWCAARYYNGGWGAUAKCUGGUUCUCCYCGAAAKCUAUUKAGGUAGMGCSUHNNRNDHWNRYYNNNSGRGGUAGAGCWCUGUUWNGRYHAKRGGKYYWBMCCGVMYURBSRANYCNWKGCAAACUVCRAAUACBNNNRRRYDHNDDYNYRGSAGWCABWCDRCGGKUGMUAASSWYCGUNGUSRARAGGRWRAVRRYCCAKAYCGHCRGMUMRSRNCYCVARRUYNHDRYUMAGUGGKAAACGAWGUGGGAARGCHYAVACARCYAGGABSUUKGCYUAGAMGCAGCCAHCMUUWAAAGAAAGCSUAAUAGCUCACURGWCRAGUYRKYCYGCGCGGAAGAUDUAACGGGGYWAARYHDNRYRCCRAAGCYRCGGCAGCGACRCUUAUGCGUUGUUGGGUAGRGGAGCGUUSKGUAMGBSDDHGAAGRKNNNYYGDRARRBNKRYUGGASVUAUCMSAAGUGCGAAUGCUGACRURAGUARCGAYAADRBRDGUGAAAWVCHYVYHCGCCGDAARHCYAAGGDUUYCWGYBCAAMGUYAAUCKRVGCWGRGUDAGYCGRYHCCUAAKRYRAGGCHGWRRDGCGUARHYRAUGGRWADYNGGUUAAUAKUCCNRHRCUUGGUGUUACUGCGAAGGGGGGACGGAGAAGGCUAUGUUGGCCGGGCGACGGUUGUCCCGGUUUAAGCGUGUAGGCUGGUUUUCCAGGCAAAUCCGGAAAAUCAAGGCUGAGGCGUGAUGACGAGGCACUACGGUGCUGAAGCAACAAAUGCCCUGCUUCCAGGAAAAGCCUCUAAGCAUCAGGUAACAUCAARYCGUACYNNAAACSRACACASGURGDYRGGWHGARWAKWCYMAGGCGCUUGAGAKAMCYYDGSUGAAGGAACUMGGCAAAWURRHRCCGUAACUUMGGRAGAAGGYDYGCYVNYAUGUAGGUGARGUCCCUCGCGGAUGGAGCUGAARNBRGYBRMAGHDAHSMGVYSGCUGSRACUGUUUAHYAAAAACAYRSVACWSUGCDAAVDCGNAAGHBRRMGUAUASKGUSUGAYRCCUGCCCGGUGCYKGAAGGUUAADYRADRRDGUHADMBHMRKHRAAGCWYYDRAHHGAAGCCCCRGUAAACGGCGGCCGUAACUAUAACGGUCCYRWKGUAGYKAMRUWCCUUGUCGGGYAAGUWYSGACCUGCACGAAUGGYRUAAYSAYGGCSRBRCUGUCUCCASCHGRGRSUCAGYRAARWYGAANUYGCHGHKAAGRURCDGYRUWYCCRYGGCWAGACGGAAAGACCCCGUGMACCUUUACURYARCUUDRYAYKGAHCHYYRRNHHBDNHYGUGYAGRAUAGVUGGKAGVCWDWGAARNNNDDRCGCYAGYHNBNNUGGAGBCRDHSKUGAAAUACCABYCUKBNNNNBYYKDKGYUCUMACBHNRNNBHVKNAHHBKRNNHDVRRACMRUGYHWGGYRGGYAGUUUGACUGGGGCGGUCUCCUCCYAAARNGUAACGGAGGAGYRCDAARRUDNVCUMAKMVYGGUYGGAHAUCRBKMRBWKWGURYAAWGGYANAAGBNHGYUUVACUGYGAGMVNBAYRVBKCRAGCAGRURCGAAAGYAGGUCWUAGUGAUCCGGURGUYCUKHAUGGAARGGSCAUCGCUCAACGGAUAAAAGGUACKCYGGGGAUAACAGGCURAUWCCVCCCAAGAGYUCAYAUCGACGGBGGWGUUUGGCACCUCGAUGUCGGCUCAUCDCAUCCUGGRGCUGHAGYNGGUCCCAARGGUAUGGCUGUUCGCCAUUUAAAGHGGUACGYGASCUGGGUUYARAACGUCGUGAGACAGUUYGGUCCCUAUCURYCRUGGRHGHWDGADDWYUGADDRRRKYUGMYYYUAGUASSAGAGGACCRRRKUGRACGHRYYDCUGGUGUWYVGGUUGUBHYGCCARDSGCAYHGCCBGGUAGCUAHRUDCGGHMDNGAUAASYGCUGAAMGCAUMUAAGCRBRARRCBHVYYHHRAGAUDARWHHKCHSKRRVNVHDHRDBNBYHYDDAAGRDNYGUBVNAGACBABVASGUWRAUAGGYNVSRWGUGDARKYDHDRNDWKDHRUKNAGCKRASBNRUACUAAUBRVYCGWGMGRCUURAYYHU';
full_structure_constrained_bases = [17,23, 34,73, 76,80, 82,102, 104,108,110,181, 183,186, 207,238, 257,288, 290,304, 311,319, 340,348, 350,371, 391,398, 406,420, 422,432, 434,441, 483,495, 516,521, 549,561, ...
561,562, 565,575, 578,586, 588,603, 623,667, 669,684, 688,696, 699,701, 706,723, 729,759, 764,772, 776,811, 813,834, 837,843, 850,855, 867,879, 896,625, 933,939, 945,952, 963,992, 995,997, 1001,1017, 1023,1054, 1056,1059, 1061,1063, 1073,1075, 1077,1080, 1082,1137, 1143,1152, 1156,1158, 1160,1170, 1177,1207, 1214,1233, 1237,1249, 1251,1269,...
    1270,1418, 1420,1423, 1434,1450, 1458,1465, 1468,1522, 1525,1555, 1573,1576, 1578,1608, 1610,1619, 1621,1646, ...
    1647,1773, 1775,1776, 1786,1787, 1789,1836, 1842,1850, 1859,1863, 1866,1873, 1877,1881, 1890,1897, 1902,1948, 1956,2003,  ...
    2042,2049, 2052,2090, 2092,2102, 2185,2225, 2227,2286, 2288,2294, 2296,2303, 2311,2316, 2336,2342, 2344,2400, 2414,2587, ...
    2589,2603, 2605,2615, 2617,1000];
export_full = 1;

export_eterna('23S rRNA', full_sequence, full_secstruct,full_locks,full_IUPAC,full_structure_constrained_bases, export_full );