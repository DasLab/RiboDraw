fix_original_names( '../23S_5S/rna_motif/4ybb_23S_5S_RPL.pdb.fasta' )

color_fill_circles_by_residue_type;
% > 10%
IUPAC_5S_Eterna = 'UGYYUGRYGRCMAUAGMRHDDUGGWMCCACCYGAYYCCAUBCCGAACUCRGHAGUGAAACGNHDYWKCGCCGAUGRUAGUGUGGSGHYUCSCCAUGYGARAGUAGGDMAYYGYCARRYWU';
color_rings_by_IUPAC( 'C:RA:1-120', IUPAC_5S_Eterna )
display_IUPAC_names( 'C:RA:1-120', IUPAC_5S_Eterna )

% display_nucleotide_names()

% > 1%
% IUPAC_23S_Eterna = 'RRUYARGYRRHBAAGBGYAYRHGGYRRAUGCCYDGGCRRWVASAGGCGAWRAARGRCGURNDWDBBKRCGAWAASBBNNGRBVAGBYRRBADNRDVCNNWNNNNNCNNVSAUNYYYGAAURGGRVAAYCCRVYNNNNNUHRNNNNRBYWWYDHNHNVBNRAUHCAUMRBNDNDHRRRGSDAASSNRGDRAASUGAAACAUCUHAGUABYYNBAGGARMRGAAAUCAAYHGAKAUUYCSNHAGUAGYGGCGARCGAAMVBGRANNAGYCHNGARCCUGAAUCAGYRKRUGUGUUARNDRAABSRUYUGGAAARKYVMRCSRDASHRRGUGABADYCYBGUANNYAAAAAUGCACAURCUGUGAGCUCRMHRARUARRDCGRVRCACGWGDHAYBYUGWYUGAANAWRGGGGGMCCAUCCUCYAAGRCUAAAUACUMSUBWYYGACCGAUAGYGAACHAGUACYGURARGVAARGKBRAAAAGAACCSCKGHDAGGGSAGUGAAAHAGAWMCURAAACYBBRURCVUACAAGCWGURGRAGYVNNNUUAGNBNKGYGACUGCGUACCUUUUGUAUMAUSGGUCAGCGASUURYWYDYHGURGCRAGSUUAABCRHVUAGSGDAGSCGNARVRAAABCGAGUYYKAAHHRRGCRHUAAGUYKCDRBVWRYASACCSRAMMCSNRRYGAUCUABYYAUGRBCAKGDWGRRKGYNRRGUAAHAYYDRCUGRAGGDCCGAMCYSACKNHYGUKRMAARRBBMGSGGAUGAVHUGUGRMUVGGRGUGAAAGRCYAAWCAARYYNGGWGAUAKCUGGUUCUCCYCGAAAKCUAUUKAGGUAGMGCSUHNNRNDHWNRYYNNNSGRGGUAGAGCWCUGUUWNGRYHAKRGGKYYWBMCCGVMYURBSRANYCNWKGCAAACUVCRAAUACBNNNRRRYDHNDDYNYRGSAGWCABWCDRCGGKUGMUAASSWYCGUNGUSRARAGGRWRAVRRYCCAKAYCGHCRGMUMRSRNCYCVARRUYNHDRYUMAGUGGKAAACGAWGUGGGAARGCHYAVACARCYAGGABSUUKGCYUAGAMGCAGCCAHCMUUWAAAGAAAGCSUAAUAGCUCACURGWCRAGUYRKYCYGCGCGGAAGAUDUAACGGGGYWAARYHDNRYRCCRAAGCYRCGGCAGCGACRCUUAUGCGUUGUUGGGUAGRGGAGCGUUSKGUAMGBSDDHGAAGRKNNNYYGDRARRBNKRYUGGASVUAUCMSAAGUGCGAAUGCUGACRURAGUARCGAYAADRBRDGUGAAAWVCHYVYHCGCCGDAARHCYAAGGDUUYCWGYBCAAMGUYAAUCKRVGCWGRGUDAGYCGRYHCCUAAKRYRAGGCHGWRRDGCGUARHYRAUGGRWADYNGGUUAAUAKUCCNRHRCUUGGUGUUACUGCGAAGGGGGGACGGAGAAGGCUAUGUUGGCCGGGCGACGGUUGUCCCGGUUUAAGCGUGUAGGCUGGUUUUCCAGGCAAAUCCGGAAAAUCAAGGCUGAGGCGUGAUGACGAGGCACUACGGUGCUGAAGCAACAAAUGCCCUGCUUCCAGGAAAAGCCUCUAAGCAUCAGGUAACAUCAARYCGUACYNNAAACSRACACASGURGDYRGGWHGARWAKWCYMAGGCGCUUGAGAKAMCYYDGSUGAAGGAACUMGGCAAAWURRHRCCGUAACUUMGGRAGAAGGYDYGCYVNYAUGUAGGUGARGUCCCUCGCGGAUGGAGCUGAARNBRGYBRMAGHDAHSMGVYSGCUGSRACUGUUUAHYAAAAACAYRSVACWSUGCDAAVDCGNAAGHBRRMGUAUASKGUSUGAYRCCUGCCCGGUGCYKGAAGGUUAADYRADRRDGUHADMBHMRKHRAAGCWYYDRAHHGAAGCCCCRGUAAACGGCGGCCGUAACUAUAACGGUCCYRWKGUAGYKAMRUWCCUUGUCGGGYAAGUWYSGACCUGCACGAAUGGYRUAAYSAYGGCSRBRCUGUCUCCASCHGRGRSUCAGYRAARWYGAANUYGCHGHKAAGRURCDGYRUWYCCRYGGCWAGACGGAAAGACCCCGUGMACCUUUACURYARCUUDRYAYKGAHCHYYRRNHHBDNHYGUGYAGRAUAGVUGGKAGVCWDWGAARNNNDDRCGCYAGYHNBNNUGGAGBCRDHSKUGAAAUACCABYCUKBNNNNBYYKDKGYUCUMACBHNRNNBHVKNAHHBKRNNHDVRRACMRUGYHWGGYRGGYAGUUUGACUGGGGCGGUCUCCUCCYAAARNGUAACGGAGGAGYRCDAARRUDNVCUMAKMVYGGUYGGAHAUCRBKMRBWKWGURYAAWGGYANAAGBNHGYUUVACUGYGAGMVNBAYRVBKCRAGCAGRURCGAAAGYAGGUCWUAGUGAUCCGGURGUYCUKHAUGGAARGGSCAUCGCUCAACGGAUAAAAGGUACKCYGGGGAUAACAGGCURAUWCCVCCCAAGAGYUCAYAUCGACGGBGGWGUUUGGCACCUCGAUGUCGGCUCAUCDCAUCCUGGRGCUGHAGYNGGUCCCAARGGUAUGGCUGUUCGCCAUUUAAAGHGGUACGYGASCUGGGUUYARAACGUCGUGAGACAGUUYGGUCCCUAUCURYCRUGGRHGHWDGADDWYUGADDRRRKYUGMYYYUAGUASSAGAGGACCRRRKUGRACGHRYYDCUGGUGUWYVGGUUGUBHYGCCARDSGCAYHGCCBGGUAGCUAHRUDCGGHMDNGAUAASYGCUGAAMGCAUMUAAGCRBRARRCBHVYYHHRAGAUDARWHHKCHSKRRVNVHDHRDBNBYHYDDAAGRDNYGUBVNAGACBABVASGUWRAUAGGYNVSRWGUGDARKYDHDRNDWKDHRUKNAGCKRASBNRUACUAAUBRVYCGWGMGRCUURAYYH'