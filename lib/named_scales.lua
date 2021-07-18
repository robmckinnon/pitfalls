local scales = {}
scales.names={
"'9-limit' Consonant Whole-Tone, Astrology-6",
"'Just' Chromatic",
"'Septimal' Natural Minor",
"12-tone Chromatic",
"12-tone Chromatic (1/10-comma positive)",
"12-tone Chromatic (1/10-comma positive), Leapday-12",
"12-tone Chromatic (1/11-comma)",
"12-tone Chromatic (1/12-comma positive)",
"12-tone Chromatic (1/125-comma positive), Schismatic-12",
"12-tone Chromatic (1/14-comma positive)",
"12-tone Chromatic (1/18-comma positive)",
"12-tone Chromatic (1/20-comma positive)",
"12-tone Chromatic (1/21-comma positive), Argent-12",
"12-tone Chromatic (1/24-comma positive), Dominant-12",
"12-tone Chromatic (1/251-comma positive), Schism-12",
"12-tone Chromatic (1/29-comma positive), Shrirag-12",
"12-tone Chromatic (1/3-comma positive)",
"12-tone Chromatic (1/32-comma positive), Kwai-12",
"12-tone Chromatic (1/4-comma positive)",
"12-tone Chromatic (1/44-comma positive)",
"12-tone Chromatic (1/478-comma positive)",
"12-tone Chromatic (1/68-comma positive)",
"12-tone Chromatic (1/7-comma positive)",
"12-tone Chromatic (1/8-comma positive), Leapfrog-12",
"12-tone Chromatic (1/8-comma positive), Leapweek-12",
"12-tone Chromatic (1/80-comma positive), Batteuse-12",
"12-tone Chromatic (1/9-comma positive)",
"12-tone Chromatic (2/11-comma positive)",
"12-tone Chromatic (2/13-comma positive)",
"12-tone Chromatic (2/21-comma positive)",
"12-tone Chromatic (2/23-comma positive)",
"12-tone Chromatic (3/20-comma positive)",
"12-tone Chromatic (3/25-comma positive)",
"12-tone Chromatic (4/9-comma positive)",
"12-tone Chromatic (5/24-comma positive)",
"12-tone Chromatic (7/24-comma positive), Suprapyth-12",
"15-tone 'Major'",
"15-tone 'Minor', Natural Minor",
"15-tone Major/Minor mixed",
"15-tone Melodic Minor",
"17-tone Harmonic Major",
"17-tone Harmonic Minor",
"17-tone Major",
"17-tone Major Pentatonic",
"17-tone Melodic Minor",
"17-tone Minor Pentatonic, Supra-5, Salendro Sejati: Sunda",
"17-tone Natural Minor",
"17-tone Suspended Pentatonic",
"19-tone Dorian",
"19-tone Full Minor",
"19-tone Harmonic Major",
"19-tone Harmonic Minor",
"19-tone Locrian",
"19-tone Lydian",
"19-tone Major Pentatonic",
"19-tone Major, Ionian",
"19-tone Melodic Minor",
"19-tone Minor Pentatonic",
"19-tone Mixolydian",
"19-tone Natural Minor, Aeolian",
"19-tone Phrygian",
"19-tone Suspended Pentatonic",
"20-tone 'Major'",
"20-tone 'Minor'",
"22 tone 'Just' Major",
"22 tone Blues",
"22 tone Major",
"22 tone Melodic Minor",
"22 tone Minor, Superpyth-7",
"22 tone Natural Minor",
"25 tone 'Major'",
"25 tone 'Minor'",
"26 tone Harmonic Major",
"26 tone Harmonic Minor",
"26 tone Major",
"26 tone Melodic Minor",
"26 tone Natural Minor",
"27 tone 'Major'",
"27 tone 'Minor'",
"29 tone 'Just' Major",
"29 tone 'Just' Minor",
"29 tone Major",
"29 tone Melodic Minor",
"29 tone Minor",
"29 tone Natural Minor",
"30 tone 'Major'",
"30 tone 'Minor'",
"31 tone Harmonic Major",
"31 tone Harmonic Minor",
"31 tone Major, Intense Diatonic Lydian, M.Ionian",
"31 tone Major-Minor",
"31 tone Melodic Minor",
"31 tone Natural Minor, Intense Diatonic Hypodorian, Aeolian",
"32 tone 'Major'",
"32 tone 'Minor'",
"34 tone 'Just' Major",
"34 tone 'Just' Minor",
"34 tone Melodic Minor",
"34 tone Natural Minor",
"41 tone 'Just' Major",
"41 tone 'Just' Minor",
"41 tone Major",
"41 tone Melodic Minor",
"41 tone Minor",
"41 tone Natural Minor",
"43 tone Harmonic Major",
"43 tone Harmonic Minor",
"43 tone Major",
"43 tone Melodic Minor",
"43 tone Natural Minor",
"45 tone Major",
"45 tone Minor",
"46 tone 'Just' Major",
"46 tone 'Just' Minor",
"46 tone Melodic Minor",
"46 tone Natural Minor",
"4th plagal Byzantine Liturgical mode",
"5 out of 19, Godzilla-5, inverse",
"50 tone Harmonic Major",
"50 tone Harmonic Minor",
"50 tone Major",
"50 tone Melodic Minor",
"50 tone Natural Minor",
"53 tone 'Just' Major",
"53 tone 'Just' Minor",
"53 tone Melodic Minor",
"53 tone Natural Minor",
"55 tone Harmonic Major",
"55 tone Harmonic Minor",
"55 tone Major",
"55 tone Melodic Minor",
"55 tone Natural Minor",
"65 tone 'Just' Major",
"65 tone 'Just' Minor",
"7-tone gamut (saptaka)",
"9 tone 'Sorog': Sunda",
"A Carpenter's Olive",
"A-Team-5",
"A-Team-8",
"Absurdity-14",
"Adonai Malakh: Jewish",
"Aeolian Harmonic, Lydian sharp 2, Mela Kosalam, Raga Kusumakaram, Sampoorna Hindol",
"Aeolian Pentatonic, Hira-joshi, Kata-kumoi, Yona Nuki Minor: Japan, Tizita Minor (Half tizita): Ethiopia",
"Aeolian Porcupine",
"Aeolian flat 1",
"Agmon Diatonic DS1",
"Agmon Diatonic DS3, Armodue, Goldsmith, Superionian",
"Agmon Diatonic DS5",
"Algerian, Sabiren",
"Altered Melodic Minor",
"Alternate Pentachordal Major",
"Alternate Pentachordal Minor",
"Alternate Proper Decatonic",
"Amity-7",
"Anguirus-10",
"Anguirus-14",
"Anti-pentatonic",
"Antiionian",
"Antikythera-10",
"Antikythera-6",
"Antilocrian",
"Antilydian",
"Antimixolydian",
"Antiphrygian",
"Apparatus-10",
"Apparatus-11",
"Arabic Diatonic",
"Arabic Diatonic, Maqam Rast, Quasi-equal Heptatonic, Neutral Diatonic Phrygian, Ioniodorian",
"Archytas Clan-10",
"Archytas Clan-15",
"Arezzo Major Diatonic Hexachord, Guidonian Hexachord, Scottish Hexatonic, Raga Kambhoji, Devarangini, Hem Kalyan, Sama (Syama)",
"Armodue-7",
"Armodue-7, Antidorian",
"Armodue-9",
"Armodue-9, Superionian",
"Astrology-10",
"Astrology-6",
"Astrology-6, Lemba-6",
"Augene-12",
"Augene-15",
"Augene-6",
"Augene-9",
"Augment-12",
"Augment-15",
"Augment-6",
"Augment-9",
"Augmented-12",
"Augmented-15",
"Augmented-6",
"Augmented-9",
"August-12",
"August-6",
"August-9",
"Baldy-11",
"Baldy-6",
"Balzano 11-tone",
"Balzano 11-tone inverse",
"Balzano 11-tone, Agmon Diatonic DS4, Noll Pseudo-diatonic",
"Balzano 9-tone inverse",
"Balzano 9-tone, Hyperpentatonic, Score-9",
"Balzano-13",
"Beatles-10",
"Beatles-10, Dichotic-10",
"Beatles-7, Dichotic-7",
"Belauensis-14",
"Belauensis-15",
"Bi Yu: China",
"Bicycle",
"Bidia-12",
"Bipelog-14",
"Bischismic-12",
"Blackbirds-12",
"Blacksmith-10",
"Blacksmith-15",
"Blackwood Decatonic",
"Blackwood Hexatonic",
"Blackwood Pentatonic, Quasi Slendro, Father-5",
"Blackwood Subminor, Sarnathian",
"Blackwood-10",
"Blackwood-15",
"Blue-5",
"Bluebirds-13",
"Bluebirds-7",
"Blues Enneatonic II",
"Blues Enneatonic, Raga Gara, Malgunji, Nilambari, Pat Manjiri, Rageshri Bahar, Ramdasi Malhar, Ionian/Dorian mixed",
"Blues Heptatonic II",
"Blues Minor, Raga Malkauns (Malakosh), Raga Hindola, Man Gong, Quan Ming, Yi Ze, Jiao: China, Shegaye: Ethiopia",
"Blues Peruvian",
"Blues scale I, Raga Nileshwari",
"Blues scale II",
"Bohlen 833, cents Golden scale",
"Bossier-11",
"Bossier-11, Quadriolic Diatonic",
"Bossier-14",
"Breed Decatonic",
"Canou-14",
"Canou-9",
"Catakleismic-15",
"Chaio: China",
"Chalmers Major, Hlanithian",
"Chalmers Minor, Celephaisian, A-Team-8",
"Chalmers Triadic Minor, Ultharian",
"Chameleon Porcupine",
"Chromatic Bebop, Raga Bhairav Bahar",
"Chromatic Dorian, Mela Kanakangi, Raga Kanakambari",
"Chromatic Hypodorian inverse",
"Chromatic Hypodorian, Relative Blues scale, Raga Dvigandharabushini",
"Chromatic Hypolydian, Purvi (Poorvi) That, Mela Kamavardhani, Raga Shri, Basant, Dhipaka, Pantuvarali, Jaitshree, Kasiramakriya, Maligaura, Puriya Dhanashri, Suddharamakriya, Tanki, Pireotikos: Greece",
"Chromatic Hypophrygian inverse",
"Chromatic Hypophrygian, Blues scale III",
"Chromatic Lydian, Raga Lalit, Bhankar, Pancham",
"Chromatic Mixolydian",
"Chromatic Mixolydian inverse",
"Chromatic Phrygian",
"Chromatic Phrygian inverse",
"Chromatic and Diatonic Dorian mixed",
"Chromatic and Permuted Diatonic Dorian mixed",
"Chrysanthos 1st Byzantine Liturgical mode",
"Chrysanthos 4th Byzantine Liturgical mode",
"Chrysanthos Soft Chromatic Byzantine mode",
"Clanghats",
"Columns",
"Crushed Oranges",
"Dalmonte 8-tone",
"Dance scale of Yi people: China",
"Dante's Flying Machine",
"Dastgah-e Mahur, Rast (Rast Panjgah)",
"Dastgah-e Nava, Maqam Ushaq Masri",
"Dastgah-e Sehgah",
"Dastgah-e Sehgah, Neutral Diatonic Lydian",
"Debussy's Heptatonic",
"Decibel-10",
"Decibel-6",
"Decimal-10",
"Decimal-14",
"Decimal-6",
"Deflated-9",
"Demolished-12",
"Developmental Ecstacy",
"Diamond Gate",
"Diaschismic-10",
"Diaschismic-10, Pajara-10",
"Diaschismic-12",
"Diaschismic-12, Pajara-12",
"Diatonic + Enharmonic Diesis Dorian",
"Diatonic + Enharmonic Diesis Hypodorian",
"Diatonic + Enharmonic Diesis Hypolydian",
"Diatonic + Enharmonic Diesis Hypophrygian",
"Diatonic + Enharmonic Diesis Lydian",
"Diatonic + Enharmonic Diesis Mixolydian",
"Diatonic + Enharmonic Diesis Phrygian",
"Diatonic + Hemiolic Chromatic Diesis Dorian",
"Diatonic + Hemiolic Chromatic Diesis Hypodorian",
"Diatonic + Hemiolic Chromatic Diesis Hypolydian",
"Diatonic + Hemiolic Chromatic Diesis Hypophrygian",
"Diatonic + Hemiolic Chromatic Diesis Lydian",
"Diatonic + Hemiolic Chromatic Diesis Mixolydian",
"Diatonic + Hemiolic Chromatic Diesis Phrygian",
"Diatonic + Soft Chromatic Diesis Dorian",
"Diatonic + Soft Chromatic Diesis Hypodorian",
"Diatonic + Soft Chromatic Diesis Hypolydian",
"Diatonic + Soft Chromatic Diesis Hypophrygian",
"Diatonic + Soft Chromatic Diesis Lydian",
"Diatonic + Soft Chromatic Diesis Mixolydian",
"Diatonic + Soft Chromatic Diesis Phrygian",
"Diatronic",
"Dichotic-10",
"Dichotic-7",
"Dicot-7",
"Diminished",
"Diminished, Modus conjunctus",
"Diminished, Modus conjunctus, Messiaen mode 2, inverse, Whole-Half step scale",
"Diminished-12",
"Diminished-12, Demolished-12",
"Dominant Pentatonic",
"Donut Dose",
"Dorian Porcupine",
"Dorian flat 5, Blues Heptatonic, Makam Karcigar, Maqam Nahawand Murassah, Kiourdi ascending, Kartzihiar: Greece",
"Double Harmonic Major",
"Double Harmonic Major, Major Gipsy",
"Double Harmonic Major, Major Gipsy, Bhairav That, Mela Mayamalavagaula, Raga Paraj, Kalingada, Gaulipantu, Lalitapancamam, Gandhakriya, Kalingda, Manjiri, Chromatic 2nd Byzantine Liturgical, Hitzazkiar: Greece, Maqam Zengule, Hijaz Kar, Suzidil",
"Double Harmonic Minor, Hungarian Minor",
"Double Harmonic Minor, Hungarian Minor, Egyptian Heptatonic, Mela Simhendramadhyama, Raga Madhava Manohari, Shimendra Madyam, Maqam Nawa Athar, Hisar, Flamenco Mode, Niavent: Greece",
"Double-Phrygian Hexatonic",
"Doublewide-10",
"Doublewide-14",
"Duplex genus secundum",
"Duplex genus secundum inverse",
"Dylathian, False Father",
"Dynamic Major",
"Dynamic Minor",
"Dynamic Symmetrical Major",
"Dynamic Symmetrical Minor",
"Echidnic-10",
"Elevenplus",
"Enharmonic Dorian",
"Enharmonic Hypodorian",
"Enharmonic Hypolydian",
"Enharmonic Hypophrygian",
"Enharmonic Lydian",
"Enharmonic Mixolydian",
"Enharmonic Phrygian",
"Enshrouded House of Kundalini",
"Equal Diatonic Dorian",
"Equal Diatonic Hypodorian",
"Equal Diatonic Hypolydian",
"Equal Diatonic Hypophrygian",
"Equal Diatonic Lydian",
"Equal Diatonic Mixolydian",
"Equal Diatonic Phrygian",
"Equal temperaments 3, and 4, mixed",
"Equal temperaments 3, and 5, mixed",
"Equal temperaments 4, and 6, mixed",
"Erlich Double Diatonic, Injera-14",
"Escapescapes",
"Eskimo Hexatonic 2, (Alaska: Point Hope)",
"Eskimo tetratonic (Alaska: Bethel)",
"Espla's scale, 8-tone Spanish",
"Exotic Symmetrical Decatonic",
"Father-5",
"Father-8",
"Ferrum-10",
"First plagal Byzantine Liturgical mode ascending",
"Flattone-12",
"Flavell's Blues",
"Fleetwood-14",
"Fokker 12-tone",
"Four out of 19",
"Freivald Lament",
"Freivald-11",
"Freivald-13",
"Freivald-13, Diatonicized Chromatic",
"Freivald-Porcupine",
"Full Minor, Raga Jungala, Kanada Bahar, Meera Malhar, Pilu",
"G.Dorian, M.Phrygian, G.M.Hypoaeolian, Bhairavi That, Mela Hanumatodi, Raga Asavari (Asaveri), Bilashkhani Todi, Ghanta, Makam Kurd, Gregorian nr.3, Escala Andaluza, In, Zokuso: Japan, Ousak: Greece, Major inverse",
"G.Hypolydian, M.Lydian, G.M.Hypolocrian, Rut biscale ascending, Kalyan That (Yaman), Mela Mecakalyani, Raga Chandrakant, Malarani, Shuddh Kalyan, Ping, Kung, Gu: China",
"G.Hypophrygian, G.Ionian (Iastian), M.Mixolydian, G.M.Hypoionian, Hypermixolydian, Mischung 3, Khamaj That, Mela Harikambhoji, Raga Balahamsa, Bhim, Devamanohari, Harini, Janjhuti, Kaamaai, Khambhavati, Surati, Gregorian nr.7, Enharmonic Byzantine Liturgical, Rast descending: Greece, Ching, Shang: China",
"G.Lydian, M.Ionian, M.Hypolydian, Major, Bilaval That, Mela Shankarabharanam, Raga Atana, Ghana Heptatonic, Peruvian Major, Matzore, Rast ascending: Greece, 4th plagal Byzantine, Ararai: Ethiopia, Makam Cargah, Ajam Ashiran, Dastgah-e Mahur, Dastgah-e Rast Panjgah, Xin: China, DS2, Heptatonia prima",
"G.M.Hypodorian, G.M.Aeolian, G.Hyperphrygian, Natural Minor, Melodic Minor descending, Asavari That, Mela Natabhairavi, Raga Jaunpuri, Adana, Darbari, Dhanyasi, Jingla, Gregorian nr.2, Makam Buselik, Nihavend, Peruvian Minor, Se, Chiao: China, Geez, Ezel: Ethiopia, Kiourdi descending: Greece, Cushak: Armenia",
"G.Mixolydian, G.Hyperdorian, M.Hypophrygian, M.Locrian, G.M.Hyperaeolian, Rut biscale descending, Pien chih: China, Makam Lami, Yishtabach: Jewish",
"G.Phrygian, M.Dorian, M.Hypomixolydian, G.M.Hypoionian (Hypoiastian), Kafi That, Mela Kharaharapriya, Raga Bageshri, Bhimpalasi, Huseni, Kanara, Kapi, Nayaki Kanada, Ritigaula, Sriraga, Mischung 5, Gregorian nr.8, Eskimo Heptatonic, Yu: China, Hyojo, Oshikicho, Banshikicho: Japan, Nam: Vietnam",
"Galilei-12",
"Genus chromaticum",
"Genus chromaticum, Tcherepnin Nonatonic mode 1, Augmented-9",
"Genus decimum",
"Genus diatonico-chromaticum",
"Genus diatonico-chromaticum, Yasser's Supradiatonic inverse",
"Genus diatonicum",
"Genus diatonicum, Dominant Bebop, Raga Khamaj, Alhaiya Bilaval, Bihagara, Desh Malhar (Des), Devagandhari, Lankeshree, Malagunji, Nat Bihag, Nat Malhar, Maqam Shawq Awir, Gregorian nr.6, Chinese 8-Tone, Rast: Greece, Ionian/Mixolydian mixed",
"Genus octavum",
"Genus primum",
"Genus primum inverse",
"Genus quartum",
"Genus secundum",
"Genus septimum",
"Glacial-13",
"Glacial-6",
"Glacial-7",
"Glacial-7, Lobonian",
"Godzilla-14",
"Godzilla-5",
"Godzilla-9",
"Golden Diminished",
"Golden Meantone Chromatic",
"Golden-10",
"Golden-13",
"Gorgo-11",
"Gorgo-5",
"Gorgo-6",
"Gorgo-Pelog",
"Gould 11 out of 19",
"Gould Nonatonic",
"Greeley-15",
"Greeley-8",
"Greenwood-14",
"Guanyintet-5",
"Guanyintet-9",
"Hahn Pentachordal",
"Hahn Symmetrical Pentachordal",
"Hahn Trichordal",
"Hajdu non-octave mode",
"Half-diminished Bebop",
"Hamel",
"Harmonic Lydian, Mela Latangi, Raga Gitapriya, Hamsalata",
"Harmonic Major, Mischung 2, Mela Sarasangi, Raga Anand Leela, Haripriya, Nat Bhairav, Simhavahini, Ethiopian, Tabahaniotikos: Greece",
"Harmonic Minor",
"Harmonic Minor inverse",
"Harmonic Minor inverse, Mixolydian flat 2, Mela Cakravaka, Raga Ahir Bhairav, Bindumalini, Hevitri, Vegavahini, Makam Hicaz, Zanjaran",
"Harmonic Minor, Mischung 4, Pilu That, Mela Kiravani, Raga Kiranavali, Kirvani (Kirwani), Kalyana Vasantha, Deshi(3), Maqam Bayat-e-Esfahan, Sultani Yakah, Zhalibny Minor, Armoniko minore: Greece",
"Harmonic Whole-Tone",
"Harmonic and Neapolitan Minor mixed",
"Hawaiian",
"Heathwaite's Meteoroid",
"Hecatehex",
"Hedgehog-14",
"Hedgehog-6",
"Hedgehog-8",
"Hemiamity-14",
"Hemiaug-12",
"Hemififths-10",
"Hemikleismic-15",
"Hemiolic Chromatic Dorian",
"Hemiolic Chromatic Hypodorian",
"Hemiolic Chromatic Hypolydian",
"Hemiolic Chromatic Hypophrygian",
"Hemiolic Chromatic Lydian",
"Hemiolic Chromatic Mixolydian",
"Hemiolic Chromatic Phrygian",
"Hemiolic Chromatic and Diatonic Dorian mixed",
"Hemithirds-13",
"Hemithirds-13, Roulette-13",
"Hemithirds-13, Spell-13",
"Hemithirds-13, Tutone-13",
"Hemithirds-6",
"Hemithirds-6, Roulette-6",
"Hemithirds-6, Spell-6",
"Hemithirds-6, Tutone-6",
"Hemithirds-7",
"Hemithirds-7, Roulette-7",
"Hemithirds-7, Tutone-7",
"Hexachordal",
"Hexe-12",
"Hexy",
"Hon-kumoi-joshi, Sakura, Akebono II: Japan, Olympos Enharmonic, Raga Gunakri (Gunakali), Latantapriya, Salanganata, Saveri, Ambassel: Ethiopia",
"Honchoshi plagal form: Japan",
"Honchoshi: Japan",
"Hopalong",
"Horse OrgN",
"Horthatian",
"Houseini: Greece, Raga Rudra Manjiri, Modes of Major Pentatonic mixed",
"Hungarian Major, Mela Nasikabhusani, Raga Nasamani",
"Hydra",
"Hyperenharmonic Dorian",
"Hyperenharmonic Hypodorian",
"Hyperenharmonic Hypolydian",
"Hyperenharmonic Hypophrygian",
"Hyperenharmonic Lydian",
"Hyperenharmonic Mixolydian",
"Hyperenharmonic Phrygian",
"Hyperpentatonic",
"Ice Bookshop",
"Iceface",
"Iceface Maqam",
"Iceface Straub Variant",
"Ilarnekian",
"Immunity-5",
"Immunity-9",
"Inflated-12",
"Inflated-15",
"Injera",
"Injera-12",
"Injera-14",
"Injerous-14",
"Intense Diatonic Dorian, M.Phrygian",
"Intense Diatonic Hypolydian, M.Lydian",
"Intense Diatonic Hypophrygian, M.Mixolydian",
"Intense Diatonic Mixolydian, M.Locrian",
"Intense Diatonic Phrygian, M.Dorian",
"Ionian Augmented, Ionian sharp 5",
"Ionian Pentatonic, Raga Gambhiranata, Pelog Degung Modern, Ryukyu: Japan, Vong co: Vietnam, Batti Major: Ethiopia",
"Ionian Porcupine",
"Iranian Diatonic",
"Ishikotsucho: Japan, Raga Yaman Kalyan, Chayanat, Bihag, Hamir Kalyani, Kedar, Gaud Sarang, Genus diatonicum veterum correctum, Gregorian nr.5, Kubilai's Mongol scale, Ionian/Lydian mixed",
"Isopelogic-11",
"Isopelogic-9",
"Istrian: Croatia",
"Iwato: Japan",
"JG Octatonic",
"Jerome-9, Progression-9",
"Jeths' mode",
"Joan-11",
"Joan-11, Score-11",
"Joan-9",
"Jones's Porcupine-8",
"Jubilee-12",
"Kadathian",
"Kangaroo-13",
"Karakalian",
"Kathartic Parts",
"Keenan 11 out of 19",
"Keenan Decatonic",
"Keenanmarvel",
"Ketradektriatoh",
"Kiourdi: Greece",
"Kleismic-11",
"Kleismic-15",
"Kleismic-7",
"Kleismic-7, Triolic Diatonic",
"Kleismic-8",
"Krantz 11 out of 19",
"Kumonga-11",
"Kung: China",
"Laquadgu-13",
"Laz-13",
"Leading Whole-tone",
"Leading Whole-tone inverse",
"Leantone-13, Spell-13",
"Leantone-7, Spell-7",
"Lemba-10",
"Lemba-6",
"Liese-11",
"Liese-5",
"Liese-7",
"Liese-9",
"Locrian Bebop",
"Locrian Hexatonic, Ritsu: Japan, Raga Suddha Todi",
"Locrian double-flat 7",
"Locrian natural 6, Maqam Tarznauyn",
"Locrian nr.2",
"Locrian/Aeolian mixed",
"Louvier Prelude et Fugue 2",
"Louvier Prelude et Fugue 3",
"Lovecraft-13, Ragimetric-13",
"Lovecraft-5",
"Lovecraft-9",
"Lumma Decatonic",
"Lydian Augmented, Lydian sharp 5",
"Lydian Diminished, Mela Dharmavati, Raga Ambika, Arunajualita, Dumyaraga, Madhuvanti",
"Lydian Dominant, Mela Vacaspati, Raga Bhusavati, Bhusavali, Vachaspati, Overtone, Lydian-Mixolydian, Bartok",
"Lydian Hexatonic, Raga Kumud, Sankara (Shankara), Prabhati",
"Lydian Minor, Mela Rishabhapriya, Raga Ratipriya, Mixolydian sharp 4, flat 6",
"Lydian Pentatonic, Raga Amritavarshini, Malashri, Shilangi, Batti Lydian: Ethiopia",
"Mabila-9",
"Mabila-9, Supercorinthian",
"Machine-11",
"Machine-5",
"Machine-6",
"Magen Abot: Jewish",
"Magic-10",
"Magic-10, Witchcraft-10",
"Magic-13",
"Magic-13, Witchcraft-13",
"Magic-6",
"Magic-7",
"Magic-7, Witchcraft-7",
"Magical 7th",
"Major Bebop, Altered Mixolydian",
"Major Locrian",
"Major Pentatonic, Ryosen, Yona Nuki Major: Japan, Man Jue, Gong: China, Raga Bhopali (Bhup), Bilahari, Deskar, Kokila, Jait Kalyan, Mohanam, Peruvian Pentatonic 1, Ghana Pentatonic 2, Tizita Major: Ethiopia",
"Major Porcupine",
"Major quasi-equal Heptatonic",
"Major quasi-equal Heptatonic, Porky-7",
"Major-Minor Porcupine",
"Major-Minor, Melodic Major, Mischung 6, Mixolydian flat 6, Arabic Minor, Oriental Minor, Mela Carukesi, Raga Charukeshi, Tarangini, Heptatonia secunda",
"Major/Minor mixed, Supermode",
"Makam Acemasiran",
"Makam Arak",
"Makam Buselik (Puselik)",
"Makam Buzurk",
"Makam Cargah II, Zavil, Dastgah-e Mahur, 53 tone Major",
"Makam Ferahnuma, Askefza, Acem Kurdi",
"Makam Huseyniasiran",
"Makam Huzzam, Maqam Saba Zamzam, Phrygian flat 4",
"Makam Mahur",
"Makam Muhayyer Kurdi",
"Makam Neveser",
"Makam Nihavend, Muberka, 53 tone Minor",
"Makam Nisaburek",
"Makam Sazkar",
"Makam Sultaniyegah, Ruhnevaz, Ferahfeza (Farahfaza)",
"Makam Suzidilara",
"Makam Suzinak",
"Makam Urmawi",
"Malaysian Pelog",
"Mandelbaum 10 out of 19",
"Mandelbaum 11 out of 19",
"Mandelbaum 12 out of 19",
"Mandelbaum 13 out of 19, Spell-13",
"Mandelbaum 14 out of 19",
"Mandelbaum 8 out of 19",
"Mandelbaum 9 out of 19",
"Maqam 'Ajam Murassah, Ioniolydian",
"Maqam 'Ushshaq Turki, Urfa, Isfahan, Dastgah-e Shur",
"Maqam Hijaz (Hedjaz), Raga Kabir Bhairav",
"Maqam Hussaini, Ushaq, Neutral Diatonic Dorian",
"Maqam Huzzam",
"Maqam Jahargah (Jiharkah), Naghmeh Bayat-e Tork, Naghmeh Dashti",
"Maqam Mahur",
"Maqam Mansuri",
"Maqam Nahawand, Farahfaza, Raga Suha (Suha Kanada), Gregorian nr.4, Utility Minor",
"Maqam Nahfat",
"Maqam Nawa",
"Maqam Ouchairan-Hussaini, Bayatan, Neutral Diatonic Mixolydian",
"Maqam Sabr Jadid",
"Maqam Shadd'araban",
"Maqam Shawq Afza",
"Maqam Sikah (Segah), Neutral Diatonic Hypolydian",
"Maqam Su'ar, Naghmeh Abuata, Naghmeh Afshari",
"Maqam Tarzanuyn",
"Maqamic-10",
"Maqamic-7",
"Marva That, Mela Gamanasrama, Raga Bairari, Malavi, Partiravam, Puriya, Puriya Kalyan, Purvikalyani, Sohani, Harsh-intense Major, Peiraiotikos: Greece",
"Marvel-12",
"Mavila-5",
"Mavila-5, Patet dang",
"Mavila-7",
"Mavila-7, Antiaeolian",
"Mavila-7, Antiaeolian, Hyperpentatonic",
"Mavila-9",
"Mavila-9, Superaeolian",
"McLaren 11 out of 19",
"Meantone Chromatic (1/107-comma), Pontiac-12",
"Meantone Chromatic (1/15-comma), Minsys-12",
"Meantone Chromatic (1/16-comma)",
"Meantone Chromatic (1/17-comma)",
"Meantone Chromatic (1/18-comma)",
"Meantone Chromatic (1/19-comma)",
"Meantone Chromatic (1/2-comma)",
"Meantone Chromatic (1/20-comma), Melkis-12",
"Meantone Chromatic (1/22-comma)",
"Meantone Chromatic (1/24-comma)",
"Meantone Chromatic (1/26-comma), Quiretsim-12",
"Meantone Chromatic (1/29-comma)",
"Meantone Chromatic (1/3-comma)",
"Meantone Chromatic (1/315-comma)",
"Meantone Chromatic (1/39-comma), Photia-12",
"Meantone Chromatic (1/4-comma)",
"Meantone Chromatic (1/4-comma), Milliet de Chales-12",
"Meantone Chromatic (1/5-comma)",
"Meantone Chromatic (1/52-comma)",
"Meantone Chromatic (1/6-comma), Evelyne-12",
"Meantone Chromatic (1/68-comma), Countermeantone-12",
"Meantone Chromatic (1/7-comma), Romieu-12",
"Meantone Chromatic (1/8-comma)",
"Meantone Chromatic (1/8-comma), Lalagu-12",
"Meantone Chromatic (1/83-comma), Helmholtz-12",
"Meantone Chromatic (1/9-Pythagorean comma)",
"Meantone Chromatic (18/59-comma), Grackle-12",
"Meantone Chromatic (19/75-comma)",
"Meantone Chromatic (2/11-comma), Silbermann-12",
"Meantone Chromatic (2/13-comma)",
"Meantone Chromatic (2/17-comma)",
"Meantone Chromatic (2/5-comma)",
"Meantone Chromatic (2/7-comma), Zarlino",
"Meantone Chromatic (2/9-comma), Rossi-12",
"Meantone Chromatic (3/10-comma), Harrison-Lucy-12",
"Meantone Chromatic (3/14-comma), Grosstone-12",
"Meantone Chromatic (3/17-comma)",
"Meantone Chromatic (3/20-comma)",
"Meantone Chromatic (3/22-comma)",
"Meantone Chromatic (3/23-comma), Preston-12",
"Meantone Chromatic (3/25-comma)",
"Meantone Chromatic (4/13-comma)",
"Meantone Chromatic (4/19-comma), Meridetone-12",
"Meantone Chromatic (4/21-comma)",
"Meantone Chromatic (4/25-comma)",
"Meantone Chromatic (4/9-comma)",
"Meantone Chromatic (49/99-comma)",
"Meantone Chromatic (5/13-comma)",
"Meantone Chromatic (5/16-comma)",
"Meantone Chromatic (5/17-comma), Synch-Meantone-12",
"Meantone Chromatic (5/18-comma), Eair-12",
"Meantone Chromatic (5/19-comma), Aurus-12",
"Meantone Chromatic (5/22-comma), Wallaby-12",
"Meantone Chromatic (5/27-comma)",
"Meantone Chromatic (53/220-comma)",
"Meantone Chromatic (6/19-comma), Meanenneadecal-12",
"Meantone Chromatic (6/29-comma)",
"Meantone Chromatic (7/17-comma)",
"Meantone Chromatic (7/18-comma)",
"Meantone Chromatic (7/27-comma), Meanpop-12",
"Meantone Chromatic (8/21-comma)",
"Meantone Chromatic (9/53-comma)",
"Mechanism-11",
"Mechanism-5",
"Mechanism-8",
"Mela Bhavapriya, Raga Bhavani, Kalamurti, Neveseri ascending: Greece",
"Mela Calanata, Raga None, Chromatic Dorian inverse",
"Mela Citrambari, Raga Chaturangini",
"Mela Dhatuvardhani, Raga Dhauta Pancama, Devarashtra",
"Mela Dhavalambari, Foulds' Mantra of Will scale",
"Mela Divyamani",
"Mela Ganamurti, Raga Ganasamavarali",
"Mela Gangeyabhusani, Raga Gangatarangini, Sengiach (Sengah): Greece, Gipsy Hexatonic inverse",
"Mela Gavambodhi, Raga Girvani",
"Mela Gayakapriya, Raga Kalakanti, Gipsy Hexatonic",
"Mela Hatakambari, Raga Jeyasuddhamalavi",
"Mela Hemavati, Raga Desisimharavam, Maqam Nakriz, Tunisian, Dorian sharp 4, Misheberekh: Jewish, Nigriz, Pimenikos, Souzinak (Peiraiotikos Minor): Greece, Ukrainian Dorian, Ukrainian Minor, Kaffa, Gnossiennes",
"Mela Jalarnava",
"Mela Jhalavarali, Raga Varali, Jinavali",
"Mela Jhankaradhvani, Raga Jhankara Bhramavi",
"Mela Jyotisvarupini, Raga Jotismatti",
"Mela Kantamani, Raga Kuntala, Srutiranjani",
"Mela Manavati, Raga Manoranjani",
"Mela Mararanjani, Raga Keseri, Major Bebop Heptatonic",
"Mela Naganandini, Raga Nagabharanam, Nupur, Samanta",
"Mela Namanarayani, Raga Narmada, Pratapa, Harsh Major-Minor, Mixolydian flat 2, sharp 4, flat 6",
"Mela Natakapriya, Jazz Minor inverse, Phrygian-Mixolydian, Dorian flat 2, Raga Natabharanam, Motaki, Ahiri Todi",
"Mela Navanitam, Raga Nabhomani",
"Mela Nitimati, Raga Nisada, Kaikavasi",
"Mela Pavani, Raga Kumbhini",
"Mela Ragavardhani, Raga Cudamani",
"Mela Raghupriya, Raga Ravikriya, Ghandarva",
"Mela Rasikapriya, Raga Rasamanjari, Hamsagiri",
"Mela Ratnangi, Raga Phenadyuti",
"Mela Rupavati",
"Mela Sadvidhamargini, Raga Sthavarajam, Tivravahini",
"Mela Salaga",
"Mela Senavati, Raga Senagrani, Malini",
"Mela Sucaritra, Raga Santanamanjari",
"Mela Sulini, Raga Sailadesakshi, Raga Trishuli, Houzam: Greece",
"Mela Suryakanta, Bhairubahar That, Raga Supradhipam, Sowrashtram (Sourashtra), Jaganmohini, Major-Melodic Phrygian, Hungarian Gipsy inverse",
"Mela Suvarnangi, Raga Sauviram",
"Mela Syamalangi, Raga Shyamalam, Vijay",
"Mela Tanarupi, Raga Tanukirti",
"Mela Vagadhisvari, Raga Bhogachayanata, Nandkauns, Ganavaridhi, Chayanata, Bluesy Rock 'n Roll",
"Mela Vanaspati, Raga Bhanumati",
"Mela Varunapriya, Viravasantham, Raga Daulati, Dev Sakh (Deshakya), Nanak Malhar",
"Mela Visvambhari, Raga Vamsavathi",
"Mela Yagapriya, Raga Kalahamsa",
"Melodic Minor ascending, Jazz Minor, Minor-Major, Mela Gaurimanohari, Raga Kedar Bahar, Patdip (Patadeep), Velavali, Deshi(2), Mischung 1, Hawaiian",
"Messiaen mode 3, Tcherepnin Nonatonic mode 3",
"Messiaen mode 3, inverse, Tcherepnin Nonatonic mode 2",
"Messiaen mode 4, Tcherepnin Octatonic mode 3",
"Messiaen mode 4, inverse, Tcherepnin Octatonic mode 4",
"Messiaen mode 5, Two-semitone Tritone scale",
"Messiaen mode 5, inverse",
"Messiaen mode 6",
"Messiaen mode 6, inverse",
"Messiaen mode 7",
"Messiaen mode 7, inverse",
"Messiaen truncated mode 2",
"Messiaen truncated mode 2, Raga Indupriya, Tritone scale",
"Messiaen truncated mode 3, Hexatonic Set, Prometheus (Liszt), Genus tertium inverse",
"Messiaen truncated mode 3, inverse, Major Augmented, Genus tertium, Raga Devamani",
"Messiaen truncated mode 5",
"Messiaen truncated mode 5, inverse",
"Messiaen truncated mode 6",
"Messiaen truncated mode 6, inverse",
"Migration-10",
"Miha'il Musaqa's mode: Egypt, Neutral Diatonic Hypodorian, Dastgah-e Sehgah, Maqam Nairuz",
"Miller's Galticeran",
"Miller's Kusiro",
"Miller's Porcupine-7",
"Miller's Porcupine-7, Major",
"Miller's Porcupine-8",
"Minor Bebop, Dorian Bebop, Raga Khokhar, Zilla, Mixolydian/Dorian mixed",
"Minor Gipsy",
"Minor Gipsy inverse",
"Minor Gipsy, Mela Sanmukhapriya, Raga Camara, Chinthamani",
"Minor Hexatonic, Raga Manirangu, Nayaki, Palasi, Pushpalithika (Puspalatika), Suha Sughrai, Yo: Japan, Eskimo Hexatonic 1, (Alaska: King Island)",
"Minor Locrian, Half Diminished, Locrian sharp 2, Minor flat 5",
"Minor Pentatonic with leading tones",
"Minor Pentatonic, Blues Pentatonic, Raga Dhani (Suddha Dhanyasi), Abheri, Udhayaravi Chandrika, Qing Shang, Gu Xian, Jia Zhong, Yu: China, P'yongjo-kyemyonjo: Korea, Minyo: Japan, Lai Yai, Lai Noi: Laos, Nam, Northern Sa mac: Vietnam, Peruvian Pentatonic 2, Batti Minor: Ethiopia",
"Minor Porcupine",
"Minor added Sixth Pentatonic, Kyemyonjo: Korea",
"Minor quasi-equal Heptatonic",
"Minor quasi-equal Heptatonic, Miller's Porcupine-7",
"Miracle-10",
"Miracle-11",
"Miracle-12",
"Miraculous-10",
"Misaelides 1st Byzantine Liturgical mode",
"Misaelides 3rd Byzantine Liturgical mode",
"Misaelides 4th Byzantine Liturgical mode",
"Misty-12",
"Mixolydian Hexatonic, P'yongjo: Korea, Yosen: Japan, Raga Darbar, Narayani, Suposhini, Andolika, Gorakh Kalyan, Rakta Hauns",
"Mnarian",
"Modified Blues",
"Mohaha-7",
"Mohajira-10",
"Mohajira-7",
"Mohavila-11",
"Moorish Phrygian, Raga Shivmat Bhairav, Phrygian/Double Harmonic Major mixed",
"Moravian Pistalkova, Hungarian Major inverse",
"Morrison Octacot-14",
"Mosura-11",
"Mothra-11",
"Muggles-13",
"Myna-11",
"Myna-15",
"Myna-7",
"Nakika",
"Nam Hue: Vietnam",
"Nautilus-14",
"Neapolitan Major and Minor mixed",
"Neapolitan Major, Lydian Major, Mela Kokilapriya, Raga Kokilaravam, Heptatonia tertia",
"Neapolitan Minor, Hungarian Gipsy",
"Neapolitan Minor, Mela Dhenuka, Raga Bhinnasadjam, Dhunibinnashadjam, Kirvanti, Takka, Maqam Shahnaz Kurdi, Hungarian Gipsy",
"Negri's 10 Plus 9, Negri-10",
"Negri-10",
"Negri-9",
"Negri-9, Quasi-Equal Enneatonic",
"Neo-Diminished",
"Neominor-7, Triolic Diatonic",
"Nested Bees",
"Neutral Diatonic Dorian",
"Neutral Diatonic Hypodorian",
"Neutral Diatonic Hypolydian",
"Neutral Diatonic Hypophrygian",
"Neutral Diatonic Lydian",
"Neutral Diatonic Mixolydian",
"Neutral Diatonic Phrygian, Rast",
"Neutral Dorian Decatonic, Maqamic-10",
"Neutral Dorian, Maqamic-7",
"Neutral Dorian, Misaelides 2nd Byzantine mode, Iced Fridgian, Maqam Sikah Baladi, Maqamic-7, Ioniophrygian",
"Neutral Hypodorian",
"Neutral Hypodorian, Iced Dark Lydian",
"Neutral Hypolydian Decatonic, Mohajira-10",
"Neutral Hypolydian, Mohajira-7",
"Neutral Hypolydian, Mohajira-7, Iced Lydian",
"Neutral Hypophrygian",
"Neutral Hypophrygian, Iced Mixolydian",
"Neutral Lydian, Dicot-7",
"Neutral Lydian, Iced Major",
"Neutral Mixolydian",
"Neutral Mixolydian, Iced Blizzard",
"Neutral Phrygian",
"Neutral Phrygian, Iced Locrian",
"Neveseri: Greece",
"Niagari: Japan",
"Nohkan Flute scale: Japan",
"Noll Pseudo-diatonic",
"Noll Pseudo-diatonic, Agmon Diatonic DS3, inverse, Superphrygian",
"Octacot-14",
"Octatonic",
"Octatonic, Messiaen mode 2, Dominant Diminished, Diminished Blues, Half-Whole step scale",
"Octatonic, Neo-Diminished inverse",
"Octokaidecal-10",
"Octokaidecal-8",
"Oljare Augmented, Magic-7",
"Oljare Decatonic",
"Oljare Diminished",
"Oljare Octatonic, Sensi-8",
"Oljare Pentaenharmonic",
"Oodako-9",
"Opossum-15",
"Oregon-15",
"Orgone-11",
"Orgone-7",
"Oriental, Raga Ahira-Lalita, Hungarian Minor inverse, Tsinganikos: Greece",
"Orwell-13",
"Orwell-5",
"Orwell-9",
"Otonal 17",
"Oukranian",
"Pajara-10",
"Pajara-12",
"Pajaric-10",
"Pajaric-12",
"Pajaro-12",
"Parachromatic Dorian",
"Parachromatic Hypodorian",
"Parachromatic Hypolydian",
"Parachromatic Hypophrygian",
"Parachromatic Lydian",
"Parachromatic Mixolydian",
"Parachromatic Phrygian",
"Parakleismic-11",
"Parakleismic-15",
"Parizek-11",
"Parizek-13",
"Passion-12",
"Patet deng",
"Patet ding, Pelogic-5",
"Patet dong",
"Patet dung",
"Pelog Degung Sejati: Sunda",
"Pelog Degung: Sunda",
"Pelog Nawanada: Sunda",
"Pelog Pancanada: Sunda",
"Pelog Saptanada: Sunda",
"Pelogic-5",
"Pelogic-7, Antiionian",
"Pelogic-7, Antilydian",
"Pentachordal Decatonic",
"Pentadecaphonic 'Major', Jones's Porcupine-8",
"Pentoid-9",
"Phi-12",
"Phrygian Dominant, Phrygian Major, Mela Vakulabharanam, Raga Ahiri, Basant Mukhari, Jogiya, Vativasantabhairavi, Zilof, Ahava Rabba, Freygish: Jewish, Maqam Hijaz-Nahawand, Humayun, Spanish Gipsy, Dorico Flamenco, Frigio Flamenco: Spain, Hitzaz: Greece, Harmonic Major inverse, Mixolydian flat 2, flat 6",
"Phrygian Hexatonic, Raga Desya Todi, Gopikavasantam (Gopika Basant), Jayantasri",
"Phrygian Pentatonic, Balinese Pelog, Madenda Modern, Raga Bhupalam, Bhupala Todi, Bibhas",
"Phrygian/Locrian mixed",
"Polyzontal",
"Porcupine-15",
"Porky-7",
"Progress-13",
"Progress-15",
"Progression-9",
"Prokofiev",
"Prometheus (Scriabin), Mystic, Raga Barbara",
"Prometheus Neapolitan",
"Pseudo Pelog, Pelogic-7, Antiionian",
"Pseudo Rast",
"Pseudo-semaphore-9",
"Ptolemy-7",
"Pyramid Hexatonic",
"Quadriolic Diatonic",
"Quasi-Miracle-10",
"Quasi-equal Enneatonic, Deflated-9",
"Quasi-equal Hexatonic",
"Quasi-equal Octatonic",
"Quasi-equal Pentatonic",
"Quasi-equal Pentatonic, Gorgo-5",
"Quasi-equal Pentatonic, Mosura-5",
"Quasi-equal Pentatonic, Mothra-5",
"Quasi-equal Pentatonic, Semaphore-5",
"Quasisuper-12",
"Raga Adi Bhairavi",
"Raga Ahi Mohini",
"Raga Araj",
"Raga Bagesri, Sriranjani, Kapijingla, Jayamanohari",
"Raga Basant Pancham, Lalita Gauri, Lalit Pancham, Prabhaat Bhairav, Ramkali (Ramakri)",
"Raga Basanti Kedar",
"Raga Bauli, Prabhavati, Shreetank, Triveni",
"Raga Bhankar, Bhatiyar, Jaikauns, Manomanjari",
"Raga Bhanumanjari, Jog",
"Raga Bhavani",
"Raga Bhinna Pancama",
"Raga Bhinna Shadja, Kaushikdhvani, Hindolita",
"Raga Bilwadala",
"Raga Brindabani Sarang, Megh (Megh Malhar)",
"Raga Budhamanohari",
"Raga Caturangini, Ratnakanthi",
"Raga Chandni Kedar, Jairaj",
"Raga Chandra Kalyan",
"Raga Chandrakauns (Kiravani)",
"Raga Chandranandan",
"Raga Chandraprabha, Priyadharshini",
"Raga Chandrika, Nagagandhari",
"Raga Cintamani",
"Raga Deshgaur (Desh Gaud)",
"Raga Dhanya Dhaivat, Jait, Rasika Ranjani, Vibhas (Marva), Scriabin",
"Raga Dhavalshree",
"Raga Dipak",
"Raga Gambhir Basant",
"Raga Gandharavam, Sabai silt: Ethiopia",
"Raga Gandhari, Komal Desi, Phrygian/Aeolian mixed",
"Raga Gauri",
"Raga Ghantana, Kaushiranjani (Kaishikiranjani)",
"Raga Girija, Bacovia: Romania, Batti Major sharp 5: Ethiopia",
"Raga Gurjari Todi",
"Raga Hamsa Vinodini, Uday Ravi Chandrika",
"Raga Hamsanandi, Marva, Pancama, Puriya, Sohni (Sohoni)",
"Raga Hari Nata, Genus secundum",
"Raga Harikauns, Chin: China",
"Raga Haripriya",
"Raga Haunskinkini, Patdipaki, Sawan",
"Raga Hejjajji",
"Raga Hijaj Bhairav, Jogi Asavari",
"Raga Hindol Bahar",
"Raga Homshikha",
"Raga Jaganmohanam",
"Raga Janasamohini",
"Raga Jayant, Malavasri, Manohari, Udan Chandrika",
"Raga Jivantika",
"Raga Jivantini, Gaurikriya",
"Raga Jogkauns",
"Raga Jyoti",
"Raga Kalagada (Kalgada)",
"Raga Kalavati, Mangal Bhairav, Ragamalini",
"Raga Kamal Manohari",
"Raga Kamod",
"Raga Kantal Varari",
"Raga Kashyapi",
"Raga Kaushi Bhairav",
"Raga Khamaji Durga, Rupeshwari",
"Raga Khamas, Desya Khamas, Bahudari",
"Raga Kolhaas, Manavi",
"Raga Kshanika",
"Raga Kumarapriya",
"Raga Kumurdaki (Kumudaki)",
"Raga Kuntvarali (Kuntalavarali)",
"Raga Lalit Mangal, Saajgiri, Sourashtra Bhairav",
"Raga Lalita, Persian, Chromatic Hypolydian inverse, Raga Suddha Pancama",
"Raga Lalita, Sohini, Hamsanandi, Lalit Bhairav",
"Raga Lalitavari",
"Raga Lalitkali",
"Raga Latika",
"Raga Lavangi, Gowleeswari",
"Raga Madhukauns (hexatonic)",
"Raga Madhuranjani, Sindhura Kafi",
"Raga Madhuri, Kaamkesh, Kamal Ranjani",
"Raga Mahathi, Antara Kaishiaki",
"Raga Malasri, Peruvian tritonic 1",
"Raga Malayamarutam",
"Raga Malin",
"Raga Manaranjani I",
"Raga Maru",
"Raga Matha Kokila (Matkokil)",
"Raga Megharanjani, Syrian Pentatonic",
"Raga Megharanji (Megh Ranjani)",
"Raga Mian Ki Malhar, Charju Ki Malhar, Bahar, Barwa, Lankadahan Sarang, Sindhura",
"Raga Mohanangi",
"Raga Mruganandana, Raj Kalyan",
"Raga Mukhari, Anandabhairavi, Deshi (Desi), Khat, Manji, Gregorian nr.1, Dorian/Aeolian mixed",
"Raga Multani, Batti mineur",
"Raga Nabhomani",
"Raga Nalinakanti, Kedaram, Vilasini",
"Raga Nat Kedar",
"Raga Navamanohari, Shobhavari",
"Raga Neelangi",
"Raga Neroshta",
"Raga Nishadi",
"Raga Ongkari",
"Raga Pahadi",
"Raga Paraj Bahar",
"Raga Phenadyuti, Honchoshi, Insen, Niagari: Japan",
"Raga Purnalalita, Chad Gadyo: Jewish, Ghana Pentatonic 1, Nando-kyemyonjo: Korea",
"Raga Puruhutika, Purvaholika",
"Raga Pushp Ranjani",
"Raga Putrika",
"Raga Rageshri",
"Raga Rageshri (Rageshwari), Nattaikurinji (Natakuranji)",
"Raga Ranjani, Rangini",
"Raga Ras Chandra",
"Raga Rasavali",
"Raga Ravikosh",
"Raga Reva, Revagupti, Ramkali, Vibhas (Bhairava)",
"Raga Salagavarali (Salag Varari)",
"Raga Samudhra Priya, Madhukauns (pentatonic)",
"Raga Sarasanana",
"Raga Sarasvati",
"Raga Sarvasri, Warao tritonic: South America",
"Raga Saugandhini, Yashranjani",
"Raga Saurashtra",
"Raga Shyam Kedar",
"Raga Simharava (Sinharavam), Gopikatilaka",
"Raga Sindhi-Bhairavi",
"Raga Siva Kambhoji, Vivardhini, Andhali",
"Raga Sorati (Sorath), Badhans Sarang, Samant Sarang, Sawani Kedar, Sur Malhar",
"Raga Suddha Bangala, Gauri Velavali, Pushp",
"Raga Suddha Mukhari",
"Raga Suddha Simantini, Genus secundum inverse",
"Raga Takka",
"Raga Trimurti",
"Raga Vaijayanti, Hamsanada",
"Raga Vasantabhairavi",
"Raga Vijayanagari",
"Raga Vijayasri",
"Raga Viranch Mukhi",
"Raga Viyogavarali",
"Raga Vutari",
"Raga Yamuna Kalyani, Kalyani Keseri, Airavati, Ancient Chinese",
"Raga Zilaf",
"Ragimetric-13",
"Rapoport Major",
"Rapoport Minor",
"Rast",
"Rempt's Andal scale inverse",
"Rempt's Andal scale, Triforce-9",
"Reverse Meantone-12",
"Rezsutek's Percussion scale",
"Rimsky-Korsakov Bineutral",
"Rimsky-Korsakov Major",
"Rimsky-Korsakov Neutral",
"Ripple-12",
"Rivetting Reds",
"Rodan-11",
"Rodan-5",
"Rodentalia",
"Romanian Major, Mela Ramapriya, Raga Basant Bahar, Ramamanohari, Petrushka chord, Mixolydian flat 2, sharp 4",
"Rothenberg Generalized Diatonic",
"Roulette-13",
"Roulette-6",
"Roulette-7",
"Ryonian",
"Sabach (Sambah) ascending: Greece",
"Sabach (Sambah): Greece",
"Sansagari: Japan",
"Sauveur's Musician's System",
"Savas Diatonic Byzantine Liturgical mode",
"Savas Soft Chromatic 2nd Byzantine mode",
"Schism-12",
"Schismic-12",
"Schoenberg Signature Hexachord",
"Schulter Hexatonic",
"Score-11",
"Score-11, Diatonicized Chromatic",
"Score-5",
"Score-7",
"Score-9",
"Scorp",
"Scottish Pentatonic, Blues Major, Ritusen, Ritsu (Gagaku): Japan, Zhi, Zheng: China, Ujo, P'yongjo: Korea, Bac: Vietnam, Lai Soutsanaen, Lai Po Sai, Lai Soi: Laos, Raga Arabhi, Devakriya, Durga, Jaldhar Kedar, Suddha Saveri, Major complement",
"Screamapillar",
"Secant-14",
"Secor Sentinel-11",
"Semaphore-5",
"Semaphore-9",
"Semicanou-14",
"Semimiracle-12",
"Semisept-13",
"Sensi-11",
"Sensi-5",
"Sensi-8",
"Sensis-11",
"Sensis-8",
"Sentinel-14",
"Sentinel-8",
"Sentry-5",
"Sentry-8",
"Sephiroth-10",
"Sephiroth-13",
"Sephiroth-7",
"Sephiroth-7, Triolic Diatonic",
"Septimal Minor Pentatonic",
"Septimal Minor Pentatonic, Supra-5",
"Septimal Slendro",
"Septimal-14",
"Septimin-14",
"Septimin-9",
"Sethares Neutral, Beatles-7, Dichotic-7",
"Shallert's mode, Terrain-9, inverse",
"Sharp-10",
"Sharp-7",
"Shostakovich, Raga Marg Hindol",
"Sideways scale",
"Silver-10",
"Six Deployments",
"Sixix-7",
"Slendric-11",
"Slendric-5",
"Slendric-6",
"Slendro A1",
"Slendro M",
"Slendro S1",
"Slurpee-15",
"Smith's Prism",
"Soft Chromatic Dorian",
"Soft Chromatic Hypodorian",
"Soft Chromatic Hypolydian",
"Soft Chromatic Hypophrygian",
"Soft Chromatic Lydian",
"Soft Chromatic Mixolydian",
"Soft Chromatic Phrygian",
"Soft Diatonic Dorian",
"Soft Diatonic Hypodorian",
"Soft Diatonic Hypolydian",
"Soft Diatonic Hypophrygian",
"Soft Diatonic Lydian",
"Soft Diatonic Mixolydian",
"Soft Diatonic Phrygian",
"Sorog Madenda Sejati: Sunda",
"Sorog Madenda: Sunda",
"Spanish Phrygian",
"Spartan-11",
"Spell-13",
"Spell-7",
"Spondeion",
"Spongework",
"Squares-11",
"Squares-14",
"Stacks-11",
"Standard Pentachordal Major",
"Standard Pentachordal Minor",
"Starling-12",
"Starlingtet-7",
"Static Major",
"Static Minor",
"Static Symmetrical Major",
"Static Symmetrical Minor, Pajara-10",
"Stearns 11-tone",
"Stearns 9-tone, Semaphore-9",
"Straub Whole-Tone",
"Subklei-13",
"Submajor-10",
"Suhajira-10",
"Suhajira-7",
"Superdorian",
"Superkleismic-11",
"Superkleismic-15",
"Superkleismic-7",
"Superlocrian",
"Superlocrian Hexamirror",
"Superlocrian, Altered Dominant, Diminished Whole-tone, Locrian flat 4, Pomeroy, Ravel",
"Superlydian",
"Supermixolydian",
"Superolympian",
"Superpelog-14",
"Superpelog-9",
"Superpelog-Pelog",
"Superphrygian",
"Superpyth-12",
"Supersharp-10",
"Supersharp-8",
"Supra-12",
"Supra-5",
"Supra-7",
"Surupan Ajeng: Java",
"Suspended Pentatonic, Raga Madhyamavati, Madhmat Sarang, Megh, Egyptian, Shang, Rui Bin, Jin Yu, Qing Yu: China, Yo: Japan, Ngu Cung Dao: Vietnam, Yematebela wofe: Ethiopia",
"Suzz",
"Swooning Rushes",
"Symmetric Diminished Porcupine",
"Symmetrical Decatonic",
"Symmetrical Heptatonic",
"Symmetrical Nonatonic",
"Symmetrical Pentatonic",
"Taishikicho, Ryo: Japan, Raga Chayanat, Kukubh Bilawal, Maluha Kedar, Nat Bilawal, Lydian/Mixolydian mixed",
"Takemitsu Tree Line mode 1",
"Takemitsu Tree Line mode 2",
"Tamashian",
"Tancuva",
"Taylor Whole-Tone",
"Tcherepnin Octatonic mode 1, Duplex genus primum inverse",
"Tcherepnin Octatonic mode 2, Duplex genus primum",
"Term-12",
"Ternary-15",
"Ternary-6",
"Ternary-6, Quasi-equal Hexatonic",
"Terrain-15",
"Terrain-9",
"Tertiaseptal-15",
"Tertiaseptal-15, Valentine-15",
"Tetrachordal 6-2-5",
"Tetrachordal 6-6-1",
"Tetracot-13",
"Tetracot-7",
"Thai mode 1",
"Thai mode 2",
"Thai mode 3",
"Thai mode 5",
"Thai mode 6",
"Thuja-11",
"Thuja-13",
"Thuja-15",
"Thuja-15, Diatonicized Chromatic",
"Tiby 1st Byzantine Liturgical mode",
"Tiby 2nd Byzantine Liturgical mode",
"Tiby 4th Byzantine Liturgical mode",
"Todi That, Mela Shubhapantuvarali, Raga Gamakasamantam, Hemavanti, Kaam Ranjani, Multani, Harsh Minor, Chromatic Lydian inverse, Maqam Athar Kurd",
"Toliman-11",
"Triadic Heptatonic 29",
"Tridec-8",
"Triforce-15",
"Triforce-6",
"Triforce-9",
"Triolic Diatonic",
"Trisedodge-10",
"Trisedodge-15",
"Tritonic Diatonic",
"Tritonic Diatonic, Spell-10",
"Tsaharuk-9",
"Tsiknopoulos 2nd Byzantine Liturgical mode",
"Tsiknopoulos 4th Byzantine Liturgical mode",
"Tsiknopoulos 4th plagal Byzantine Liturgical mode, Tiby 3rd Byzantine mode",
"Twelve-35-12",
"Twothirdtonic-10",
"Twothirdtonic-9",
"Ultralocrian, Superlocrian Diminished, Mixolydian sharp 1",
"Undim-12",
"Unicycle Gestures",
"Unsmate-13",
"Urchin-14",
"Urchin-6",
"Urchin-8",
"Ute tritonic, Peruvian tritonic 2",
"Vaisvil's Mixed-Quarters",
"Valentine-15",
"Van der Horst Octatonic",
"Verdi's Scala enigmatica",
"Verdi's Scala enigmatica ascending",
"Verdi's Scala enigmatica descending",
"Vietnamese ditonic",
"Vietnamese tetratonic",
"Vietnamese tritonic",
"Vishnu-14",
"Warao ditonic: South America",
"Warao tetratonic: South America",
"Whitewood-14",
"Whole-tone, Messiaen mode 1, Raga Gopriya, Anhemitonic Hexatonic",
"Wilson 11-tone",
"Wilson Golden-11",
"Wilson Pi-Meantone",
"Wilson Supradiatonic",
"Wilson Supradiatonic, Mabila-9, Supercorinthian",
"Wilson Supradiatonic, Supercorinthian",
"Wonder-11",
"Wonder-5",
"Wreckmeister",
"Wurschmidt-13",
"Xenakis Byzantine Liturgical Diatonic, Misaelides 4th plagal Byzantine",
"Xenakis Byzantine Liturgical Soft Chromatic, Quasi-Miracle-7",
"Yasser's Hexad, Spell-6",
"Yasser's Supradiatonic, Genus diatonico-chromaticum inverse",
"Youlan scale: China",
"Young Decatonic, Decimal-10",
"Young Half-Octave Diatonic, Decimal-14",
"Yoyo & Latrizo-9",
"Zeus7tri",
"Zeus8tri",
"Zinith-9",
"Zirafkend: Arabic, Melodic Minor Bebop",
"Zo-Kalarian",
"Zweifel Major",
"Zweifel Natural Minor",
"de Vries 11-tone, Mothra-11",
"de Vries 13-tone",
"de Vries 5-tone",
"de Vries 9-tone, Semaphore-9",
"12-tone Chromatic (1/12-comma positive), Wustaf-12",
"12-tone Chromatic (3/25-comma positive), Algebraic Leapfrog-12",
"Chromatic Hypophrygian inverse, Phrygian Hungarian Minor",
"Joan-7",
"Joan-7, Score-7",
"Meantone Chromatic (1/17-comma), Garibaldy-12",
"Pelogic-7",
"Porcupine-7",
"Porcupine-7, Major",
"Porcupine-8",
"Prodigy-11",
"Ultralocrian, Superlocrian Diminished, Mixolydian sharp 1, Altered Diminished 7"
}
scales.lookup={
[2]={
  [5]={
    [1]={
      Ls=1297,
      sL=1293
    }
  },
  [7]={
    [5]={
      Ls=851,
      sL=466
    }
  },
  [10]={
    [2]={
      Ls=1297,
      sL=1293
    }
  }
},
[3]={
  [5]={
    [2]={
      LLs=1100,
      LsL=1054
    },
    [3]={
      [4]={
        MLs=951,
        MsL=1015,
        sML=1286
      }
    }
  },
  [6]={
    [1]={
      [5]={LsM=1035}
    }
  },
  [7]={
    [2]={
      [3]={MsL=1295}
    }
  }
},
[4]={
  [2]={
    [1]={
      LsLs=769,
      sLsL=768
    }
  },
  [4]={
    [1]={
      [3]={sLML=1010}
    },
    [2]={
      [3]={
        LMMs=1014,
        MLMs=207,
        sMLM=948,
        sMML=977
      },
      LsLs=769,
      sLsL=768
    }
  },
  [5]={
    [1]={
      LsLs=767,
      sLsL=766
    },
    [2]={
      [3]={
        LsMs=392,
        MssL=1294,
        sMsL=391,
        ssML=357
      }
    },
    [4]={LsLL=368}
  },
  [7]={
    [1]={
      [2]={MsLM=1298}
    }
  },
  [10]={
    [1]={LLLs=393}
  },
  [11]={
    [8]={LLLs=576}
  },
  [13]={
    [5]={
      [8]={sMsL=391}
    },
    [6]={Lsss=385}
  }
},
[5]={
  [2]={
    [1]={
      LLsLs=360,
      LsLLL=853,
      LsLLs=146,
      LsLss=1250,
      LssLs=1252,
      sLsLs=1249,
      sLssL=1251,
      ssLsL=1248
    }
  },
  [3]={
    [1]={
      [2]={
        LLsLM=1051,
        LMLLs=957,
        LsLML=1024,
        LsLMs=1174,
        LsMLs=899,
        MLLLs=959,
        MLsLM=1222,
        sLLLM=1018,
        sLLML=963
      },
      LLLLs=554,
      LsLss=136,
      LssLs=901,
      sLsLL=1130,
      sLsLs=1227,
      ssLsL=903
    },
    [2]={
      LLsLL=1118,
      LLsLs=217,
      LLsss=976,
      LsLsL=138,
      LsLss=227,
      LssLs=784,
      LsssL=786,
      sLLLL=401,
      sLLss=239,
      sLsLs=1220,
      sLssL=1114,
      sLsss=566,
      ssLLs=315,
      ssLsL=579,
      sssLL=532
    }
  },
  [4]={
    [1]={
      [2]={
        LMsLs=562,
        LMsML=262,
        LsLMs=950,
        LsLsM=997,
        LsMLs=500,
        LsMsL=1075,
        MLsLs=1067,
        MsLsL=143,
        sLMLs=969,
        sLMsL=464,
        sLsLM=507,
        sMLsL=912
      },
      [3]={
        LsMMs=971,
        LsMsL=1227,
        MMsLs=1027,
        sLMMs=1000,
        sMMsL=1049,
        sMsML=1021
      },
      ssLsL=928
    },
    [3]={
      LLLLs=118,
      LLsLL=937,
      LLsLs=360,
      LssLs=46,
      sLLLL=401,
      sLsLs=48,
      ssLsL=44,
      ssLss=408
    }
  },
  [5]={
    [1]={
      [2]={
        LMMMs=1040,
        LMMsM=1003,
        MLMsM=1020,
        MMLMs=1033,
        MMMLs=1002,
        MMsML=953,
        MsMML=1039
      },
      [4]={
        sLssM=1055,
        ssMsL=1028
      }
    },
    [2]={
      [3]={sLMsL=604},
      LLLLs=873,
      LsLss=894,
      LssLs=635,
      sLsLL=1124,
      sLsLs=896,
      sLssL=897,
      ssLsL=895
    },
    [3]={
      LLsLL=1118,
      LLsLs=360,
      LssLs=58,
      sLsLs=62,
      sLsss=566,
      ssLsL=55
    },
    [4]={
      LLsLL=937,
      LLsLs=157,
      LssLs=1137,
      sLLLL=401,
      ssLss=934
    }
  },
  [6]={
    [1]={
      [3]={
        LsLMs=1173,
        LsMLs=898,
        sLsMs=962,
        sMsLs=1022,
        ssLMs=1001,
        ssLsM=1042
      }
    },
    [5]={
      LLsLL=937,
      LssLs=1137,
      sLLLL=486,
      ssLss=936
    }
  },
  [7]={
    [2]={
      LLLLs=554,
      LsLss=1110
    },
    [3]={
      [4]={sLMsL=1179},
      LLLLs=873,
      LssLs=634
    },
    [5]={
      [6]={
        LMsLM=1136,
        MLsLM=1154,
        MLsML=1155,
        sMLML=1138
      },
      sLLLL=401
    },
    [6]={
      LLsLL=933,
      LssLs=1136,
      Lssss=1308,
      sLLLL=486,
      sLsss=1156,
      ssLss=936,
      sssLs=1152
    }
  },
  [8]={
    [1]={sLssL=542},
    [3]={
      LssLs=634,
      sLsLL=705,
      ssLsL=903
    },
    [7]={
      LLsLL=933,
      Lssss=1308,
      sLLLL=486,
      ssLss=933,
      sssLs=1152
    }
  },
  [9]={
    [2]={LssLs=1328},
    [4]={
      LLLLs=416,
      LssLs=634
    },
    [7]={
      LssLs=1217,
      sLLLL=401
    },
    [8]={
      ssLss=933,
      sssLs=1090
    }
  },
  [10]={
    [5]={
      [6]={sLMsL=814}
    },
    [7]={LsLsL=138},
    [9]={sssLs=1090}
  },
  [11]={
    [5]={LLLLs=416},
    [8]={sLLLL=401},
    [9]={LssLs=1217}
  },
  [12]={
    [5]={LLLLs=873}
  },
  [13]={
    [4]={
      [5]={MsLML=1219}
    },
    [5]={ssLsL=903},
    [10]={
      LssLs=1217,
      sLLLL=401
    },
    [11]={
      sLLLL=486,
      ssLss=936
    }
  },
  [15]={
    [2]={sLssL=542},
    [11]={sLLLL=401},
    [13]={ssLss=935}
  },
  [16]={
    [15]={LLsLs=221}
  },
  [17]={
    [7]={LLLLs=873},
    [13]={sLLLL=401},
    [15]={sssLs=1152},
    [16]={LLsLs=221}
  },
  [18]={
    [13]={sLLLL=401}
  },
  [19]={
    [17]={sssLs=1090}
  },
  [23]={
    [3]={sLssL=542}
  },
  [26]={
    [23]={sssLs=1090}
  },
  [28]={
    [25]={sssLs=1090}
  }
},
[6]={
  [0]={
    [1]={ssssss=1300},
    [2]={ssssss=1300}
  },
  [2]={
    [1]={
      LLLLsL=1107,
      LLsLLL=567,
      LsLLsL=540,
      LsLsLs=192,
      sLLsLL=273
    }
  },
  [3]={
    [1]={
      [2]={
        LLsMsM=1011,
        LMMMsM=985,
        LMMsLs=1065,
        LMMsML=279,
        LMMsMM=911,
        LMssLM=229,
        LsMMsL=351,
        LssMLM=947,
        MLMLss=952,
        MLMMMs=960,
        MLMMsM=797,
        MLMsLs=949,
        MLMsMM=1031,
        MMLMMs=560,
        MMLMsM=984,
        MMLsLs=1009,
        MMMLMs=1025,
        MMMLsM=921,
        MMMMLs=356,
        MMMsML=1074,
        MMsLLs=1052,
        MMsMLM=1060,
        MMsMML=171,
        MMssLL=1046,
        MsLLMs=1045,
        MsLMLs=1229,
        MsLMMM=1230,
        MsLMsL=1032,
        MsLsLM=1058,
        MsLsML=1069,
        MsMLLs=970,
        MsMMLM=781,
        MsMMML=1062,
        MsMsLL=927,
        sLLMMs=1017,
        sLLMsM=1016,
        sLMLMs=974,
        sLMLsM=922,
        sLMMsL=979,
        sLMsLM=763,
        sLsLMM=1068,
        sLsMML=991,
        sMLMLs=972,
        sMLMMM=948,
        sMLsML=762,
        sMMLLs=1072,
        sMMLMM=546,
        sMMMLM=967,
        sMMsLL=324
      },
      LLsLLL=409,
      LLsLLs=276,
      LLsLss=987,
      LsLsLs=765,
      sLLsLs=945,
      sLLssL=990,
      sLsLLs=1006,
      sLsLsL=764,
      ssLLsL=1063,
      ssLsLL=1106
    },
    [2]={
      LLsLLL=567,
      LsLLsL=178,
      LsLsLs=1265,
      LssLss=1284,
      sLLsLL=273,
      sLsLsL=185,
      sLssLs=931,
      sssLss=397
    }
  },
  [4]={
    [1]={
      [2]={
        LMsMsM=1073,
        LMssMM=989,
        LsMMMs=975,
        LsMMsM=998,
        LsMsMM=992,
        MLsMMs=1034,
        MLsMsM=1053,
        MLssMM=983,
        MMMsLs=954,
        MMsLMs=973,
        MMsLsM=1044,
        MMsMLs=1029,
        MsLMMs=432,
        MsLMsM=999,
        MsLsMM=1066,
        MsMLsM=942,
        MsMMLs=1012,
        MsMMsL=939,
        sLMMMs=986,
        sLMMsM=1047,
        sLMsMM=1038,
        sMLMsM=1050,
        sMLsMM=995,
        sMMMsL=1064,
        sMMsLM=465,
        sMsMLM=1204
      },
      LLsLLL=409,
      LLsLLs=208,
      LsLsLs=216,
      LssLss=757,
      ssLsLs=1070,
      ssLssL=756
    },
    [2]={
      [3]={MMsLsM=1149}
    },
    [3]={
      LsLLsL=1,
      LsLsLs=931,
      LssLLL=430,
      sLsLsL=185,
      sssssL=1313
    }
  },
  [5]={
    [1]={
      [2]={
        LMMsss=994,
        MMsssL=965,
        sMsMsL=506
      },
      [3]={sLssMs=956}
    },
    [2]={LsLsLs=192},
    [3]={
      LLsLLL=567,
      LsLLsL=540,
      LssLss=436,
      sLLsLL=273
    },
    [4]={
      LsLLsL=160,
      LsLsLs=931,
      sssssL=456
    }
  },
  [6]={
    [1]={
      [3]={LMsMLM=66},
      LLLLsL=1153,
      LLLsLL=390
    },
    [4]={
      [5]={sLMLsL=395}
    },
    [5]={sssssL=455}
  },
  [7]={
    [1]={LLLLsL=1153},
    [2]={
      LLsLLL=409,
      LsLsLs=181
    },
    [4]={
      LLsLLL=567,
      LsLLsL=540
    },
    [5]={
      LsLLsL=177,
      LsLsLs=1239,
      sLsLsL=185
    },
    [6]={sssssL=1095}
  },
  [8]={
    [5]={
      LLsLLL=567,
      LsLLsL=540
    },
    [7]={LsLLLL=195}
  },
  [9]={
    [4]={sLLsLL=273},
    [5]={LLsLLL=567},
    [7]={LsLLsL=177},
    [8]={ssLLss=1233}
  },
  [10]={
    [3]={
      [5]={LsMMMs=394},
      LLsLLL=409,
      LsLsLs=189
    },
    [7]={LsLLsL=177}
  },
  [11]={
    [3]={LLsLLL=409},
    [6]={LLsLLL=567},
    [7]={LsLLsL=540},
    [8]={
      LsLLsL=177,
      sLsLsL=185
    },
    [9]={sssssL=454}
  },
  [12]={
    [7]={LsLLsL=540}
  },
  [13]={
    [2]={
      [11]={MsMsLs=573}
    },
    [4]={LsLsLs=189},
    [8]={LsLLsL=540},
    [10]={LsLLsL=177},
    [11]={sssssL=454}
  },
  [14]={
    [9]={LsLLsL=540}
  },
  [15]={
    [2]={LLLLsL=1153},
    [4]={LLsLLL=409},
    [11]={LsLLsL=177}
  },
  [17]={
    [5]={LsLsLs=181},
    [10]={LsLLsL=540},
    [11]={LsLLsL=540},
    [12]={LsLsLs=1238},
    [14]={sssssL=454},
    [15]={LsLLLL=195}
  },
  [18]={
    [11]={LsLLsL=540}
  },
  [19]={
    [11]={LsLLsL=540},
    [12]={LsLLsL=540},
    [16]={sssssL=457}
  },
  [21]={
    [13]={LsLLsL=540}
  },
  [23]={
    [7]={LsLsLs=189},
    [19]={sssssL=454}
  },
  [24]={
    [7]={LsLsLs=189}
  },
  [25]={
    [22]={LsLLLL=195}
  },
  [32]={
    [25]={
      [28]={MsMsML=434}
    }
  }
},
[7]={
  [2]={
    [1]={
      LLLLLLs=1097,
      LLLLLsL=518,
      LLLLLss=535,
      LLLLsLL=399,
      LLLLsLs=557,
      LLLsLLL=469,
      LLLsLLs=376,
      LLLsLsL=559,
      LLLssLL=561,
      LLsLLLL=876,
      LLsLLLs=378,
      LLsLLsL=377,
      LLsLsLL=584,
      LLssLLL=578,
      LsLLLLL=1231,
      LsLLLLs=751,
      LsLLLsL=381,
      LsLLsLL=379,
      LsLsLLL=782,
      LsLsLsL=1202,
      LssLLss=924,
      LssLsLs=1142,
      sLLLLLL=1323,
      sLLLLLs=817,
      sLLLLsL=728,
      sLLLsLL=375,
      sLLsLLL=380,
      sLLsLsL=870,
      sLsLLLL=1205,
      sLssLss=902,
      ssLLLLL=536,
      ssLsssL=923
    }
  },
  [3]={
    [1]={
      [2]={
        LLMMLLs=1115,
        LMLsLML=1113,
        LMsLMLs=37,
        LMsLsML=352,
        LMssLss=250,
        LMssMsM=226,
        LsLLLMM=150,
        LsLMMLM=426,
        LsLMsss=982,
        LsMLMLs=40,
        LsMLsLM=38,
        LsMMsMs=145,
        LsMsLss=734,
        LsMsMMs=142,
        LsMsMsM=471,
        LsMssLs=710,
        LsMssMM=722,
        LsMsssL=740,
        LssLMss=254,
        LssLssM=246,
        LssMLss=708,
        LssMMMs=741,
        LssMMsM=746,
        LssMsLs=714,
        LssMsMM=732,
        LssMssL=750,
        MLMMLsL=427,
        MLMMsss=1061,
        MLMsMLM=468,
        MLsMLsM=1281,
        MLsMsMs=852,
        MLssLss=253,
        MLssMMs=955,
        MMMsLss=709,
        MMMssLs=424,
        MMMsssL=723,
        MMsLsMM=306,
        MMsLsMs=499,
        MMsMLss=726,
        MMsMsLs=425,
        MMsMssL=725,
        MMssLsM=779,
        MsLsLss=730,
        MsLsMMs=558,
        MsLsMsM=718,
        MsLssLs=323,
        MsLssMM=780,
        MsLsssL=744,
        MsMMLss=748,
        MsMMsLs=429,
        MsMMssL=721,
        MsMsLMs=510,
        MsMsLsM=318,
        MsMsMLs=549,
        MsMsMsL=805,
        MsMssLM=799,
        MssLsMM=1098,
        MssLssL=247,
        MssssLL=271,
        sLLMsLL=410,
        sLMMMss=1291,
        sLMsLss=749,
        sLMsMLs=914,
        sLMsMMs=632,
        sLMsMsM=1092,
        sLMssLs=248,
        sLMssMM=727,
        sLMsssL=711,
        sLsLMss=1292,
        sLsMLss=717,
        sLsMMMs=742,
        sLsMMsM=428,
        sLsMsLs=321,
        sLsMsMM=910,
        sLsMssL=716,
        sLssLMs=251,
        sLssLsM=871,
        sLssMLs=1005,
        sMLMsML=1211,
        sMLsLss=712,
        sMLsMMs=743,
        sMLsMsM=737,
        sMLssLs=1260,
        sMLssMM=707,
        sMLsssL=715,
        sMMMLss=736,
        sMMMsLs=819,
        sMMMssL=739,
        sMMsLsM=548,
        sMMsMsL=547,
        sMsLsMM=593,
        sMsMMsL=1341,
        ssLMLss=745,
        ssLMMMs=724,
        ssLMMsM=747,
        ssLMsLs=713,
        ssLMsMM=735,
        ssLMssL=245,
        ssLssLM=252,
        ssLssML=1332,
        ssMLssL=255,
        ssMMsML=1262
      },
      LLLLLLs=1178,
      LLLLsLL=398,
      LLsLLLs=43,
      LsLLLLs=45,
      LsLLLsL=1218,
      LsLLsLL=47,
      LsLsLsL=1202,
      LssLsss=1333,
      sLsLsLL=528,
      ssLsLsL=1135
    },
    [2]={
      LLLLLLs=581,
      LLLsLLs=54,
      LLsLLLs=56,
      LLsLLsL=59,
      LsLLLLL=787,
      LsLLLLs=57,
      LsLLLsL=49,
      LsLLsLL=60,
      LsLsLss=840,
      LsLsssL=875,
      LssLLss=924,
      LssLsLs=204,
      LssLsss=161,
      LsssLss=164,
      Lssssss=916,
      sLLLsLL=61,
      sLLsLLL=53,
      sLLsLsL=309,
      sLsLsLs=835,
      sLssLss=638,
      sLsssLs=173,
      sLsssss=775,
      ssLssLs=163,
      ssLsssL=923,
      sssLssL=162,
      sssLsss=774
    }
  },
  [4]={
    [1]={
      [2]={
        LsMMsss=1013,
        LsssMsM=981,
        MMsLsss=1043,
        MsssLsM=1048,
        sLsLMsL=266,
        ssLsMMs=731,
        ssLsMsM=729,
        ssLssMM=719
      },
      [3]={
        LMsLMLs=63,
        LMsssLM=228,
        LsMLsLM=64,
        sLLMsLL=410,
        sMsssLs=1041,
        ssLsMss=733,
        ssLssMs=720,
        ssLsssM=738
      },
      LLLLLLs=458,
      LLsLLLs=67,
      LsLLLsL=1218,
      LsLLsLL=69,
      LsLsLsL=863,
      sLsLsLL=527,
      sssLssL=928
    },
    [2]={
      [3]={
        LLMMLLs=612,
        LLMsLMs=135,
        LLsLLMM=617,
        LMMLLLs=618,
        LMMLLsL=265,
        LMMMLMs=243,
        LMMMMLs=580,
        LMMMsLM=583,
        LMsLMLs=65,
        LMsLMMM=501,
        LsLLLMM=150,
        LsLLMML=268,
        LsMLMLs=68,
        LsMLMMM=317,
        LsMLsLM=70,
        MLLsLLM=628,
        MMLLLsL=621,
        MMLLsLL=613,
        MMLsLMM=1223,
        MMMLsML=144,
        MMsMsLs=51,
        MsMMsLs=52,
        sLLLMML=622
      }
    },
    [3]={
      LLLLLLs=1247,
      LLsLLLs=75,
      LLsLsLs=1150,
      LLssLss=830,
      LsLLLLs=76,
      LsLLsLL=77,
      LsLsLss=841,
      LsLssLs=838,
      LssLLss=168,
      LssLsLs=845,
      LssLssL=771,
      LssLsss=161,
      LsssLss=164,
      Lssssss=582,
      sLLsLsL=309,
      sLLssLs=627,
      sLsLsLs=836,
      sLsLssL=843,
      sLssLLs=270,
      sLssLsL=847,
      sLssLss=637,
      sLsssLs=173,
      sLsssss=775,
      ssLLssL=615,
      ssLsLsL=849,
      ssLssLL=623,
      ssLssLs=163,
      ssLsssL=158,
      sssLssL=905,
      sssLsss=788
    }
  },
  [5]={
    [1]={
      [3]={
        MMsMsLs=41,
        MsMMsLs=42
      },
      [4]={
        LMMsLMs=287,
        LMsLMMs=289,
        MMsLMsL=288,
        MsLMMsL=291,
        MsLMsLM=286,
        sLMMsLM=285,
        sLMsLMM=290
      },
      LLLLLLs=459,
      LsLLLsL=1218,
      LsLsLsL=1187,
      LsLssLs=861
    },
    [2]={
      [3]={sMLMsML=1211},
      [4]={
        LMsLMLs=78,
        LsMLsLM=79,
        MMsLMMs=71,
        MsMLsMM=72,
        sLsMsLs=319
      },
      LLLLsLL=398,
      LLsLLLs=82,
      LsLLsLL=84,
      LsLsLsL=1202,
      LssLsss=1111,
      sLLsLsL=870,
      ssLsssL=904
    },
    [3]={
      [4]={
        LMsLMLs=80,
        LsMLMLs=83,
        LsMLsLM=85,
        LsMLsML=81,
        MMsMsLs=73,
        MsMMsLs=74
      },
      LLLLsLL=223,
      LLLsLLs=495,
      LLsLLLs=90,
      LLsLLsL=496,
      LLsLsLL=91,
      LsLLLLs=92,
      LsLLLsL=498,
      LsLLsLL=93,
      LssLsLs=204,
      LssLsss=161,
      LsssLss=164,
      sLLLsLL=494,
      sLLsLLL=497,
      sLssLss=637,
      sLsssLs=173,
      ssLssLs=163,
      ssLsssL=158,
      sssLssL=905,
      sssLsss=1225
    },
    [4]={
      LLLLLLs=1247,
      LLsLsLs=1150,
      LLssLss=830,
      LsLsLss=840,
      LsLssLs=837,
      LssLLss=833,
      LssLsLs=844,
      LssLssL=828,
      Lssssss=916,
      sLLsLsL=309,
      sLLssLs=829,
      sLsLsLs=835,
      sLsLssL=842,
      sLssLLs=831,
      sLssLsL=846,
      sLssLss=637,
      sLsssss=1338,
      ssLLssL=827,
      ssLsLsL=848,
      ssLssLL=832,
      sssLssL=905,
      sssLsss=1337
    }
  },
  [6]={
    [1]={
      [5]={LLsMLLs=1245},
      LLLLLLs=1096,
      LsLsLsL=812,
      LsLssLs=574
    },
    [2]={
      [3]={MMsLsLs=624},
      [5]={
        LMsMLsM=1169,
        LsMLMsM=1172,
        LsMMLsM=1244,
        MLMsMLs=1168,
        MLsMLMs=1170,
        MMsLMMs=86,
        MsLMsML=3,
        MsMLsML=1167,
        MsMLsMM=87,
        sMLMsML=1166,
        sMLsMLM=1171
      }
    },
    [3]={
      [4]={
        LMsLMLs=94,
        LsMLsLM=95
      },
      [5]={
        LMsLMLs=96,
        LsMLMLs=98,
        LsMLsLM=99,
        LsMLsML=97
      }
    },
    [4]={
      [5]={
        LMsLLMs=117,
        MsLLMsL=363,
        sLMLsLM=1102
      }
    },
    [5]={
      LLLLLLs=1247,
      LsLsLLs=154,
      LsLsLss=926,
      Lssssss=345,
      sLLsLsL=309,
      sLsssss=347,
      ssLssss=346,
      sssLsss=344,
      ssssLss=350,
      sssssLs=348,
      ssssssL=349
    }
  },
  [7]={
    [1]={
      [2]={MsLMsLM=519},
      LsLsLsL=812,
      LsLssLs=574,
      ssLsssL=543
    },
    [2]={
      [5]={sLLMsLL=410},
      [6]={
        LMMsLMs=301,
        LMsLMMs=303,
        MMsLMsL=302,
        MsLMMsL=305,
        MsLMsLM=300,
        sLMMsLM=299,
        sLMsLMM=304
      },
      LLLLLLs=1178,
      LsLLLsL=1218,
      sLsLsLL=527,
      ssLsLsL=1134
    },
    [3]={
      [5]={
        MMsMsLs=88,
        MsLssLs=322,
        MsLssMM=778,
        MsMMsLs=89,
        sLsMsLs=320,
        sMMMsLs=818
      },
      LLLLsLL=398,
      LLsLLLs=102,
      LsLLsLL=104,
      sLLsLsL=870
    },
    [4]={
      [6]={
        LMsLMLs=100,
        LsMLMLs=103,
        LsMLsLM=101,
        LsMLsML=105,
        sLsMsLs=1103
      },
      LLLLsLL=223,
      LLsLLLs=108,
      LsLLLLs=109,
      LsLLsLL=110,
      LsLsLss=1145,
      LssLsLs=308
    },
    [5]={
      LLsLLLs=111,
      LsLLsLL=112,
      LsLsLss=802,
      LssLsLs=204,
      sLLsLsL=309,
      sLsLsLs=631,
      sLssLss=636,
      sLsssLs=173,
      sLsssss=1338,
      sssLsss=1337
    },
    [6]={
      LsLsLLs=154,
      LsLsLss=926
    }
  },
  [8]={
    [1]={
      [4]={
        LMssLss=339,
        LssLMss=342,
        MssLssL=337,
        sLMssLs=338,
        sLssLMs=340,
        ssLMssL=336,
        ssLssLM=341
      }
    },
    [3]={
      [5]={sMLMsML=1211},
      LLLLsLL=398,
      LsLsLsL=1202,
      LssLsss=1334
    },
    [4]={
      [7]={
        LMsLMLs=113,
        LsMLMLs=115,
        LsMLsLM=116,
        LsMLsML=114
      }
    },
    [5]={
      [6]={
        LMsLLMs=167,
        LMsLMsL=1079
      },
      LLsLLLs=121,
      LsLLLLs=122,
      LsLLsLL=123,
      LssLsLs=204,
      sLssLss=636,
      sLsssLs=172,
      sssLssL=1336
    },
    [7]={
      LLLLLLs=1247,
      LsLsLLs=154,
      LsLsLss=926
    }
  },
  [9]={
    [2]={
      [5]={
        LMssLss=445,
        LssLMss=448,
        MssLssL=443,
        sLMssLs=444,
        sLssLMs=446,
        ssLMssL=442,
        ssLssLM=447
      },
      LLLLLLs=458,
      LsLLLsL=1218,
      LsLssLs=574
    },
    [3]={
      [8]={
        LMMsLMs=294,
        LMsLMMs=296,
        MMsLMsL=295,
        MsLMMsL=298,
        MsLMsLM=293,
        sLMMsLM=292,
        sLMsLMM=297
      }
    },
    [4]={
      LLsLLLs=590,
      LsLLsLL=597,
      sLLLsLL=591,
      sLLsLsL=870
    },
    [5]={
      [8]={
        LMsLLMs=599,
        LMsLLsM=603,
        LMsLMLs=124,
        LMsLsML=598,
        LsMLMLs=126,
        LsMLsLM=125,
        LsMLsML=127,
        MsLMsLL=592,
        sLMsLLM=587
      },
      LLsLLLs=130,
      LsLLLLs=131,
      LsLLsLL=132,
      LsLsLss=1145
    },
    [6]={
      [7]={
        LsMLsML=269,
        sLMsLLM=269
      }
    },
    [7]={
      LLLLLLs=1247,
      LsLsLss=802,
      Lssssss=916,
      sLssLss=636,
      sLsssss=1338,
      sssLsss=1337
    },
    [8]={LsLsLLs=154}
  },
  [10]={
    [3]={
      [7]={sLLMsLL=410},
      LLLLLLs=1178,
      LsLLLsL=1218,
      sLsLsLL=527
    },
    [4]={
      [7]={
        MMsMsLs=106,
        MsMMsLs=107
      }
    },
    [5]={
      [8]={
        LMssLss=1169,
        LssLMss=1172,
        MssLssL=1167,
        sLMssLs=1168,
        sLssLMs=1170,
        ssLMssL=1166,
        ssLssLM=1171
      }
    },
    [7]={
      LsLsLss=802,
      LssLsLs=204,
      sLssLss=636,
      sLsssLs=172
    }
  },
  [11]={
    [2]={
      [6]={
        LMssLss=1162,
        LssLMss=1165,
        MssLssL=1160,
        sLMssLs=1161,
        sLssLMs=1163,
        ssLMssL=1159,
        ssLssLM=1164
      },
      LLLLLLs=458,
      LsLssLs=574
    },
    [3]={
      [7]={LLMMLLs=1115},
      LLLLLLs=1178,
      sLsLsLL=527
    },
    [4]={LsLsLsL=1202},
    [5]={
      [8]={
        MMsMsLs=119,
        MsMMsLs=120
      }
    },
    [6]={
      [10]={
        LMsLMLs=133,
        LsMLsLM=134
      },
      LsLsLss=1145
    },
    [7]={
      LsLsLss=1198,
      LssLsLs=308
    },
    [8]={
      LsLsLss=802,
      sLsLsLs=631,
      sLssLss=636,
      sLsssss=1338,
      sssLsss=1337
    },
    [9]={
      LLLLLLs=1247,
      Lssssss=916,
      sLssLss=636
    }
  },
  [12]={
    [3]={
      [7]={
        LMssLss=885,
        LssLMss=888,
        MssLssL=883,
        sLMssLs=884,
        sLssLMs=886,
        ssLMssL=882,
        ssLssLM=887
      }
    },
    [5]={
      [11]={LsMLLsM=1258},
      [9]={MsLssLs=596},
      sLLsLsL=870
    },
    [7]={
      [11]={
        LLMsLMs=794,
        LMsLLMs=1311,
        MsLLMsL=793,
        sLLMsLM=795
      },
      [9]={
        LMsLLMs=1275,
        LMsLMsL=259,
        MLsLMLs=1259,
        MsLLMsL=258,
        sLLMsLM=1274
      },
      LLLLsLL=223,
      LsLsLss=1145,
      LssLsLs=204,
      sLsLsLs=260
    }
  },
  [13]={
    [1]={
      [6]={
        LMssLss=476,
        LssLMss=479,
        MssLssL=474,
        sLMssLs=475,
        sLssLMs=477,
        ssLMssL=473,
        ssLssLM=478
      }
    },
    [2]={
      LsLsLsL=812,
      ssLsssL=543
    },
    [3]={
      [12]={MLsMMLs=1257},
      LLLLLLs=538
    },
    [4]={
      LLLLLLs=1178,
      sLsLsLL=527
    },
    [5]={
      [9]={
        MMsMsLs=128,
        MsMMsLs=129
      },
      LssLsss=1111
    },
    [7]={LsLsLss=1145},
    [10]={
      LLLLLLs=1247,
      LsLsLss=802,
      Lssssss=916,
      sLssLss=636
    },
    [11]={
      LsLsLLs=154,
      LsLsLss=926
    }
  },
  [14]={
    [3]={
      [8]={
        LMssLss=445,
        LssLMss=448,
        MssLssL=443,
        sLMssLs=444,
        sLssLMs=446,
        ssLMssL=442,
        ssLssLM=447
      },
      LLLLLLs=458
    },
    [7]={
      [12]={sLsMsLs=1273}
    },
    [9]={LsLsLss=1198},
    [11]={
      LsLsLss=802,
      Lssssss=916
    }
  },
  [15]={
    [4]={
      LLLLLLs=1178,
      sLsLsLL=527
    },
    [11]={
      sLsssss=1338,
      sssLsss=1337
    },
    [13]={LsLsLLs=154}
  },
  [16]={
    [3]={
      LLLLLLs=460,
      LsLssLs=574
    },
    [5]={LLLLLLs=1178},
    [7]={
      [12]={
        LsMsLss=522,
        sLsMsLs=1312
      }
    },
    [8]={
      [11]={MLMMLMs=1319}
    },
    [13]={LLLLLLs=1247}
  },
  [17]={
    [3]={LsLsLss=574},
    [5]={
      LLLLLLs=1178,
      sLsLsLL=527
    },
    [10]={LssLsLs=308},
    [12]={sLsssLs=172},
    [13]={Lssssss=916},
    [14]={LLLLLLs=1247},
    [15]={LsLsLLs=154}
  },
  [18]={
    [5]={
      LLLLLLs=1178,
      sLsLsLL=527
    }
  },
  [19]={
    [4]={LLLLLLs=458},
    [5]={sLsLsLL=527},
    [9]={
      [13]={MLMMLMs=1319}
    },
    [16]={LsLsLss=926}
  },
  [20]={
    [1]={
      [9]={ssLMssL=473}
    },
    [3]={ssLsssL=543},
    [5]={
      [12]={
        LMssLss=885,
        LssLMss=888,
        MssLssL=883,
        sLMssLs=884,
        sLssLMs=886,
        ssLMssL=882,
        ssLssLM=887
      }
    },
    [17]={LsLsLss=926}
  },
  [21]={
    [17]={LsLsLss=800}
  },
  [22]={
    [19]={LsLsLLs=154}
  },
  [23]={
    [4]={LsLsLss=574},
    [5]={LLsLLsL=502},
    [20]={LsLsLLs=154}
  },
  [24]={
    [17]={sssLsss=1337}
  },
  [25]={
    [7]={sLsLsLL=527}
  },
  [27]={
    [5]={LsLssLs=575}
  },
  [28]={
    [5]={LsLsLss=574}
  },
  [29]={
    [8]={sLsLsLL=527}
  },
  [31]={
    [27]={LsLsLLs=154}
  },
  [39]={
    [7]={LsLsLss=574}
  },
  [44]={
    [19]={
      [33]={sLsMsLs=320}
    }
  }
},
[8]={
  [2]={
    [1]={
      LLsLLLLL=907,
      LLsLLsLs=329,
      LLsLLsss=389,
      LLsLsLLs=485,
      LLsLssLs=577,
      LLssLLss=759,
      LLsssLLs=503,
      LsLLLsss=1023,
      LsLLsLLs=241,
      LsLLsLsL=242,
      LsLLsLss=620,
      LsLLssLs=1322,
      LsLLsssL=1026,
      LsLsLLsL=798,
      LsLsLsLs=312,
      LsLssLsL=230,
      LssLLssL=353,
      LsssLLLs=978,
      LsssLLsL=777,
      sLLLsLLL=1285,
      sLLLsLss=423,
      sLLLssLs=816,
      sLLsLLsL=516,
      sLLsLLss=920,
      sLLsLsLL=240,
      sLLssLLs=1289,
      sLLsssLL=913,
      sLsLLsLL=218,
      sLsLLsLs=568,
      sLsLsLLs=1146,
      sLsLsLsL=857,
      sLsLssLL=545,
      sLssLLsL=508,
      sLssLsLL=1175,
      sLsssLLL=358,
      ssLLssLL=758,
      ssLsLsLL=980,
      ssLssLsL=1131,
      ssLsssLs=1215,
      sssLLLsL=141,
      sssLLsLL=968
    }
  },
  [3]={
    [1]={
      [2]={
        LMsLMsLM=316,
        LssMsMss=988,
        MLssMsss=1057,
        MsLssssM=961,
        MsMsssLs=149,
        MssLsMss=1099,
        sLMLssMM=773,
        sLMsssMs=964,
        sLsMMsss=941,
        sLsMsMss=614,
        sLsMssMs=1056,
        sLssMMss=1290,
        sLsssMMs=946,
        sMLssMss=850,
        sMLssssM=1147,
        sMMsssLs=422,
        sMsssLsM=625,
        ssMssLMs=1007,
        sssMMsLs=431
      },
      LLsLLLLL=514,
      LsLLsLLs=361,
      LsLsLsLs=824,
      LsssLsss=755,
      sLsLsLsL=858,
      sLsssLss=1234,
      sLssssLs=943,
      ssLssLsL=1267,
      ssLsssLs=1235,
      sssLsssL=754
    },
    [2]={
      LsLLsLLs=361,
      LsLsLLsL=1263,
      LsLsLsLs=310,
      sLLLLLLL=414,
      sLLLsLLL=437,
      sLsLsLsL=856,
      sLssLssL=610,
      ssLssLsL=864,
      ssLsssLs=1215,
      sssLsssL=860
    }
  },
  [4]={
    [1]={
      [2]={
        MsssssLs=1071,
        sLLMLLLs=264
      },
      [3]={
        sLsLsLsM=529,
        sMMLMLMM=369
      },
      LLLLLLLs=1339,
      LLsLLLLL=514,
      sLsLssLs=1129
    },
    [2]={
      [3]={MMssLMML=619}
    },
    [3]={
      LsLsLLsL=1263,
      sLLLLLLL=414,
      sLsLsLsL=932,
      ssLssLsL=1125
    }
  },
  [5]={
    [1]={
      [3]={
        sLMsLMsL=1180,
        sMLsMLsM=263
      }
    },
    [2]={
      [3]={
        LLMLLMsM=388,
        LMLMLsLM=311,
        MLsLMLML=856
      },
      LLLLLLLs=1339,
      LsLsLsLs=310,
      sLsLsLsL=856
    },
    [3]={
      LsLsLsLs=310,
      sLLLsLLL=437,
      sLsLsLsL=856,
      ssLssLsL=706,
      ssLsssLs=1215,
      sssLsssL=860
    },
    [4]={
      LsLsLLsL=1263,
      sLsLsLsL=932
    }
  },
  [6]={
    [3]={LLsLLsss=267},
    [5]={sLsLsLsL=932}
  },
  [7]={
    [2]={
      LLLLLLLs=1339,
      sLsLssLs=1129
    },
    [3]={
      LsLLsLLs=139,
      LsLsLsLs=310,
      sLsLsLsL=856
    },
    [4]={
      ssLssLsL=706,
      ssLsssLs=1215
    },
    [5]={
      sLLLLLLL=414,
      sLLLsLLL=437,
      sLsLsLsL=856,
      ssLssLsL=1125
    },
    [6]={sLsLsLsL=932}
  },
  [8]={
    [3]={
      [5]={LMLMLsLM=311},
      LLLLLLLs=1339,
      LsLsLsLs=310,
      sLsLsLsL=856
    },
    [5]={
      sLLLsLLL=437,
      sssLsssL=860
    },
    [7]={sLsLsLsL=932}
  },
  [9]={
    [4]={
      [5]={
        LLsLLsMs=267,
        LLssMLLs=586,
        LsLLsLsM=600
      },
      LsLsLsLs=310,
      sLsLsLsL=856
    },
    [5]={
      LsLsLsLs=310,
      sLsLsLsL=856,
      ssLssLsL=706
    },
    [7]={LsLsLLsL=1263}
  },
  [10]={
    [7]={
      sLLLLLLL=414,
      ssLssLsL=1125
    }
  },
  [11]={
    [4]={
      LLLLLLLs=1339,
      sLsLsLsL=856
    },
    [6]={LsLsLsLs=310},
    [8]={
      sLLLLLLL=414,
      ssLssLsL=1127
    }
  },
  [12]={
    [7]={ssLssLsL=706}
  },
  [13]={
    [5]={
      [11]={MMMLMMMs=1320},
      LsLsLsLs=310
    },
    [8]={
      LsLsLsLs=403,
      sLLLLLLL=414
    },
    [9]={
      sLLLLLLL=414,
      ssLssLsL=1125
    }
  },
  [15]={
    [6]={
      [13]={MMMLMMMs=1320}
    }
  },
  [17]={
    [7]={LLLLLLLs=1339}
  }
},
[9]={
  [0]={
    [1]={sssssssss=900}
  },
  [2]={
    [1]={
      LLLLLLLLs=509,
      LLLLsLLLs=1206,
      LLLsLLLLs=147,
      LLLsLLLsL=1207,
      LLsLLLLsL=1305,
      LLsLLLsLL=1208,
      LLsLLsLLs=1081,
      LLsLsLsLs=402,
      LLsLsssss=1036,
      LLsssLsss=1228,
      LLsssssLs=1030,
      LsLLLLsLL=1199,
      LsLLLsLLL=640,
      LsLLsLLsL=186,
      LsLLsssss=374,
      LsLsLsLLs=412,
      LsLsLsLsL=1119,
      LsLsLsLss=555,
      LsLsssssL=524,
      LssLssLss=753,
      LsssLLsss=225,
      LsssLsLss=958,
      LsssLsssL=470,
      LsssLssss=513,
      LsssssLsL=224,
      sLLLLsLLL=854,
      sLLLsLLLL=1203,
      sLLsLLsLL=1080,
      sLsLsLsLL=1210,
      sLssLsLss=804,
      sLssLssLs=384,
      sLssLsssL=940,
      ssLsLLsss=244,
      ssLsLssLs=257,
      ssLssLssL=752,
      ssLsssLLs=993,
      ssLsssLsL=1315,
      sssLLsssL=256,
      sssLsssLL=550,
      ssssLssss=1318
    }
  },
  [3]={
    [1]={
      [2]={
        LLssMLMss=472,
        LMLLMsMsM=50,
        MsLsLLsMs=421,
        MsMsLLLLs=1194,
        sLssssMss=1008,
        sLsssssMs=1004,
        sMssLssMs=1226,
        ssMssssLs=1019
      },
      LLLsLLLLs=175,
      LLsLLLLsL=1306,
      LLsLLsLLs=866,
      LLsLsLsLs=402,
      LsLLLsLLL=640,
      LsLLsLLsL=186,
      LsLsLsLsL=1119,
      sLsLLsLsL=865,
      ssLsLsLsL=825
    },
    [2]={
      LLLLLLLLs=509,
      LLLLsLLLs=1206,
      LLLsLLLLs=175,
      LLLsLLLsL=1207,
      LLsLLLLsL=564,
      LLsLLLsLL=1208,
      LLsLLsLLs=1266,
      LsLLLLsLL=1199,
      LsLLLsLLL=640,
      LsLsLLsLs=908,
      LsLsLsLsL=1193,
      LsLsLsLss=874,
      LssLssLss=193,
      LsssLssss=1321,
      LssssLsss=1093,
      sLLLLsLLL=1212,
      sLLLsLLLL=1203,
      sLsLsLsLL=1210,
      sLsLsLsLs=1083,
      sLssLssLs=930,
      sLsssLsss=200,
      ssLssssss=611,
      sssLsssLs=199,
      ssssLssss=822
    }
  },
  [4]={
    [1]={
      [2]={sLsLMsLsL=1088},
      [3]={LsMsLsMsL=1091},
      LLsLLsLLs=866,
      LLsLsLsLs=402,
      LsLLLsLLL=639,
      LsLsLsLsL=1329
    },
    [2]={
      [3]={MLsssssLM=616}
    },
    [3]={
      LLLLLLLLs=919,
      LLsLLLLsL=563,
      LsLsLsLss=874,
      LssssLsss=505,
      sLsLsLsLL=1210,
      sLssLssLs=277,
      ssssLssss=822
    }
  },
  [5]={
    [1]={
      LLsLLsLLs=1143,
      LLsLsLsLs=487,
      LsLsLsLsL=1119,
      sLLsLLsLL=1241
    },
    [2]={
      [3]={MLsMLMsLM=383},
      LLLsLLLLs=175,
      LLsLsLsLs=402,
      LsLLLsLLL=639,
      LsLLsLLsL=186,
      LsLsLsLss=555,
      sLssLssLs=182
    },
    [3]={
      [4]={
        MssLssMss=420,
        sMssLsMss=418,
        ssMsLsMss=419
      },
      LLLLLLLLs=509,
      LLLsLLLLs=174,
      LLsLLLLsL=563,
      LLsLLsLLs=1266,
      LsLLLsLLL=639,
      LssLssLss=193,
      LsssLssss=513,
      LssssLsss=1093,
      sLsLsLsLL=1210,
      sLsssLsss=1112,
      ssssLssss=822
    },
    [4]={
      LLLLLLLLs=919,
      LLsLLLLsL=563,
      sLsLsLsLL=1141,
      sLsLsLssL=417,
      sssLsssss=1278
    }
  },
  [6]={
    [1]={
      LLsLsLsLs=487,
      sssLssssL=544
    },
    [2]={
      [3]={MLsMLMsLM=383}
    },
    [5]={
      LLLLLLLLs=919,
      sLsLsLsLL=1141,
      sLsLsLssL=417,
      sssLsssss=1278
    }
  },
  [7]={
    [1]={LLsLsLsLs=487},
    [2]={
      LLsLLsLLs=866,
      LLsLsLsLs=402,
      LsLLLsLLL=639
    },
    [3]={
      LLLsLLLLs=174,
      LsLLLsLLL=639,
      sLssLssLs=190
    },
    [4]={
      LLLLLLLLs=919,
      LLLsLLLLs=174,
      LLsLLsLLs=1266,
      LssLssLss=193,
      LsssLssss=513,
      sLsLsLsLL=1210,
      ssssLssss=822
    },
    [5]={
      LLLLLLLLs=919,
      LLsLLLLsL=563,
      LsLsLsLss=874,
      sLsLsLsLL=1210,
      sLssLssLs=277,
      ssssLssss=822
    },
    [6]={sssLsssss=1278}
  },
  [8]={
    [3]={
      [6]={ssMLLssML=449},
      LLLsLLLLs=174,
      LLsLsLsLs=402,
      LsLLLsLLL=639,
      LsLLsLLsL=186,
      sLssLssLs=182
    },
    [5]={
      LLLLLLLLs=509,
      LLLsLLLLs=174,
      LLsLLLLsL=563,
      LLsLLsLLs=1266,
      sLsLsLsLL=1210,
      sLsssLsss=1112,
      ssssLssss=823
    }
  },
  [9]={
    [2]={LsLLLsLLL=639},
    [4]={
      [5]={
        LLssMLssM=589,
        MsssMLsLL=602,
        ssMLLssML=595
      },
      sLssLssLs=190
    },
    [5]={
      LLLLLLLLs=919,
      LLLsLLLLs=174,
      LLsLLsLLs=1266,
      sLsLsLsLL=1210
    },
    [7]={LLsLLLLsL=563}
  },
  [10]={
    [3]={
      LLsLLsLLs=866,
      LLsLsLsLs=402,
      LsLLLsLLL=639,
      sLssLssLs=182
    },
    [7]={
      LLLLLLLLs=919,
      LLsLLLLsL=563,
      LsLsLsLss=874
    }
  },
  [11]={
    [1]={LLsLsLsLs=925},
    [2]={
      LLsLsLsLs=487,
      sssLssssL=544
    },
    [3]={LLsLLsLLs=866},
    [4]={
      LLsLsLsLs=402,
      sLssLssLs=182
    },
    [6]={
      LLLLLLLLs=919,
      LLsLLsLLs=1266
    },
    [7]={
      LLsLLsLLs=1266,
      ssssLssss=822
    },
    [8]={
      LsLsLsLss=874,
      sLssLssLs=277,
      ssssLssss=822
    },
    [9]={
      LLLLLLLLs=919,
      sLsLsLsLL=1141
    }
  },
  [12]={
    [1]={LLsLsLsLs=925},
    [5]={
      LLLsLLLLs=174,
      sLssLssLs=182
    },
    [7]={
      LLsLLsLLs=1266,
      ssssLssss=822
    }
  },
  [13]={
    [4]={
      [12]={sLsLLsLsM=237},
      LLsLsLsLs=402
    },
    [5]={
      LLsLsLsLs=402,
      sLssLssLs=182
    },
    [8]={ssssLssss=822},
    [10]={LLsLLLLsL=563}
  },
  [14]={
    [5]={sLssLssLs=182},
    [9]={ssssLssss=822}
  },
  [15]={
    [4]={LLsLLsLLs=866},
    [11]={LsLsLsLss=874}
  },
  [16]={
    [7]={sLssLssLs=190}
  },
  [17]={
    [3]={sssLssssL=544},
    [5]={LLsLsLsLs=402},
    [7]={sLssLssLs=190},
    [11]={ssssLssss=822}
  },
  [18]={
    [5]={LLsLLsLLs=866},
    [7]={sLssLssLs=182},
    [13]={LsLsLsLss=874}
  },
  [20]={
    [11]={LLLLLLLLs=1272}
  },
  [21]={
    [4]={sLLsLLsLL=1241}
  },
  [26]={
    [5]={sLLsLLsLL=1241}
  }
},
[10]={
  [2]={
    [1]={
      LLLLLLLLLs=820,
      LLLLsLLLLs=859,
      LLLsLLLLsL=1214,
      LLsLLLLLLL=605,
      LsLLsLLLsL=834,
      LsLLsLsLLs=176,
      LsLsLLsLsL=539,
      LsLsLsLsLs=169,
      LsssLssLss=1077,
      LsssLsssss=585,
      LssssLssss=761,
      LsssssLsss=783,
      LsssssssLs=626,
      sLLLsLLsLL=203,
      sLLsLLLsLL=839,
      sLLsLLsLLL=440,
      sLsLLsLsLL=272,
      sLsLsLsLsL=215,
      sLsLssLsLs=274,
      sLssssLsss=327,
      sLsssssssL=629,
      ssLsLsssss=996,
      ssLssLsssL=1078,
      ssLssssLss=1224,
      ssLsssssLs=944,
      sssLssLssL=1132,
      sssLssssLs=328,
      sssLsssssL=966,
      ssssLssssL=760,
      sssssLsLss=1059
    }
  },
  [3]={
    [1]={
      [2]={
        LsLMMMLMMM=153,
        LsssLssMss=39,
        MMLsLMMLsL=359,
        sMsMsMsLLL=1271
      },
      LLLLLLLLLs=821,
      LsLLLsLLsL=235,
      LsLLsLLLsL=834,
      LsLLsLsLLs=176,
      sLLsLLLsLL=839,
      sLLsLLsLLL=770
    },
    [2]={
      LLLLLLLLLs=821,
      LLLLsLLLLs=859,
      LLLsLLLLLL=521,
      LLLsLLLLsL=1214,
      LsLsLLsLsL=539,
      LsLsLsLsLs=169,
      LsLsssLsLs=1085,
      LssLssLsLs=1086,
      LssLssLssL=1084,
      LsssLsssss=906,
      sLLLsLLsLL=203,
      sLsLLsLsLL=272,
      sLsLsLsLsL=219,
      sLsLssLsLs=1316,
      sLssLsLssL=862,
      sLssssLsss=332,
      sLsssssLss=151,
      ssLsLssLsL=155,
      ssLsssLsss=1184,
      ssLssssLss=1190,
      sssLssssLs=1191,
      sssLsssssL=1185,
      ssssLsssLs=152,
      ssssLssssL=333,
      sssssssssL=789
    }
  },
  [4]={
    [1]={
      [2]={MsLMsLMsLM=343},
      LLLLsLLLLL=1277,
      LsLLLsLLsL=235,
      LsLLsLLLsL=834,
      LsLLsLsLLs=159,
      LsssLssLss=569,
      sLLsLLLsLL=839,
      sLLsLLsLLL=770,
      sLsLssLsLs=325
    },
    [2]={
      [3]={LsLsLsLMMM=556}
    },
    [3]={
      LLLLLLLLLs=821,
      LLLsLLLLsL=1214,
      LLLsLLsLLs=1148,
      LsLsLLsLsL=539,
      LsssLsssss=906,
      sLLLsLLsLL=307,
      sLLsLLsLLL=1144,
      sLLsLLssLL=231,
      sLLsLsLLsL=334,
      sLsLsLsLsL=213,
      sLsLssLsLs=274,
      ssLsLssLsL=155,
      sssssssLss=165,
      sssssssssL=789
    }
  },
  [5]={
    [1]={
      LLLLsLLLLL=1277,
      LsssLssLss=569,
      sLsLssLsLs=325
    },
    [2]={
      [3]={LMsMLMsMsM=585},
      LLLLLLLLLs=821,
      LsLLsLLLsL=630,
      LsLLsLsLLs=176,
      sLLLsLLsLL=203,
      sLLsLLLsLL=801,
      sLLsLLsLLL=440,
      sssLssLssL=1132
    },
    [3]={
      LLLLLLLLLs=821,
      LLLLLsLLLL=556,
      LLLLsLLLLs=859,
      LLLsLLLLLL=521,
      LsLsLLsLsL=539,
      LsLsLsLsLs=169,
      LsssLsssss=906,
      sLLLsLLsLL=203,
      sLsLsLsLsL=213,
      sLsLssLsLs=274,
      sLssLssLss=405,
      sssLssssLs=282
    },
    [4]={
      LLLsLLsLLs=1148,
      LssLssLsss=1196,
      sLLLsLLsLL=1144,
      sLLsLsLLsL=334,
      sLsLsLsLsL=362,
      sLsLssLsLs=272,
      ssLsLssLsL=155,
      sssssssssL=789
    }
  },
  [6]={
    [1]={
      LLLLsLLLLL=1277,
      LsssLssLss=569
    },
    [5]={
      LLLsLLsLLs=1148,
      LssLssLsss=1196,
      sLLLsLLsLL=1144,
      sLLsLsLLsL=334,
      sssssssssL=789
    }
  },
  [7]={
    [2]={
      LsLLsLsLLs=176,
      LsssLssLss=569,
      sLLsLLLsLL=801,
      sLLsLLsLLL=770
    },
    [3]={
      LsLLsLsLLs=176,
      sLLLsLLsLL=203,
      sLLsLLLsLL=801,
      sLLsLLsLLL=440,
      sLsLsLsLsL=1268
    },
    [4]={
      LLLLLLLLLs=821,
      LsLLsLLLsL=1197,
      LsLsLLsLsL=539,
      LsLsLsLsLs=169,
      LsssLsssss=906,
      sLLLsLLsLL=307,
      sLsLsLsLsL=219,
      sLsLssLsLs=274,
      ssLssssLss=1224,
      sssLssssLs=282
    },
    [5]={
      LLLLLLLLLs=821,
      LsLsLLsLsL=539,
      LsssLsssss=906,
      sLLLsLLsLL=1144,
      sLsLsLsLsL=213,
      ssLsLssLsL=155,
      sssLssssLs=877,
      sssssssLss=165
    },
    [6]={
      LssLssLsss=1196,
      sLLLsLLsLL=1144,
      sLsLssLsLs=274,
      sssssssssL=792
    }
  },
  [8]={
    [1]={
      [3]={sLMsLMsLMs=280}
    },
    [3]={
      LLLLLLLLLs=821,
      LsLLsLLLsL=630,
      LsLLsLsLLs=176,
      sLLsLLLsLL=801
    },
    [5]={
      LLLLLLLLLs=821,
      LsLsLLsLsL=539,
      LsssLsssss=906,
      sLLLsLLsLL=202,
      sLsLssLsLs=274,
      sssLssssLs=877
    }
  },
  [9]={
    [2]={
      LsssLssLss=569,
      sLsLssLsLs=325
    },
    [4]={
      [5]={
        LMsssMLsMs=601,
        LsLMsssMsM=588
      },
      sLsLsLsLsL=1268
    },
    [5]={
      [7]={MLMMsMMLMM=929},
      LLLLLLLLLs=821,
      LsLLsLLLsL=1197,
      LsLsLLsLsL=539,
      LsLsLsLsLs=169,
      sLsLssLsLs=274,
      sssLssssLs=281
    },
    [7]={
      LLLsLLsLLs=1148,
      sLLsLsLLsL=334,
      sLsLsLsLsL=362,
      ssLsLssLsL=155,
      sssssssssL=789
    }
  },
  [10]={
    [3]={
      LsLLsLsLLs=176,
      sLLsLLLsLL=801,
      sLLsLLsLLL=770
    },
    [7]={
      LsLsLLsLsL=539,
      sLLLsLLsLL=307,
      sLsLsLsLsL=213,
      sLsLssLsLs=274,
      sssLssssLs=877
    }
  },
  [11]={
    [3]={
      sLLsLLLsLL=801,
      sLLsLLsLLL=770
    },
    [4]={
      LsLLsLsLLs=176,
      sLLsLLLsLL=801
    },
    [5]={sLsLsLsLsL=1268},
    [6]={
      LLLLLLLLLs=821,
      LsLLsLLLsL=1197,
      LsLsLLsLsL=539,
      LsLsLsLsLs=169,
      sLsLssLsLs=274,
      sssLssssLs=281
    },
    [7]={
      LsLsLLsLsL=539,
      sLsLssLsLs=274,
      sssLssssLs=877
    },
    [8]={
      LsLsLLsLsL=539,
      sLsLsLsLsL=213,
      ssLsLssLsL=155,
      sssssssLss=165
    },
    [9]={
      LssLssLsss=1196,
      sLLsLsLLsL=334,
      sssssssssL=789
    }
  },
  [12]={
    [5]={
      sLLsLLsLLL=440,
      sLsLsLsLsL=1268
    },
    [7]={
      LsLsLLsLsL=539,
      sLsLssLsLs=274,
      sLssLssLss=405,
      sssLssssLs=281
    }
  },
  [13]={
    [3]={
      LsssLssLss=569,
      sLsLssLsLs=325
    },
    [6]={sLsLsLsLsL=1268},
    [7]={
      LsLLsLLLsL=1197,
      LsLsLsLsLs=169,
      sLsLsLsLsL=219,
      ssLssssLss=879
    },
    [8]={
      LsLsLLsLsL=539,
      sLsLssLsLs=274
    },
    [10]={sssssssssL=789},
    [11]={LssLssLsss=1196}
  },
  [14]={
    [3]={LsssLssLss=569},
    [5]={sLLsLLLsLL=801},
    [11]={sssssssssL=789}
  },
  [15]={
    [4]={
      sLLsLLLsLL=801,
      sLLsLLsLLL=770
    }
  },
  [16]={
    [7]={sLsLsLsLsL=1268},
    [9]={sssLssssLs=281},
    [13]={
      sLLsLsLLsL=334,
      sssssssssL=789
    }
  },
  [17]={
    [5]={LsLLsLsLLs=176},
    [6]={LsLLsLsLLs=176},
    [7]={sLLsLLsLLL=440},
    [10]={sLssLssLss=405}
  },
  [18]={
    [5]={sLLsLLLsLL=801}
  },
  [19]={
    [4]={LsssLssLss=569},
    [5]={
      sLLsLLLsLL=801,
      sLLsLLsLLL=770
    }
  },
  [22]={
    [5]={
      LsssLssLss=570,
      sLsLssLsLs=325
    },
    [17]={sssssssssL=789}
  },
  [23]={
    [5]={LsssLssLss=569}
  },
  [24]={
    [13]={
      [18]={sLsLMLsLsL=1221}
    }
  },
  [32]={
    [7]={LsssLssLss=569}
  }
},
[11]={
  [2]={
    [1]={
      LLLLLLLLLLs=790,
      LLLLLsLsLLs=530,
      LLLLsLLLLLs=198,
      LLLLsLLLLsL=1324,
      LLLsLLLsLLs=1123,
      LLLsLLsLLLs=853,
      LLsLLLsLLLs=411,
      LLsLsLsLsLs=1261,
      LsLLLLLsLLL=1325,
      LsLLLsLLLsL=606,
      sLLLLLsLLLL=197,
      sLLLLsLLLLL=1109,
      sLsLsLsLsLL=565,
      sLsLsLsLsLs=407,
      sLsLssLssLs=1200,
      sLsssssssss=1037,
      ssLsLssLssL=525
    }
  },
  [3]={
    [1]={
      LLLLLLLLsLL=166,
      LLLsLLLsLLs=1123,
      LsLsLLsLLsL=803,
      LsLsLsLssLs=1176,
      LssLsLssLss=520,
      LssLsssLsss=1181,
      LssLssssLsL=641,
      sLLLLLsLLLL=504,
      sLsLsLsLsLs=407,
      sLssLsssLss=1117,
      ssLsLssLssL=525
    },
    [2]={
      LLsLLLsLLLs=196,
      LsLLLsLLLsL=704,
      LsLLLsLLsLL=1183,
      LssssLsssss=370,
      sLLLLsLLLLL=512,
      sLLLsLLLsLL=197,
      sLsLsLsLsLL=565,
      sLsLssLssLs=1200,
      sLssssLssss=480,
      ssLsLsLsLsL=531,
      ssLsLssLssL=869,
      sssssLsssss=1192
    }
  },
  [4]={
    [1]={
      LsLsLLsLLsL=803,
      LsLsLsLsLss=808,
      LsLsLsLssLs=1176,
      sssLsssLssL=233
    },
    [3]={
      LsLLLsLLLsL=704,
      LsLLLsLLsLL=1183,
      sLLLLsLLLLL=511,
      sLsLsLsLsLL=565,
      ssLsLssLssL=869
    }
  },
  [5]={
    [1]={
      [3]={LMsLLMsLMsL=261},
      LsLsLLsLLsL=803,
      LsLsLsLsLss=1326,
      LsLsLsLssLs=1151,
      LssLsLsLsLs=1307,
      sLssLsLssLs=810,
      ssssLsssssL=541
    },
    [2]={
      LLLLLLLLsLL=166,
      LLLsLLLsLLs=1123,
      LsLsLsLssLs=1176,
      LssLsssLsss=1181,
      LssssLsssss=1253,
      sLsLsLsLsLs=407,
      sLsLssLssLs=1301,
      sLssLsssLss=1117,
      ssLsLssLssL=525
    },
    [3]={
      LLsLLsLLsLs=1302,
      LssssLsssss=370,
      sLLLLsLLLLL=1108,
      sLsLsLsLsLL=565,
      sLsLssLssLs=1200,
      ssLsLsLsLsL=531,
      ssssLsssssL=891
    },
    [4]={
      LsLLLsLLLsL=704,
      sLsLsLsLsLL=565,
      ssLsLssLssL=869
    }
  },
  [6]={
    [1]={
      LsLsLsLssLs=1151,
      LssLsLsLsLs=1307,
      sLssLsLssLs=810
    },
    [5]={
      sLsLsLsLsLL=565,
      sLsssLsLssL=565
    }
  },
  [7]={
    [1]={
      [2]={sLsMsLsMsLs=826},
      LsLsLsLLsLs=194,
      LsLsLsLssLs=1089
    },
    [2]={
      LsLsLsLssLs=1176,
      sssLsssLssL=232
    },
    [3]={
      LLLsLLLsLLs=1123,
      LsLsLsLssLs=1176,
      LssLsssLsss=1181,
      sLsLsLsLsLs=407,
      ssLsLssLssL=525
    },
    [4]={
      sLsLssLssLs=1200,
      ssssLsssssL=891
    },
    [5]={
      LsLLLsLLLsL=704,
      LsLLLsLLsLL=1183,
      sLLLLsLLLLL=511,
      ssLsLssLssL=869
    },
    [6]={
      sLLLLsLLLLL=511,
      sLsLsLsLsLL=565,
      ssLsLssLssL=869
    }
  },
  [8]={
    [1]={LsLsLsLssLs=1089},
    [3]={
      LLLLLLLLsLL=166,
      LLLsLLLsLLs=1126,
      LssLsssLsss=1181,
      sLsLsLsLsLs=407,
      ssLsLssLssL=525
    },
    [5]={
      LLsLLsLLsLs=1302,
      LssssLsssss=370,
      sLsLssLssLs=1200,
      ssLsLsLsLsL=531,
      ssssLsssssL=891
    },
    [7]={sLsLsLsLsLL=565}
  },
  [9]={
    [2]={
      [5]={LMLMLMLsMLM=467},
      LsLsLsLsLss=808,
      ssssLsssssL=541
    },
    [4]={
      LLLsLLLsLLs=1123,
      ssLsLssLssL=525
    }
  },
  [10]={
    [3]={LsLsLsLssLs=1176},
    [7]={ssLsLssLssL=869}
  },
  [11]={
    [2]={
      LsLsLsLsLss=807,
      sLssLsLssLs=810
    },
    [3]={
      LsLsLsLssLs=1176,
      sssLsssLssL=232
    },
    [4]={
      LLLsLLLsLLs=1126,
      sLsLsLsLsLs=407,
      ssLsLssLssL=525
    },
    [5]={LLLsLLLsLLs=1123},
    [8]={
      LsLLLsLLsLL=1183,
      ssLsLssLssL=869
    },
    [9]={sLsLsLsLsLL=565}
  },
  [12]={
    [2]={
      [7]={MMsMMLMMsMM=1340}
    },
    [5]={
      LLLsLLLsLLs=1123,
      LssLsssLsss=1181,
      ssLsLssLssL=525
    },
    [7]={
      sLsLssLssLs=1200,
      ssLsLsLsLsL=531,
      ssssLsssssL=891
    }
  },
  [13]={
    [2]={LsLsLsLssLs=1151},
    [3]={LsLsLsLsLss=808},
    [4]={LsLssLssLss=889},
    [5]={
      LLLsLLLsLLs=1123,
      LssLsssLsss=1181,
      ssLsLssLssL=525
    },
    [8]={
      LLsLLsLLsLs=1302,
      LssssLsssss=370,
      ssLsLsLsLsL=531
    }
  },
  [14]={
    [3]={
      LsLsLsLsLss=808,
      ssssLsssssL=541
    },
    [5]={ssLsLssLssL=525}
  },
  [15]={
    [2]={
      LsLsLsLLsLs=194,
      LsLsLsLssLs=1089
    }
  },
  [16]={
    [3]={
      LsLsLsLsLss=808,
      sLssLsLssLs=810
    },
    [5]={LsLssLssLss=889}
  },
  [17]={
    [3]={sLssLsLssLs=810},
    [7]={LssLsssLsss=1181}
  },
  [18]={
    [7]={
      LssLsssLsss=1181,
      ssLsLssLssL=525
    }
  },
  [20]={
    [3]={LsLsLsLssLs=1089}
  },
  [21]={
    [8]={ssLsLssLssL=525}
  },
  [22]={
    [3]={
      LsLsLsLLsLs=194,
      LsLsLsLssLs=1089
    }
  },
  [23]={
    [4]={sLssLsLssLs=810}
  }
},
[12]={
  [0]={
    [1]={ssssssssssss=7}
  },
  [2]={
    [1]={
      LLLLLLssLLLL=335,
      LLLLsLLLLLLs=461,
      LLLsLLLLLLLL=1087,
      LLLsLLLLLsLL=878,
      LLsLLLLLsLLL=515,
      LLsLsLLsLLLs=4,
      LsLLLsLLLsLL=4,
      LsLsLLsLsLsL=1314,
      LsLsLsLLsLsL=387,
      LsLsLsLsLsLs=462,
      LssLsLsLssLs=28,
      LsssLsssLsss=488,
      sLLLsLLLsLLL=191,
      sLLsLsLsLLsL=654,
      sLsLLsLsLsLL=607,
      sLsLssLsLsLs=1216,
      sLssLsLssLsL=1104,
      sLssLssLssLs=365,
      sLsssLssssLs=4,
      ssLsssLsssLs=179,
      sssLsssLsssL=183
    }
  },
  [3]={
    [1]={
      [2]={
        LLLLLLLLLsMs=791,
        LMLMLMLLLsLL=633,
        LsLsMLsLsLsM=482,
        LsMLsMsMsMsL=373,
        LsMsLLsLsMsL=483,
        MMMsLMMMMMsL=481,
        sLMMMsLMMLsM=484,
        sLMsLsLMsMLM=1287,
        sLssMMsMsMMs=1186,
        sMMMLMMMLMMM=1270
      },
      LLLsLLLLLLLL=1087,
      LLLsLLLLLsLL=881,
      LsLsLssLsLss=1303,
      LssLsLsLssLs=17,
      sLLsLsLLsLsL=364,
      sLLsLsLsLLsL=687,
      sLsLssLsLsLs=1216,
      sLssLsLssLsL=1213,
      sLssLssLssLs=212,
      sssLsssLsssL=551
    },
    [2]={
      LLLLLLLLsLLL=1276,
      LLLsLLLLLLLL=1087,
      LLLsLLLLLsLL=284,
      LLLsLLLLsLLL=2,
      LLsLLLLLsLLL=515,
      LLsLLsLLsLLs=313,
      LsLsLsLLsLsL=386,
      LsLsLsLsLsLs=462,
      LssLLsLLssLL=367,
      LssLsLsLssLs=10,
      LsssLsssLsss=772,
      sLLLsLLLsLLL=191,
      sLLsLsLsLLsL=696,
      sLsLLsLLssLL=463,
      sLssLsLssLsL=1105,
      sLssLssLssLs=4,
      sLsssLsssLss=1186,
      ssLssLssLssL=278,
      ssLsssLsssLs=179,
      sssssLsssssL=491
    }
  },
  [4]={
    [1]={
      [3]={LLLLLLLLLsMs=791},
      LLLsLLLLLLLL=1087,
      LLLsLLLLLsLL=881,
      LssLsLsLssLs=34,
      sLLsLsLsLLsL=648,
      sLsLssLsLsLs=1216,
      sLssLsLssLsL=1213
    },
    [2]={
      [3]={
        LMLsLMLLsLML=2,
        sLssMMsMsMMs=1186,
        sMsLsMssMMMs=433
      }
    },
    [3]={
      LLLsLLLLLLLL=1087,
      LLLsLLLLLsLL=284,
      LLLsLLLLsLLL=2,
      LLsLLsLLsLLs=313,
      LsLsLsLLsLsL=386,
      LsLsLsLsLsLs=462,
      LssLsLsLssLs=20,
      sLLLsLLLsLLL=191,
      sLLsLsLsLLsL=659,
      sLssLsLssLsL=1105,
      ssLssLssLssL=314,
      ssLsssLsssLs=187,
      sssssLsssssL=491,
      ssssssLsssss=893
    }
  },
  [5]={
    [1]={
      [2]={MLMLsMLMLMLs=355},
      [3]={LMLMLMLLLsLL=633},
      [4]={LLLLLLLLLsMs=791},
      LsssLsssLsss=439
    },
    [2]={
      LLLsLLLLLsLL=878,
      LssLsLsLssLs=19,
      LsssLsssLsss=488,
      sLLsLsLLsLsL=364,
      sLLsLsLsLLsL=673,
      sLsLssLsLsLs=1216,
      ssLsLsLssLsL=938
    },
    [3]={
      [4]={
        LMLsLMLLsLML=2,
        ssLsssMssLss=813
      },
      LLLsLLLLLLLL=1087,
      LLLsLLLLLsLL=878,
      LsLsLsLsLsLs=462,
      LssLsLsLssLs=27,
      sLLLsLLLsLLL=191,
      sLLsLsLsLLsL=692,
      sLssLsLssLsL=1104,
      ssLssLssLssL=278,
      ssLsssLsssLs=179,
      sssssLsssssL=491
    },
    [4]={
      LLLsLLLLLLLL=1087,
      LLLsLLLLLsLL=283,
      LLLsLLLLsLLL=2,
      LLsLLsLLsLLs=313,
      LsLsLLsLsLsL=1101,
      LsLsLsLLsLsL=386,
      LsLsLsLsLsLs=462,
      LssLsLsLssLs=655,
      sLLLsLLLsLLL=191,
      sLLsLLsLLsLL=209,
      sLLsLsLsLLsL=678,
      sLssLsLssLsL=1105,
      ssLssLssLssL=278,
      ssLsssLsssLs=187,
      sssssLsssssL=491,
      ssssssLsssss=893
    }
  },
  [6]={
    [1]={LLLsLLLLLsLL=1121},
    [3]={
      [4]={LMLsLMLLsLML=2},
      [5]={LMLsLMLLsLML=2}
    },
    [4]={
      [5]={LMLsLMLLsLML=2}
    },
    [5]={
      LLLsLLLLLLLL=1087,
      LLLsLLLLLsLL=283,
      LLsLLsLLsLLs=313,
      LssLsLsLssLs=660,
      sLLLsLLLsLLL=191,
      sLLsLLsLLsLL=209,
      sLLsLsLsLLsL=686,
      sssssLsssssL=491,
      ssssssLsssss=893
    }
  },
  [7]={
    [1]={
      LLLsLLLLLsLL=1121,
      sssssLsssssL=552
    },
    [2]={
      [5]={LLLLLLLLLsMs=791},
      LLLsLLLLLsLL=881,
      sLsLssLsLsLs=1216,
      sLssLsLssLsL=1213,
      sLssLssLssLs=212
    },
    [3]={
      [5]={sMMsMsMMssLs=1309},
      LLLsLLLLLsLL=878,
      LsssLsssLsss=488,
      sLLsLsLLsLsL=364,
      sLLsLsLsLLsL=702,
      sLsLssLsLsLs=1216,
      ssLsssLsssLs=179
    },
    [4]={
      [5]={
        LMLsLMLLsLML=2,
        LMsLLMLLsMLL=1158,
        MLsLLMLLsMLL=463
      },
      [6]={LMLsLMLLsLML=2},
      LLLsLLLLLsLL=878,
      LssLsLsLssLs=24,
      sLLsLsLsLLsL=691,
      ssLsssLsssLs=179
    },
    [5]={
      [6]={LMLsLMLLsLML=2},
      LLLsLLLLLLLL=1087,
      LLLsLLLLLsLL=283,
      LsLsLsLsLsLs=462,
      LssLsLsLssLs=14,
      sLLLsLLLsLLL=191,
      sLLsLsLsLLsL=677,
      sLssLsLssLsL=1105,
      ssLsssLsssLs=179,
      sssssLsssssL=491
    },
    [6]={
      LLLsLLLLLLLL=1087,
      LLLsLLLLLsLL=880,
      LssLsLsLssLs=668,
      sLLLsLLLsLLL=191,
      sLLsLLsLLsLL=209,
      sLLsLsLsLLsL=679,
      sssssLsssssL=491,
      ssssssLsssss=893
    }
  },
  [8]={
    [1]={LLLsLLLLLsLL=1121},
    [3]={
      LssLsLsLssLs=36,
      sLLsLsLLsLsL=364,
      sLLsLsLsLLsL=689,
      sLsLssLsLsLs=1216,
      ssLsLsLssLsL=938
    },
    [5]={
      [6]={LMLsLMLLsLML=2},
      [7]={LMLsLMLLsLML=2},
      LLLsLLLLLLLL=1087,
      LLLsLLLLLsLL=878,
      LsLsLsLsLsLs=462,
      LssLsLsLssLs=30,
      sLLsLsLsLLsL=693,
      sLssLsLssLsL=1104,
      ssLsssLsssLs=179,
      sssssLsssssL=491
    },
    [6]={
      [7]={LMLsLMLLsLML=2}
    },
    [7]={
      LLLsLLLLLLLL=1087,
      LssLsLsLssLs=652,
      sLLsLsLsLLsL=663,
      ssLsssLsssLs=796,
      sssssLsssssL=491,
      ssssssLsssss=382
    }
  },
  [9]={
    [2]={
      [7]={LLLLLLLLLsMs=791}
    },
    [4]={
      LLLsLLLLLsLL=878,
      LsssLsssLsss=488,
      sLLsLsLLsLsL=364,
      sLsLssLsLsLs=1216
    },
    [5]={
      [7]={LMLsLMLLsLML=2},
      LLLsLLLLLsLL=878,
      LssLsLsLssLs=23,
      sLLsLsLsLLsL=676,
      ssLsssLsssLs=179
    },
    [6]={
      [7]={LMLsLMLLsLML=2},
      [8]={LMLsLMLLsLML=2}
    },
    [7]={
      LLLsLLLLLLLL=1087,
      LLLsLLLLLsLL=283,
      LssLsLsLssLs=9,
      sLLsLsLsLLsL=695,
      sLssLsLssLsL=1105,
      ssLsssLsssLs=187,
      sssssLsssssL=491,
      ssssssLsssss=893
    },
    [8]={
      LLLsLLLLLLLL=1087,
      LsLLLLLsLLLL=211,
      LssLsLsLssLs=650,
      sLLsLsLsLLsL=680,
      ssLsssLsssLs=796,
      ssssssLsssss=382
    }
  },
  [10]={
    [3]={
      [7]={LLLLLLLLLsMs=791},
      sLssLsLssLsL=1213
    },
    [6]={
      [9]={LMLsLMLLsLML=2}
    },
    [7]={
      [8]={LMLsLMLLsLML=2},
      [9]={LMLsLMLLsLML=2},
      LLLsLLLLLsLL=283,
      LsLsLsLsLsLs=462,
      LssLsLsLssLs=12,
      sLLsLsLsLLsL=675,
      ssLsssLsssLs=187,
      sssssLsssssL=491
    },
    [9]={
      LLLsLLLLLLLL=1087,
      LsLLLLLsLLLL=211,
      LssLsLsLssLs=649,
      sLLsLsLsLLsL=681,
      ssLsssLsssLs=796
    }
  },
  [11]={
    [2]={LsssLsssLsss=439},
    [3]={
      [8]={LLLLLLLLLsMs=791},
      sLLsLsLsLLsL=688,
      sLssLsLssLsL=1213,
      sLssLssLssLs=212
    },
    [4]={
      [6]={MsMsLMsMsMsL=137},
      sLsLssLsLsLs=1216,
      ssLsLsLssLsL=938
    },
    [5]={
      LLLsLLLLLsLL=878,
      LsssLsssLsss=488
    },
    [6]={
      [9]={LMLsLMLLsLML=2},
      LLLsLLLLLsLL=878,
      LssLsLsLssLs=32,
      sLLsLsLsLLsL=683
    },
    [7]={
      [10]={LMLsLMLLsLML=2},
      [9]={LMLsLMLLsLML=2},
      LssLsLsLssLs=31,
      sLLsLsLsLLsL=701,
      ssLsssLsssLs=179
    },
    [8]={
      LLLsLLLLLsLL=283,
      LsLsLsLsLsLs=462,
      LssLsLsLssLs=16,
      sLLsLsLsLLsL=684
    },
    [9]={
      LssLsLsLssLs=666,
      sLLsLsLsLLsL=661,
      sLssLsLssLsL=1105,
      sssssLsssssL=491
    },
    [10]={
      LsLLLLLsLLLL=211,
      LssLsLsLssLs=647,
      sLLsLsLsLLsL=664
    }
  },
  [12]={
    [5]={sLLsLsLsLLsL=700},
    [7]={
      [10]={LMLsLMLLsLML=2},
      [9]={LMLsLMLLsLML=2},
      LssLsLsLssLs=25,
      sLLsLsLsLLsL=674
    },
    [11]={
      LLsLLsLLsLLs=1280,
      LssLsLsLssLs=646,
      sLLsLsLsLLsL=665
    }
  },
  [13]={
    [2]={LLLsLLLLLsLL=1121},
    [3]={
      [10]={LLLLLLLLLsMs=791}
    },
    [4]={sLssLsLssLsL=1213},
    [5]={sLLsLsLsLLsL=699},
    [6]={LsssLsssLsss=488},
    [7]={
      [10]={LMLsLMLLsLML=2},
      LLLsLLLLLsLL=878,
      LssLsLsLssLs=29,
      sLLsLsLsLLsL=690
    },
    [8]={
      [10]={LMLsLMLLsLML=2},
      [11]={LMLsLMLLsLML=2},
      LssLsLsLssLs=6,
      sLLsLsLsLLsL=404
    },
    [9]={
      LssLsLsLssLs=11,
      sLLsLsLsLLsL=694
    },
    [10]={
      LssLsLsLssLs=26,
      sLLsLsLsLLsL=685,
      sLssLsLssLsL=1105
    },
    [11]={
      LssLsLsLssLs=656,
      sLLsLLsLLsLL=209,
      sLLsLsLsLLsL=671
    },
    [12]={
      LLsLLsLLsLLs=1280,
      LssLsLsLssLs=1335,
      sLLsLsLsLLsL=667
    }
  },
  [14]={
    [8]={
      [11]={LMLsLMLLsLML=2}
    },
    [9]={
      [11]={LMLsLMLLsLML=2},
      [12]={LMLsLMLLsLML=2},
      LssLsLsLssLs=1330,
      sLLsLsLsLLsL=669
    },
    [11]={
      LssLsLsLssLs=15,
      sLLsLsLsLLsL=670
    },
    [13]={
      LssLsLsLssLs=644,
      sLLsLsLsLLsL=682
    }
  },
  [15]={
    [4]={
      sLLsLsLsLLsL=648,
      sLssLsLssLsL=1213
    },
    [7]={LssLsLsLssLs=35},
    [8]={sLLsLsLsLLsL=697},
    [9]={
      [13]={LMLsLMLLsLML=2}
    },
    [10]={
      [12]={LMLsLMLLsLML=2},
      [13]={LMLsLMLLsLML=2}
    },
    [11]={
      LssLsLsLssLs=18,
      sLLsLsLsLLsL=698,
      sLssLsLssLsL=1105
    },
    [13]={LssLsLsLssLs=653},
    [14]={
      sLLsLsLsLLsL=672,
      ssLsssLsssLs=1236
    }
  },
  [16]={
    [3]={LsssLsssLsss=439},
    [10]={
      [13]={LMLsLMLLsLML=2}
    },
    [11]={
      [14]={LMLsLMLLsLML=2}
    },
    [13]={
      LssLsLsLssLs=642,
      sLLsLsLsLLsL=703,
      sLssLsLssLsL=1105
    },
    [15]={ssLsssLsssLs=1236}
  },
  [17]={
    [5]={
      [12]={LLLLLLLLLsMs=791}
    },
    [10]={
      [14]={LMLsLMLLsLML=2},
      LssLsLsLssLs=1331
    },
    [11]={
      [14]={LMLsLMLLsLML=2},
      sLLsLsLsLLsL=658
    },
    [12]={LssLsLsLssLs=13},
    [13]={LssLsLsLssLs=22},
    [14]={
      LssLsLsLssLs=662,
      sssssLsssssL=491
    },
    [15]={LssLsLsLssLs=651},
    [16]={
      LLsLLsLLsLLs=1280,
      LssLsLsLssLs=643
    }
  },
  [18]={
    [5]={sLssLssLssLs=212},
    [11]={
      [14]={LMLsLMLLsLML=2}
    }
  },
  [19]={
    [7]={ssLsLsLssLsL=938},
    [8]={LssLsLsLssLs=1082},
    [11]={
      [14]={MLsLLMLLsMLL=463},
      [15]={LMLsLMLLsLML=2}
    },
    [12]={
      [15]={LMLsLMLLsLML=2},
      [16]={LMLsLMLLsLML=2}
    },
    [15]={LssLsLsLssLs=21}
  },
  [20]={
    [11]={LssLsLsLssLs=23},
    [13]={sLsLsLLsLsLL=657}
  },
  [21]={
    [13]={LsLsLssLsLss=5}
  },
  [29]={
    [8]={sLssLssLssLs=212}
  }
},
[13]={
  [2]={
    [1]={
      LLLLLsLLLLLLs=148,
      LLsLLLsLLsLLs=853,
      LsLsLsLsLsLss=608,
      LsLsLsLssLsLs=396,
      LsLssLsLssLss=1122,
      LsssssLssssss=1254,
      sLLLLLLsLLLLL=1327,
      sLLLLLsLLLLLL=372,
      sLLsLLsLLsLLL=872,
      sLsLsLssLsLsL=1282,
      sLsLssLssLsLs=1304,
      sLssssssLssss=917
    }
  },
  [3]={
    [1]={
      LsLsLsLsLsLss=452,
      LsssLsssLssss=571,
      sLLsLLsLLsLLL=872,
      sLsLsLsLLsLsL=1246,
      ssLsssLssssLs=809,
      sssLssLssLssL=1195
    },
    [2]={
      LLLLLsLLLLLLs=892,
      LLsLLLsLLLsLL=406,
      LsLsLsLssLsLs=396,
      LsLssLsLssLss=1122,
      LssLssLssLsss=553,
      LsssssLssssss=1254,
      sLLLLLsLLLLLL=371,
      sLsLsLsLLsLsL=222,
      sssLsssLsssLs=1133
    }
  },
  [4]={
    [1]={
      LsLLsLLsLLLsL=534,
      LsLsLsLsLsLss=451,
      LsLssLsLssLss=533,
      LsssLsssLssss=571,
      sLsLsLsLLsLsL=1246
    },
    [3]={
      LLLLLsLLLLLLs=892,
      LsLsLsLssLsLs=396,
      LsLssLsLssLss=1122,
      LssssLsssLsss=201,
      sLsLsLsLLsLsL=222
    }
  },
  [5]={
    [1]={
      [3]={MsMsLsMsMsLsM=1232},
      LsLLsLLsLLLsL=534,
      LsLsLsLsLsLss=1094,
      LsLssLsLssLss=533,
      LsssLsssLssss=571,
      sLsLsLsLLsLsL=1246
    },
    [2]={
      LsLsLsLsLsLss=1177,
      LsssLsssLssss=571,
      LsssssLssssss=517,
      sLLsLLsLLsLLL=872,
      ssLssLssLsssL=1195,
      ssLsssLssssLs=809
    },
    [3]={
      LLLLLsLLLLLLs=892,
      LsLsLsLssLsLs=396,
      LsLssLsLssLss=1122,
      LssLssLssLsss=1076,
      LsssssLssssss=1254,
      sLLLLLsLLLLLL=371
    },
    [4]={LsLssLsLssLss=1122}
  },
  [6]={
    [1]={LsLLsLLsLLLsL=534}
  },
  [7]={
    [1]={
      LsssLsssLssss=1310,
      sLsLsLsLLsLsL=1246
    },
    [2]={
      LsLsLsLsLsLss=450,
      LsssLsssLssss=571,
      sLsLsLsLLsLsL=1246
    },
    [3]={
      LsLsLsLsLsLss=1177,
      LsssssLssssss=517,
      sLLsLLsLLsLLL=872
    },
    [4]={
      LsLssLsLssLss=1122,
      LsssssLssssss=1254
    },
    [5]={
      LLLLLsLLLLLLs=892,
      LLsLLLsLLLsLL=406,
      LsLssLsLssLss=1122,
      sLsLsLsLLsLsL=222
    }
  },
  [8]={
    [1]={LsssLsssLssss=1310},
    [3]={
      LsLsLsLsLsLss=1177,
      sLLsLLsLLsLLL=872,
      ssLssLssLsssL=1195,
      ssLsssLssssLs=809
    },
    [5]={
      LsLssLsLssLss=1122,
      LssLssLssLsss=1076,
      LsssssLssssss=1254,
      sLLLLLsLLLLLL=371
    }
  },
  [9]={
    [2]={
      LsLsLsLsLsLss=450,
      LsLssLsLssLss=533,
      sLsLsLsLLsLsL=1246
    },
    [4]={
      LsLsLsLsLsLss=1177,
      LsssssLssssss=517
    },
    [5]={
      LsssssLssssss=1254,
      sLsLsLssLsLsL=1282
    }
  },
  [10]={
    [3]={
      LssLsLsLsLsLs=537,
      LsssLsssLssss=571,
      sLsLsLsLLsLsL=1246
    },
    [7]={LLsLLLsLLLsLL=406}
  },
  [11]={
    [2]={LsLLsLLsLLLsL=534},
    [3]={
      LsLsLsLsLsLss=450,
      LsssLsssLssss=571
    },
    [4]={
      LssLsLsLsLsLs=1177,
      sLLsLLsLLsLLL=872
    },
    [5]={LsLsLsLsLsLss=1177},
    [7]={LsLssLsLssLss=1122}
  },
  [12]={
    [5]={
      LsLsLsLsLsLss=1177,
      LsssssLssssss=517
    },
    [7]={LsssssLssssss=1254}
  },
  [13]={
    [3]={
      LsLsLsLsLsLss=453,
      sLsLsLsLLsLsL=1246
    },
    [5]={
      LsLsLsLsLsLss=1177,
      sLLsLLsLLsLLL=872,
      ssLsssLssssLs=809
    },
    [8]={sLLsLsLLsLLsL=909}
  },
  [14]={
    [3]={sLsLsLsLLsLsL=1246}
  },
  [15]={
    [2]={LsssLsssLssss=1310},
    [4]={
      LsLsLsLsLsLss=450,
      LsssLsssLssss=571
    }
  },
  [17]={
    [5]={LsssLsssLssss=572}
  },
  [18]={
    [5]={LsssLsssLssss=571}
  },
  [22]={
    [3]={LsssLsssLssss=1310}
  },
  [23]={
    [3]={LsssLsssLssss=1310}
  },
  [25]={
    [7]={LsssLsssLssss=571}
  }
},
[14]={
  [2]={
    [1]={
      LLLLLLLLLLLLLs=855,
      LLLLLLLsLLLLLs=490,
      LLLLLLsLLLLLLs=354,
      LLLLLLsLLLLLsL=1188,
      LLLLLsLLLLLLLs=330,
      LLLsLLLLsLLLLs=523,
      LLsLLLLLsLLLLL=331,
      LLsLLLsLLsLLLs=1317,
      LLsLLsLLsLLsLs=1209,
      LLsLsLsLLsLsLs=1283,
      LsLLLLLLLsLLLL=1189,
      LsLLsLLLsLLsLL=156,
      LsLLsLsLsLLsLs=435,
      LsLsLsLsLsLsLs=1139,
      LsLssLssLssLss=400,
      LsssLssssLssss=1182,
      sLssLssLssLsLs=609,
      sssLssssssLsss=210,
      sssLssssssssss=815
    }
  },
  [3]={
    [1]={
      LLLLLLsLLLLLLs=492,
      LLsLLLsLLsLLLs=275,
      LLsLLsLLsLLsLs=1209,
      LsLLsLLLsLLsLL=156,
      LsLsLssLsLsLss=1116,
      LsLssLssLssLss=400,
      sLsLsLsLsLsLsL=1299,
      ssLssLsssLssLs=326,
      ssLsssLssLsssL=366,
      sssLssssLsssLs=234
    },
    [2]={
      LLLLLLLLLLLLLs=855,
      LLLLLLsLLLLLLs=492,
      LLsLLLsLLsLLLs=275,
      LLsLLsLLsLLsLs=1209,
      LLsLsLsLLsLsLs=1283,
      LsLLsLsLsLLsLs=435,
      LsLsLsLsLsLsLs=1139,
      LsLssLssLssLss=400,
      LsssLssssLssss=1182,
      Lsssssssssssss=205,
      sLsssLssssLsss=1128,
      sssLssssssLsss=210,
      sssLssssssssss=815
    }
  },
  [4]={
    [1]={
      LLLLLLsLLLLLLs=492,
      LLsLLsLLsLLsLs=1140,
      LsLLsLLLsLLsLL=156,
      sLsLsLsLsLsLsL=1299,
      ssLssLsssLssLs=326
    },
    [3]={
      LLLLLLLLLLLLLs=855,
      LLsLLLsLLsLLLs=275,
      LLsLLsLLsLLsLs=1209,
      LLsLsLsLLsLsLs=1283,
      LsLsLsLsLsLsLs=1139,
      LssLsssLssLsss=438,
      LsssLssssLssss=1182,
      sssLssssssLsss=210,
      sssLssssssssss=815
    }
  },
  [5]={
    [1]={
      LLLLLLsLLLLLLs=492,
      LLsLLsLLsLLsLs=1140
    },
    [2]={
      LLLLLLsLLLLLLs=492,
      LLsLLsLLsLLsLs=1209,
      LLsLsLsLLsLsLs=1283,
      LsLLsLLLsLLsLL=156,
      LsLLsLsLsLLsLs=435,
      LsLssLssLssLss=400,
      LssssssLssssss=1296,
      sLsLsLsLsLsLsL=1299,
      ssLsssLssLsssL=366,
      sssLssssLsssLs=234
    },
    [3]={
      LLLLLLLLLLLLLs=855,
      LLLLLLsLLLLLLs=492,
      LLsLLsLLsLLsLs=1209,
      LLsLsLsLLsLsLs=1283,
      LsLLsLsLsLLsLs=435,
      LsLsLsLsLsLsLs=415,
      LsLssLssLssLss=400,
      LsssLssssLssss=1182,
      sLsssLssssLsss=1128,
      sssLssssssLsss=210,
      sssLssssssssss=815
    },
    [4]={
      LLsLLsLLsLLsLs=1209,
      LsLsLsLsLsLsLs=1139,
      LssLsssLssLsss=438
    }
  },
  [6]={
    [1]={LLLLLLsLLLLLLs=492},
    [5]={LsLsLsLsLsLsLs=1139}
  },
  [7]={
    [1]={LLLLLLsLLLLLLs=492},
    [2]={
      LLLLLLsLLLLLLs=492,
      LsLLsLLLsLLsLL=156,
      LsLsLssLsLsLss=1116,
      ssLssLsssLssLs=326
    },
    [3]={
      LLLLLLsLLLLLLs=492,
      LLsLsLsLLsLsLs=1283,
      LsLLsLsLsLLsLs=435,
      LsLssLssLssLss=400,
      LssssssLssssss=1296,
      sLsLsLsLsLsLsL=1299
    },
    [4]={
      LLLLLLLLLLLLLs=855,
      LsLLsLsLsLLsLs=435,
      LsLsLsLsLsLsLs=415,
      LsLssLssLssLss=400,
      sssLssssssssss=815
    },
    [5]={
      LLLLLLLLLLLLLs=855,
      LLsLsLsLLsLsLs=1283,
      LsLsLsLsLsLsLs=1139,
      LsssLssssLssss=1182,
      Lsssssssssssss=205,
      sssLssssssLsss=210
    },
    [6]={LsLsLsLsLsLsLs=1139}
  },
  [8]={
    [3]={
      LsLLsLLLsLLsLL=156,
      sssLssssLsssLs=234
    },
    [5]={
      LLLLLLLLLLLLLs=855,
      LLLLLsLLLLLLsL=493,
      LLsLsLsLLsLsLs=1283,
      LsLLsLsLsLLsLs=435,
      LsLssLssLssLss=400,
      LsssLssssLssss=1182,
      sLsssLssssLsss=1128,
      sssLssssssLsss=210,
      sssLssssssssss=815
    }
  },
  [9]={
    [2]={
      LLLLLLsLLLLLLs=492,
      LLsLLsLLsLLsLs=1140
    },
    [4]={
      [8]={sLssLsLssLssMs=236},
      LsLLsLsLsLLsLs=435,
      LsLssLssLssLss=400,
      LssssssLssssss=1296
    },
    [5]={
      LsLLsLsLsLLsLs=435,
      sssLssssssssss=815
    },
    [7]={
      LsLsLsLsLsLsLs=1139,
      LssLsssLssLsss=438
    },
    [8]={LLLLLsLLLLLLsL=493}
  },
  [10]={
    [1]={sLsLsLsLsLsLsL=140},
    [3]={
      LsLsLssLsLsLss=1116,
      ssLssLsssLssLs=326
    },
    [7]={
      LsssLssssLssss=1182,
      Lsssssssssssss=205
    }
  },
  [11]={
    [1]={sLsLsLsLsLsLsL=140},
    [4]={
      LsLLsLLLsLLsLL=156,
      ssLsssLssLsssL=366
    },
    [5]={LsLLsLsLsLLsLs=435},
    [6]={LsLLsLsLsLLsLs=435},
    [7]={
      LLLLLLLLLLLLLs=806,
      LsssLssssLssss=1182,
      sLsssLssssLsss=1128,
      sssLssssssssss=815
    }
  },
  [12]={
    [5]={
      LsLssLssLssLss=400,
      LssssssLssssss=1296
    },
    [7]={sssLssssssssss=815}
  },
  [13]={
    [4]={LsLsLssLsLsLss=1116},
    [8]={
      LLLLLLLLLLLLLs=855,
      sLsssLssssLsss=1128
    },
    [9]={
      LLLLLsLLLLLLsL=493,
      Lsssssssssssss=205
    },
    [10]={LssLsssLssLsss=438}
  },
  [14]={
    [3]={LLLLLLsLLLLLLs=492},
    [5]={ssLsssLssLsssL=366},
    [9]={
      sLsssLssssLsss=1128,
      sssLssssssssss=815
    }
  },
  [17]={
    [5]={ssLssLsssLssLs=326},
    [7]={LssssssLssssss=1296},
    [10]={
      [15]={LsMsLMMLsMsLMM=1120}
    }
  },
  [22]={
    [9]={LssssssLssssss=1296}
  }
},
[15]={
  [2]={
    [1]={
      LLLsLLLLsLLLLsL=180,
      LLsLsLsLsLsLsLs=413,
      LsLLsLLsLLsLLsL=220,
      LsLssLsLsLsLsLs=915,
      sLLLLLLLLLLLLLL=206,
      sLLLLLLsLLLLLLL=1256,
      sLLLsLLLsLLLsLL=1201,
      sLsLLsLsLLsLsLL=1264,
      sLsLssLsLssLsLs=184,
      sssLsssLsssLssL=526
    }
  },
  [3]={
    [1]={
      LLsLLLLsLLLLsLL=188,
      LLsLsLsLsLsLsLs=413,
      LsLLsLLsLLsLLsL=214
    },
    [2]={
      LLLsLLLLsLLLLsL=180,
      LsLLsLLsLLsLLsL=214,
      LsLssLsLsLsLsLs=915,
      LssLsLssLsLssLs=1237,
      sLLLLLLsLLLLLLL=1255,
      sLLLsLLLsLLLsLL=1201,
      sLLsLLsLLsLLsLL=170,
      sLsLLsLsLLsLsLL=1264,
      sLsLssLsLssLsLs=184,
      sLssssLssssLsss=489,
      sLsssssssLsssss=918,
      sssLsssLsssLssL=526,
      sssssssssssLsss=1243
    }
  },
  [4]={
    [1]={
      LLsLLLLsLLLLsLL=188,
      sLsLssLsLssLsLs=1240,
      ssLsssLsssLssLs=811
    },
    [3]={
      LLLsLLLLsLLLLsL=180,
      LsLLsLLsLLsLLsL=220,
      sLLLLLLsLLLLLLL=1255,
      sLLLsLLLsLLLsLL=1201,
      sLLsLLsLLsLLsLL=170,
      sLsLLsLsLLsLsLL=1264,
      sLsLsLsLsLsLsLL=441,
      sLssssLssssLsss=489,
      sLsssssssLsssss=918,
      ssLssLssLssLssL=1269,
      sssLssssLssssLs=180,
      sssssssssssLsss=1288
    }
  },
  [5]={
    [1]={
      LLsLLLsLLsLLLsL=868,
      ssLsssLsssLssLs=811
    },
    [2]={
      LLLsLLLLsLLLLsL=180,
      LLsLsLsLsLsLsLs=413,
      LsLLsLLsLLsLLsL=214,
      LsLssLsLsLsLsLs=915,
      Lssssssssssssss=1157,
      sLLLLLLLLLLLLLL=206
    },
    [3]={
      LLLsLLLLsLLLLsL=180,
      LsLssLsLsLsLsLs=915,
      sLLLLLLsLLLLLLL=1255,
      sLLLsLLLsLLLsLL=1201,
      sLsLLsLsLLsLsLL=1264,
      sLsLssLsLssLsLs=184,
      ssLsLsLsLsLsLsL=867,
      sssLsssLsssLssL=526
    },
    [4]={
      LLLsLLLLsLLLLsL=180,
      sLLLLLLsLLLLLLL=1255,
      sLLsLLsLLsLLsLL=170,
      sLsLLsLsLLsLsLL=1264,
      sLsLsLsLsLsLsLL=441,
      sLssssLssssLsss=489,
      sLsssssssLsssss=918,
      ssLssLssLssLssL=1269
    }
  },
  [6]={
    [5]={
      sLLsLLsLLsLLsLL=170,
      sLsLLsLsLLsLsLL=1264,
      sLssssLssssLsss=489,
      ssLssLssLssLssL=1269
    }
  },
  [7]={
    [2]={LLsLLLLsLLLLsLL=188},
    [3]={
      LLsLLLLsLLLLsLL=188,
      LLsLsLsLsLsLsLs=413,
      LsLLsLLsLLsLLsL=214,
      sLLLLLLLLLLLLLL=206
    },
    [4]={
      LLLsLLLLsLLLLsL=180,
      LsLssLsLsLsLsLs=915,
      sLsLLsLsLLsLsLL=1264,
      sssLsssLsssLssL=526
    },
    [5]={
      LssLsLssLsLssLs=1237,
      sLLLLLLsLLLLLLL=1255,
      sLLLsLLLsLLLsLL=1201,
      sLsLLsLsLLsLsLL=1264,
      sLsssssssLsssss=918,
      ssLssLssLssLssL=1269,
      sssssssssssLsss=1288
    },
    [6]={
      LsLLsLLsLLsLLsL=220,
      sLLsLLsLLsLLsLL=170,
      sLssssLssssLsss=489,
      ssLssLssLssLssL=1269
    }
  },
  [8]={
    [3]={
      LLsLsLsLsLsLsLs=413,
      LsLLsLLsLLsLLsL=214,
      Lssssssssssssss=1157
    },
    [5]={
      LLsLsLsLsLsLsLs=413,
      sssssssssssLsss=1242
    }
  },
  [9]={
    [2]={ssLsssLsssLssLs=811},
    [4]={
      LLsLsLsLsLsLsLs=413,
      LssLsssLsssLsss=890,
      Lssssssssssssss=1157,
      sLLLLLLLLLLLLLL=206
    },
    [7]={
      sLsLsLsLsLsLsLL=441,
      ssLssLssLssLssL=1269
    }
  },
  [10]={
    [7]={
      LssLsLssLsLssLs=1237,
      sssssssssssLsss=1288
    }
  },
  [11]={
    [5]={LssLsssLsssLsss=890},
    [7]={
      sssLsssLsssLssL=526,
      sssssssssssLsss=1242
    },
    [8]={sssssssssssLsss=1288}
  },
  [12]={
    [7]={sssLsssLsssLssL=238}
  },
  [13]={
    [3]={ssLsssLsssLssLs=811},
    [5]={Lssssssssssssss=1157},
    [8]={sssLsssLsssLssL=526},
    [9]={sssssssssssLsss=1288}
  },
  [14]={
    [3]={ssLsssLsssLssLs=811},
    [9]={sssssssssssLsss=1242}
  },
  [17]={
    [4]={sLsLssLsLssLsLs=1240},
    [7]={Lssssssssssssss=1157},
    [11]={sssssssssssLsss=1242}
  },
  [18]={
    [13]={sssssssssssLsss=1288}
  },
  [19]={
    [4]={ssLsssLsssLssLs=811},
    [11]={sssLsssLsssLssL=238}
  },
  [20]={
    [13]={sssssssssssLsss=1242}
  },
  [21]={
    [5]={sLsLssLsLssLsLs=1240}
  }
}
}
return scales
