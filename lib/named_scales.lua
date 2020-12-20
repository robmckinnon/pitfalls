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
"12-tone Chromatic (1/80-comma positive)",
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
"Arabic Diatonic, Maqam Rast, Quasi-equal Heptatonic, Neutral Diatonic Phrygian",
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
"Balzano 9-tone, Score-9",
"Balzano-13",
"Beatles-10",
"Beatles-10, Dichotic-10",
"Beatles-7, Dichotic-7",
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
"Bossier-14",
"Breed Decatonic",
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
"G.Dorian, M.Phrygian, G.M.Hypoaeolian, Bhairavi That, Mela Hanumatodi, Raga Asavari (Asaveri), Bilashkhani Todi, Ghanta, Makam Kurd, Gregorian nr.3, In, Zokuso: Japan, Ousak: Greece, Major inverse",
"G.Hypolydian, M.Lydian, G.M.Hypolocrian, Rut biscale ascending, Kalyan That (Yaman), Mela Mecakalyani, Raga Chandrakant, Malarani, Shuddh Kalyan, Ping, Kung, Gu: China",
"G.Hypophrygian, G.Ionian (Iastian), M.Mixolydian, G.M.Hypoionian, Hypermixolydian, Mischung 3, Khamaj That, Mela Harikambhoji, Raga Balahamsa, Bhim, Devamanohari, Harini, Janjhuti, Kaamaai, Khambhavati, Surati, Gregorian nr.7, Enharmonic Byzantine Liturgical, Rast descending: Greece, Ching, Shang: China",
"G.Lydian, M.Ionian, M.Hypolydian, Major, Bilaval That, Mela Shankarabharanam, Raga Atana, Ghana Heptatonic, Peruvian Major, Matzore, Rast ascending: Greece, 4th plagal Byzantine, Ararai: Ethiopia, Makam Cargah, Ajam Ashiran, Dastgah-e Mahur, Dastgah-e Rast Panjgah, Xin: China, DS2, Heptatonia prima",
"G.M.Hypodorian, G.M.Aeolian, G.Hyperphrygian, Natural Minor, Melodic Minor descending, Asavari That, Mela Natabhairavi, Raga Jaunpuri, Adana, Darbari, Dhanyasi, Jingla, Gregorian nr.2, Makam Buselik, Nihavend, Peruvian Minor, Se, Chiao: China, Geez, Ezel: Ethiopia, Kiourdi descending: Greece, Cushak: Armenia",
"G.Mixolydian, G.Hyperdorian, M.Hypophrygian, M.Locrian, G.M.Hyperaeolian, Rut biscale descending, Pien chih: China, Makam Lami, Yishtabach: Jewish",
"G.Phrygian, M.Dorian, M.Hypomixolydian, Kafi That, Mela Kharaharapriya, Raga Bageshri, Bhimpalasi, Huseni, Kanara, Kapi, Nayaki Kanada, Ritigaula, Sriraga, Mischung 5, Gregorian nr.8, Eskimo Heptatonic, Yu: China, Hyojo, Oshikicho, Banshikicho: Japan, Nam: Vietnam",
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
"Hemithirds-6",
"Hemithirds-6, Roulette-6",
"Hemithirds-6, Spell-6",
"Hemithirds-7",
"Hemithirds-7, Roulette-7",
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
"Major-Minor, Melodic Major, Mischung 6, Mixolydian flat 6, Mela Carukesi, Raga Charukeshi, Tarangini, Heptatonia secunda",
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
"Maqam 'Ajam Murassah",
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
"Messiaen truncated mode 3, Hexatonic Set, Prometheus (Liszt)",
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
"Minor added sixth Pentatonic, Kyemyonjo: Korea",
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
"Neutral Dorian, Misaelides 2nd Byzantine mode, Iced Fridgian, Maqam Sikah Baladi, Maqamic-7",
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
"Patet ding",
"Patet dong",
"Patet dung",
"Pelog Degung Sejati: Sunda",
"Pelog Degung: Sunda",
"Pelog Nawanada: Sunda",
"Pelog Pancanada: Sunda",
"Pelog Saptanada: Sunda",
"Pelogic-7, Antiionian",
"Pelogic-7, Antilydian",
"Pentachordal Decatonic",
"Pentadecaphonic 'Major', Jones's Porcupine-8",
"Pentoid-9",
"Phi-12",
"Phrygian Dominant, Phrygian Major, Mela Vakulabharanam, Raga Ahiri, Basant Mukhari, Jogiya, Vativasantabhairavi, Zilof, Ahava Rabba, Freygish: Jewish, Maqam Hijaz-Nahawand, Humayun, Spanish Gipsy, Dorico Flamenco: Spain, Hitzaz: Greece, Harmonic Major inverse, Mixolydian flat 2, flat 6",
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
"Raga Bhankar, Bhatiyar, Jaikauns",
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
"Raga Suddha Simantini",
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
"Semimiracle-12",
"Semisept-13",
"Sensi-11",
"Sensi-5",
"Sensi-8",
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
"Tcherepnin Octatonic mode 1",
"Tcherepnin Octatonic mode 2",
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
"de Vries 9-tone, Semaphore-9"
}
scales.lookup={
[2]={
  [5]={
    [1]={
      Ls=1271,
      sL=1267
    }
  },
  [7]={
    [5]={
      Ls=836,
      sL=454
    }
  },
  [10]={
    [2]={
      Ls=1271,
      sL=1267
    }
  }
},
[3]={
  [5]={
    [2]={
      LLs=1080,
      LsL=1037
    },
    [3]={
      [4]={
        MLs=934,
        MsL=998,
        sML=1260
      }
    }
  },
  [6]={
    [1]={
      [5]={LsM=1018}
    }
  },
  [7]={
    [2]={
      [3]={MsL=1269}
    }
  }
},
[4]={
  [2]={
    [1]={
      LsLs=754,
      sLsL=753
    }
  },
  [4]={
    [1]={
      [3]={sLML=993}
    },
    [2]={
      [3]={
        LMMs=997,
        MLMs=204,
        sMLM=931,
        sMML=960
      },
      LsLs=754,
      sLsL=753
    }
  },
  [5]={
    [1]={
      LsLs=752,
      sLsL=751
    },
    [2]={
      [3]={
        LsMs=383,
        MssL=1268,
        sMsL=382,
        ssML=349
      }
    },
    [4]={LsLL=360}
  },
  [7]={
    [1]={
      [2]={MsLM=1272}
    }
  },
  [10]={
    [1]={LLLs=384}
  },
  [11]={
    [8]={LLLs=562}
  },
  [13]={
    [5]={
      [8]={sMsL=382}
    },
    [6]={Lsss=376}
  }
},
[5]={
  [2]={
    [1]={
      LLsLs=352,
      LsLLL=838,
      LsLLs=145,
      LsLss=1226,
      LssLs=1228,
      sLsLs=1225,
      sLssL=1227,
      ssLsL=1224
    }
  },
  [3]={
    [1]={
      [2]={
        LLsLM=1034,
        LMLLs=940,
        LsLML=1007,
        LsLMs=1150,
        LsMLs=884,
        MLLLs=942,
        MLsLM=1198,
        sLLLM=1001,
        sLLML=946
      },
      LLLLs=540,
      LsLss=136,
      LssLs=886,
      sLsLL=1107,
      sLsLs=1203
    },
    [2]={
      LLsLL=1098,
      LLsLs=214,
      LLsss=959,
      LsLsL=138,
      LsLss=224,
      LssLs=769,
      LsssL=771,
      sLLLL=392,
      sLLss=233,
      sLsLs=1196,
      sLssL=1094,
      sLsss=552,
      ssLLs=309,
      ssLsL=565,
      sssLL=519
    }
  },
  [4]={
    [1]={
      [2]={
        LMsLs=548,
        LMsML=256,
        LsLMs=933,
        LsLsM=980,
        LsMLs=487,
        LsMsL=1058,
        MLsLs=1050,
        MsLsL=142,
        sLMLs=952,
        sLMsL=452,
        sLsLM=494,
        sMLsL=896
      },
      [3]={
        LsMMs=954,
        LsMsL=1203,
        MMsLs=1010,
        sLMMs=983,
        sMMsL=1032,
        sMsML=1004
      }
    },
    [3]={
      LLLLs=118,
      LLsLL=920,
      LLsLs=352,
      LssLs=46,
      sLLLL=392,
      sLsLs=48,
      ssLsL=44,
      ssLss=399
    }
  },
  [5]={
    [1]={
      [2]={
        LMMMs=1023,
        LMMsM=986,
        MLMsM=1003,
        MMLMs=1016,
        MMMLs=985,
        MMsML=936,
        MsMML=1022
      },
      [4]={
        sLssM=1038,
        ssMsL=1011
      }
    },
    [2]={
      [3]={sLMsL=590},
      LLLLs=858,
      LsLss=879,
      LssLs=621,
      sLsLL=1103,
      sLsLs=881,
      sLssL=882,
      ssLsL=880
    },
    [3]={
      LLsLL=1098,
      LLsLs=352,
      LssLs=58,
      sLsLs=62,
      sLsss=552,
      ssLsL=55
    },
    [4]={
      LLsLL=920,
      LssLs=1114,
      sLLLL=392,
      ssLss=917
    }
  },
  [6]={
    [1]={
      [3]={
        LsLMs=1149,
        LsMLs=883,
        sLsMs=945,
        sMsLs=1005,
        ssLMs=984,
        ssLsM=1025
      }
    },
    [5]={
      LLsLL=920,
      LssLs=1114,
      sLLLL=473,
      ssLss=919
    }
  },
  [7]={
    [2]={
      LLLLs=540,
      LsLss=1090
    },
    [3]={
      [4]={sLMsL=1155},
      LLLLs=858,
      LssLs=620
    },
    [5]={
      [6]={
        LMsLM=1113,
        MLsLM=1130,
        MLsML=1131
      },
      sLLLL=392
    },
    [6]={
      LLsLL=916,
      LssLs=1113,
      Lssss=1282,
      sLLLL=473,
      sLsss=1132,
      ssLss=919,
      sssLs=1128
    }
  },
  [8]={
    [1]={sLssL=528},
    [3]={
      LssLs=620,
      sLsLL=690
    },
    [7]={
      LLsLL=916,
      Lssss=1282,
      sLLLL=473,
      ssLss=916,
      sssLs=1128
    }
  },
  [9]={
    [2]={LssLs=1302},
    [4]={
      LLLLs=407,
      LssLs=620
    },
    [7]={
      LssLs=1193,
      sLLLL=392
    },
    [8]={
      ssLss=916,
      sssLs=1070
    }
  },
  [10]={
    [5]={
      [6]={sLMsL=799}
    },
    [9]={sssLs=1070}
  },
  [11]={
    [5]={LLLLs=407},
    [8]={sLLLL=392},
    [9]={LssLs=1193}
  },
  [12]={
    [5]={LLLLs=858}
  },
  [13]={
    [4]={
      [5]={MsLML=1195}
    },
    [10]={
      LssLs=1193,
      sLLLL=392
    },
    [11]={
      sLLLL=473,
      ssLss=919
    }
  },
  [15]={
    [2]={sLssL=528},
    [11]={sLLLL=392},
    [13]={ssLss=918}
  },
  [16]={
    [15]={LLsLs=218}
  },
  [17]={
    [7]={LLLLs=858},
    [13]={sLLLL=392},
    [15]={sssLs=1128},
    [16]={LLsLs=218}
  },
  [18]={
    [13]={sLLLL=392}
  },
  [19]={
    [17]={sssLs=1070}
  },
  [23]={
    [3]={sLssL=528}
  },
  [26]={
    [23]={sssLs=1070}
  },
  [28]={
    [25]={sssLs=1070}
  }
},
[6]={
  [0]={
    [1]={ssssss=1274},
    [2]={ssssss=1274}
  },
  [2]={
    [1]={
      LLLLsL=1087,
      LLsLLL=553,
      LsLLsL=526,
      LsLsLs=190,
      sLLsLL=267
    }
  },
  [3]={
    [1]={
      [2]={
        LLsMsM=994,
        LMMMsM=968,
        LMMsLs=1048,
        LMMsML=273,
        LMMsMM=895,
        LMssLM=226,
        LsMMsL=343,
        LssMLM=930,
        MLMLss=935,
        MLMMMs=943,
        MLMMsM=782,
        MLMsLs=932,
        MLMsMM=1014,
        MMLMMs=546,
        MMLMsM=967,
        MMLsLs=992,
        MMMLMs=1008,
        MMMLsM=905,
        MMMMLs=348,
        MMMsML=1057,
        MMsLLs=1035,
        MMsMLM=1043,
        MMsMML=169,
        MMssLL=1029,
        MsLLMs=1028,
        MsLMLs=1205,
        MsLMMM=1206,
        MsLMsL=1015,
        MsLsLM=1041,
        MsLsML=1052,
        MsMLLs=953,
        MsMMLM=766,
        MsMMML=1045,
        MsMsLL=911,
        sLLMMs=1000,
        sLLMsM=999,
        sLMLMs=957,
        sLMLsM=906,
        sLMMsL=962,
        sLMsLM=748,
        sLsLMM=1051,
        sLsMML=974,
        sMLMLs=955,
        sMLMMM=931,
        sMLsML=747,
        sMMLLs=1055,
        sMMLMM=532,
        sMMMLM=950,
        sMMsLL=318
      },
      LLsLLL=400,
      LLsLLs=270,
      LLsLss=970,
      LsLsLs=750,
      sLLsLs=928,
      sLLssL=973,
      sLsLLs=989,
      sLsLsL=749,
      ssLLsL=1046,
      ssLsLL=1086
    },
    [2]={
      LLsLLL=553,
      LsLLsL=176,
      LsLsLs=1241,
      LssLss=1258,
      sLLsLL=267,
      sLsLsL=183,
      sLssLs=914,
      sssLss=388
    }
  },
  [4]={
    [1]={
      [2]={
        LMsMsM=1056,
        LMssMM=972,
        LsMMMs=958,
        LsMMsM=981,
        LsMsMM=975,
        MLsMMs=1017,
        MLsMsM=1036,
        MLssMM=966,
        MMMsLs=937,
        MMsLMs=956,
        MMsLsM=1027,
        MMsMLs=1012,
        MsLMMs=423,
        MsLMsM=982,
        MsLsMM=1049,
        MsMLsM=925,
        MsMMLs=995,
        MsMMsL=922,
        sLMMMs=969,
        sLMMsM=1030,
        sLMsMM=1021,
        sMLMsM=1033,
        sMLsMM=978,
        sMMMsL=1047,
        sMMsLM=453,
        sMsMLM=1180
      },
      LLsLLL=400,
      LLsLLs=205,
      LsLsLs=213,
      LssLss=742,
      ssLsLs=1053,
      ssLssL=741
    },
    [2]={
      [3]={MMsLsM=1125}
    },
    [3]={
      LsLLsL=1,
      LsLsLs=914,
      LssLLL=421,
      sLsLsL=183,
      sssssL=1287
    }
  },
  [5]={
    [1]={
      [2]={
        LMMsss=977,
        MMsssL=948,
        sMsMsL=493
      },
      [3]={sLssMs=939}
    },
    [2]={LsLsLs=190},
    [3]={
      LLsLLL=553,
      LsLLsL=526,
      LssLss=427,
      sLLsLL=267
    },
    [4]={
      LsLLsL=158,
      LsLsLs=914,
      sssssL=446
    }
  },
  [6]={
    [1]={
      [3]={LMsMLM=66},
      LLLLsL=1129,
      LLLsLL=381
    },
    [4]={
      [5]={sLMLsL=386}
    },
    [5]={sssssL=445}
  },
  [7]={
    [1]={LLLLsL=1129},
    [2]={
      LLsLLL=400,
      LsLsLs=179
    },
    [4]={
      LLsLLL=553,
      LsLLsL=526
    },
    [5]={
      LsLLsL=175,
      LsLsLs=1215,
      sLsLsL=183
    },
    [6]={sssssL=1075}
  },
  [8]={
    [5]={
      LLsLLL=553,
      LsLLsL=526
    },
    [7]={LsLLLL=193}
  },
  [9]={
    [4]={sLLsLL=267},
    [5]={LLsLLL=553},
    [7]={LsLLsL=175},
    [8]={ssLLss=1209}
  },
  [10]={
    [3]={
      [5]={LsMMMs=385},
      LLsLLL=400,
      LsLsLs=187
    },
    [7]={LsLLsL=175}
  },
  [11]={
    [3]={LLsLLL=400},
    [6]={LLsLLL=553},
    [7]={LsLLsL=526},
    [8]={
      LsLLsL=175,
      sLsLsL=183
    },
    [9]={sssssL=444}
  },
  [12]={
    [7]={LsLLsL=526}
  },
  [13]={
    [2]={
      [11]={MsMsLs=559}
    },
    [4]={LsLsLs=187},
    [8]={LsLLsL=526},
    [10]={LsLLsL=175},
    [11]={sssssL=444}
  },
  [14]={
    [9]={LsLLsL=526}
  },
  [15]={
    [2]={LLLLsL=1129},
    [4]={LLsLLL=400},
    [11]={LsLLsL=175}
  },
  [17]={
    [5]={LsLsLs=179},
    [10]={LsLLsL=526},
    [11]={LsLLsL=526},
    [12]={LsLsLs=1214},
    [14]={sssssL=444},
    [15]={LsLLLL=193}
  },
  [18]={
    [11]={LsLLsL=526}
  },
  [19]={
    [11]={LsLLsL=526},
    [12]={LsLLsL=526},
    [16]={sssssL=444}
  },
  [21]={
    [13]={LsLLsL=526}
  },
  [23]={
    [7]={LsLsLs=187},
    [19]={sssssL=444}
  },
  [24]={
    [7]={LsLsLs=187}
  },
  [25]={
    [22]={LsLLLL=193}
  },
  [32]={
    [25]={
      [28]={MsMsML=425}
    }
  }
},
[7]={
  [2]={
    [1]={
      LLLLLLs=1077,
      LLLLLsL=505,
      LLLLLss=521,
      LLLLsLL=390,
      LLLLsLs=543,
      LLLsLLL=457,
      LLLsLLs=368,
      LLLsLsL=545,
      LLLssLL=547,
      LLsLLLL=861,
      LLsLLLs=370,
      LLsLLsL=369,
      LLsLsLL=570,
      LLssLLL=564,
      LsLLLLL=1207,
      LsLLLLs=736,
      LsLLLsL=373,
      LsLLsLL=371,
      LsLsLLL=767,
      LsLsLsL=1178,
      LssLLss=908,
      LssLsLs=1118,
      sLLLLLL=1297,
      sLLLLLs=802,
      sLLLLsL=713,
      sLLLsLL=367,
      sLLsLLL=372,
      sLLsLsL=855,
      sLsLLLL=1181,
      sLssLss=887,
      ssLLLLL=522,
      ssLsssL=907
    }
  },
  [3]={
    [1]={
      [2]={
        LLMMLLs=1095,
        LMLsLML=1093,
        LMsLMLs=37,
        LMsLsML=344,
        LMssLss=244,
        LMssMsM=223,
        LsLLLMM=149,
        LsLMMLM=417,
        LsLMsss=965,
        LsMLMLs=40,
        LsMLsLM=38,
        LsMMsMs=144,
        LsMsLss=719,
        LsMsMMs=141,
        LsMsMsM=459,
        LsMssLs=695,
        LsMssMM=707,
        LsMsssL=725,
        LssLMss=248,
        LssLssM=240,
        LssMLss=693,
        LssMMMs=726,
        LssMMsM=731,
        LssMsLs=699,
        LssMsMM=717,
        LssMssL=735,
        MLMMLsL=418,
        MLMMsss=1044,
        MLMsMLM=456,
        MLsMLsM=1255,
        MLsMsMs=837,
        MLssLss=247,
        MLssMMs=938,
        MMMsLss=694,
        MMMssLs=415,
        MMMsssL=708,
        MMsLsMM=300,
        MMsLsMs=486,
        MMsMLss=711,
        MMsMsLs=416,
        MMsMssL=710,
        MMssLsM=764,
        MsLsLss=715,
        MsLsMMs=544,
        MsLsMsM=703,
        MsLssLs=317,
        MsLssMM=765,
        MsLsssL=729,
        MsMMLss=733,
        MsMMsLs=420,
        MsMMssL=706,
        MsMsLMs=497,
        MsMsLsM=312,
        MsMsMLs=535,
        MsMsMsL=790,
        MsMssLM=784,
        MssLsMM=1078,
        MssLssL=241,
        MssssLL=265,
        sLLMsLL=401,
        sLMMMss=1265,
        sLMsLss=734,
        sLMsMLs=898,
        sLMsMMs=618,
        sLMsMsM=1072,
        sLMssLs=242,
        sLMssMM=712,
        sLMsssL=696,
        sLsLMss=1266,
        sLsMLss=702,
        sLsMMMs=727,
        sLsMMsM=419,
        sLsMsLs=315,
        sLsMsMM=894,
        sLsMssL=701,
        sLssLMs=245,
        sLssLsM=856,
        sLssMLs=988,
        sMLMsML=1187,
        sMLsLss=697,
        sMLsMMs=728,
        sMLsMsM=722,
        sMLssLs=1236,
        sMLssMM=692,
        sMLsssL=700,
        sMMMLss=721,
        sMMMsLs=804,
        sMMMssL=724,
        sMMsLsM=534,
        sMMsMsL=533,
        sMsLsMM=579,
        sMsMMsL=1253,
        ssLMLss=730,
        ssLMMMs=709,
        ssLMMsM=732,
        ssLMsLs=698,
        ssLMsMM=720,
        ssLMssL=239,
        ssLssLM=246,
        ssLssML=243,
        ssMLssL=249,
        ssMMsML=1238
      },
      LLLLLLs=1154,
      LLLLsLL=389,
      LLsLLLs=43,
      LsLLLLs=45,
      LsLLLsL=1194,
      LsLLsLL=47,
      LsLsLsL=1178,
      sLsLsLL=515,
      ssLsLsL=1112
    },
    [2]={
      LLLLLLs=567,
      LLLsLLs=54,
      LLsLLLs=56,
      LLsLLsL=59,
      LsLLLLL=772,
      LsLLLLs=57,
      LsLLLsL=49,
      LsLLsLL=60,
      LsLsLss=825,
      LsLsssL=860,
      LssLLss=908,
      LssLsLs=202,
      LssLsss=159,
      LsssLss=162,
      Lssssss=900,
      sLLLsLL=61,
      sLLsLLL=53,
      sLLsLsL=303,
      sLsLsLs=820,
      sLssLss=623,
      sLsssLs=171,
      sLsssss=760,
      ssLssLs=161,
      ssLsssL=907,
      sssLssL=160,
      sssLsss=759
    }
  },
  [4]={
    [1]={
      [2]={
        LsMMsss=996,
        LsssMsM=964,
        MMsLsss=1026,
        MsssLsM=1031,
        sLsLMsL=260,
        ssLsMMs=716,
        ssLsMsM=714,
        ssLssMM=704
      },
      [3]={
        LMsLMLs=63,
        LMsssLM=225,
        LsMLsLM=64,
        sLLMsLL=401,
        sMsssLs=1024,
        ssLsMss=718,
        ssLssMs=705,
        ssLsssM=723
      },
      LLLLLLs=447,
      LLsLLLs=67,
      LsLLLsL=1194,
      LsLLsLL=69,
      LsLsLsL=848,
      sLsLsLL=514
    },
    [2]={
      [3]={
        LLMMLLs=598,
        LLMsLMs=135,
        LLsLLMM=603,
        LMMLLLs=604,
        LMMLLsL=259,
        LMMMLMs=237,
        LMMMMLs=566,
        LMMMsLM=569,
        LMsLMLs=65,
        LMsLMMM=488,
        LsLLMML=262,
        LsMLMLs=68,
        LsMLMMM=770,
        LsMLsLM=70,
        MLLsLLM=614,
        MMLLLsL=607,
        MMLLsLL=599,
        MMLsLMM=1199,
        MMMLsML=143,
        MMsMsLs=51,
        MsMMsLs=52,
        sLLLMML=608
      }
    },
    [3]={
      LLLLLLs=1223,
      LLsLLLs=75,
      LLsLsLs=1126,
      LLssLss=815,
      LsLLLLs=76,
      LsLLsLL=77,
      LsLsLss=826,
      LsLssLs=823,
      LssLLss=166,
      LssLsLs=830,
      LssLssL=756,
      Lssssss=568,
      sLLsLsL=303,
      sLLssLs=613,
      sLsLsLs=821,
      sLsLssL=828,
      sLssLLs=264,
      sLssLsL=832,
      sLssLss=623,
      sLsssLs=171,
      sLsssss=760,
      ssLLssL=601,
      ssLsLsL=834,
      ssLssLL=609,
      sssLssL=889,
      sssLsss=773
    }
  },
  [5]={
    [1]={
      [3]={
        MMsMsLs=41,
        MsMMsLs=42
      },
      [4]={
        LMMsLMs=281,
        LMsLMMs=283,
        MMsLMsL=282,
        MsLMMsL=285,
        MsLMsLM=280,
        sLMMsLM=279,
        sLMsLMM=284
      },
      LLLLLLs=448,
      LsLLLsL=1194,
      LsLsLsL=1163,
      LsLssLs=846
    },
    [2]={
      [3]={sMLMsML=1187},
      [4]={
        LMsLMLs=78,
        LsMLsLM=79,
        MMsLMMs=71,
        MsMLsMM=72,
        sLsMsLs=313
      },
      LLLLsLL=389,
      LLsLLLs=82,
      LsLLsLL=84,
      LsLsLsL=1178,
      LssLsss=1091,
      sLLsLsL=855,
      ssLsssL=888
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
      LLLLsLL=220,
      LLLsLLs=482,
      LLsLLLs=90,
      LLsLLsL=483,
      LLsLsLL=91,
      LsLLLLs=92,
      LsLLLsL=485,
      LsLLsLL=93,
      LssLsLs=202,
      LssLsss=159,
      LsssLss=162,
      sLLLsLL=481,
      sLLsLLL=484,
      sLssLss=623,
      sLsssLs=171,
      ssLssLs=161,
      ssLsssL=156,
      sssLssL=889,
      sssLsss=1201
    },
    [4]={
      LLLLLLs=1223,
      LLsLsLs=1126,
      LLssLss=815,
      LsLsLss=825,
      LsLssLs=822,
      LssLLss=818,
      LssLsLs=829,
      LssLssL=813,
      Lssssss=900,
      sLLsLsL=303,
      sLLssLs=814,
      sLsLsLs=820,
      sLsLssL=827,
      sLssLLs=816,
      sLssLsL=831,
      sLssLss=623,
      sLsssss=760,
      ssLLssL=812,
      ssLsLsL=833,
      ssLssLL=817,
      sssLssL=889,
      sssLsss=759
    }
  },
  [6]={
    [1]={
      [5]={LLsMLLs=1221},
      LLLLLLs=1076,
      LsLsLsL=797,
      LsLssLs=560
    },
    [2]={
      [3]={MMsLsLs=610},
      [5]={
        LMsMLsM=1145,
        LsMLMsM=1148,
        LsMMLsM=1220,
        MLMsMLs=1144,
        MLsMLMs=1146,
        MMsLMMs=86,
        MsLMsML=3,
        MsMLsML=1143,
        MsMLsMM=87,
        sMLMsML=1142,
        sMLsMLM=1147
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
        MsLLMsL=355,
        sLMLsLM=1082
      }
    },
    [5]={
      LLLLLLs=1223,
      LsLsLLs=153,
      LsLsLss=910,
      Lssssss=337,
      sLLsLsL=303,
      sLsssss=339,
      ssLssss=338,
      sssLsss=336,
      ssssLss=342,
      sssssLs=340,
      ssssssL=341
    }
  },
  [7]={
    [1]={
      [2]={MsLMsLM=506},
      LsLsLsL=797,
      LsLssLs=560,
      ssLsssL=529
    },
    [2]={
      [5]={sLLMsLL=401},
      [6]={
        LMMsLMs=295,
        LMsLMMs=297,
        MMsLMsL=296,
        MsLMMsL=299,
        MsLMsLM=294,
        sLMMsLM=293,
        sLMsLMM=298
      },
      LLLLLLs=1154,
      LsLLLsL=1194,
      sLsLsLL=514,
      ssLsLsL=1111
    },
    [3]={
      [5]={
        MMsMsLs=88,
        MsLssLs=316,
        MsLssMM=763,
        MsMMsLs=89,
        sLsMsLs=314,
        sMMMsLs=803
      },
      LLLLsLL=389,
      LLsLLLs=102,
      LsLLsLL=104,
      sLLsLsL=855
    },
    [4]={
      [6]={
        LMsLMLs=100,
        LsMLMLs=103,
        LsMLsLM=101,
        LsMLsML=105,
        sLsMsLs=1083
      },
      LLLLsLL=220,
      LLsLLLs=108,
      LsLLLLs=109,
      LsLLsLL=110,
      LsLsLss=1121,
      LssLsLs=302
    },
    [5]={
      LLsLLLs=111,
      LsLLsLL=112,
      LsLsLss=787,
      LssLsLs=202,
      sLLsLsL=303,
      sLsLsLs=617,
      sLssLss=622,
      sLsssLs=171,
      sLsssss=760,
      sssLsss=759
    },
    [6]={
      LsLsLLs=153,
      LsLsLss=910
    }
  },
  [8]={
    [1]={
      [4]={
        LMssLss=331,
        LssLMss=334,
        MssLssL=329,
        sLMssLs=330,
        sLssLMs=332,
        ssLMssL=328,
        ssLssLM=333
      }
    },
    [3]={
      [5]={sMLMsML=1187},
      LLLLsLL=389,
      LsLsLsL=1178,
      LssLsss=1091
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
        LMsLLMs=165,
        LMsLMsL=1062
      },
      LLsLLLs=121,
      LsLLLLs=122,
      LsLLsLL=123,
      LssLsLs=202,
      sLssLss=622,
      sLsssLs=170
    },
    [7]={
      LLLLLLs=1223,
      LsLsLLs=153,
      LsLsLss=910
    }
  },
  [9]={
    [2]={
      [5]={
        LMssLss=436,
        LssLMss=439,
        MssLssL=434,
        sLMssLs=435,
        sLssLMs=437,
        ssLMssL=433,
        ssLssLM=438
      },
      LLLLLLs=447,
      LsLLLsL=1194,
      LsLssLs=560
    },
    [3]={
      [8]={
        LMMsLMs=288,
        LMsLMMs=290,
        MMsLMsL=289,
        MsLMMsL=292,
        MsLMsLM=287,
        sLMMsLM=286,
        sLMsLMM=291
      }
    },
    [4]={
      LLsLLLs=576,
      LsLLsLL=583,
      sLLLsLL=577
    },
    [5]={
      [8]={
        LMsLLMs=585,
        LMsLLsM=589,
        LMsLMLs=124,
        LMsLsML=584,
        LsMLMLs=126,
        LsMLsLM=125,
        LsMLsML=127,
        MsLMsLL=578,
        sLMsLLM=573
      },
      LLsLLLs=130,
      LsLLLLs=131,
      LsLLsLL=132,
      LsLsLss=1121
    },
    [6]={
      [7]={
        LsMLsML=263,
        sLMsLLM=263
      }
    },
    [7]={
      LLLLLLs=1223,
      LsLsLss=787,
      Lssssss=900,
      sLssLss=622,
      sLsssss=760,
      sssLsss=759
    },
    [8]={LsLsLLs=153}
  },
  [10]={
    [3]={
      [7]={sLLMsLL=401},
      LLLLLLs=1154,
      LsLLLsL=1194,
      sLsLsLL=514
    },
    [4]={
      [7]={
        MMsMsLs=106,
        MsMMsLs=107
      }
    },
    [5]={
      [8]={
        LMssLss=1145,
        LssLMss=1148,
        MssLssL=1143,
        sLMssLs=1144,
        sLssLMs=1146,
        ssLMssL=1142,
        ssLssLM=1147
      }
    },
    [7]={
      LsLsLss=787,
      LssLsLs=202,
      sLssLss=622,
      sLsssLs=170
    }
  },
  [11]={
    [2]={
      [6]={
        LMssLss=1138,
        LssLMss=1141,
        MssLssL=1136,
        sLMssLs=1137,
        sLssLMs=1139,
        ssLMssL=1135,
        ssLssLM=1140
      },
      LLLLLLs=447,
      LsLssLs=560
    },
    [3]={
      LLLLLLs=1154,
      sLsLsLL=514
    },
    [4]={LsLsLsL=1178},
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
      LsLsLss=1121
    },
    [7]={
      LsLsLss=1174,
      LssLsLs=302
    },
    [8]={
      LsLsLss=787,
      sLsLsLs=617,
      sLssLss=622,
      sLsssss=760,
      sssLsss=759
    },
    [9]={
      LLLLLLs=1223,
      Lssssss=900,
      sLssLss=622
    }
  },
  [12]={
    [3]={
      [7]={
        LMssLss=870,
        LssLMss=873,
        MssLssL=868,
        sLMssLs=869,
        sLssLMs=871,
        ssLMssL=867,
        ssLssLM=872
      }
    },
    [5]={
      [11]={LsMLLsM=1234},
      [9]={MsLssLs=582},
      sLLsLsL=855
    },
    [7]={
      [11]={
        LLMsLMs=779,
        LMsLLMs=1285,
        MsLLMsL=778,
        sLLMsLM=780
      },
      [9]={
        LMsLLMs=1249,
        LMsLMsL=253,
        MLsLMLs=1235,
        MsLLMsL=252,
        sLLMsLM=1248
      },
      LLLLsLL=220,
      LsLsLss=1121,
      LssLsLs=202,
      sLsLsLs=254
    }
  },
  [13]={
    [1]={
      [6]={
        LMssLss=464,
        LssLMss=467,
        MssLssL=462,
        sLMssLs=463,
        sLssLMs=465,
        ssLMssL=461,
        ssLssLM=466
      }
    },
    [2]={
      LsLsLsL=797,
      ssLsssL=529
    },
    [3]={
      [12]={MLsMMLs=1233},
      LLLLLLs=524
    },
    [4]={
      LLLLLLs=1154,
      sLsLsLL=514
    },
    [5]={
      [9]={
        MMsMsLs=128,
        MsMMsLs=129
      },
      LssLsss=1091
    },
    [7]={LsLsLss=1121},
    [10]={
      LLLLLLs=1223,
      LsLsLss=787,
      Lssssss=900,
      sLssLss=622
    },
    [11]={
      LsLsLLs=153,
      LsLsLss=910
    }
  },
  [14]={
    [3]={
      [8]={
        LMssLss=436,
        LssLMss=439,
        MssLssL=434,
        sLMssLs=435,
        sLssLMs=437,
        ssLMssL=433,
        ssLssLM=438
      },
      LLLLLLs=447
    },
    [7]={
      [12]={sLsMsLs=1247}
    },
    [9]={LsLsLss=1174},
    [11]={
      LsLsLss=787,
      Lssssss=900
    }
  },
  [15]={
    [4]={
      LLLLLLs=1154,
      sLsLsLL=514
    },
    [11]={
      sLsssss=760,
      sssLsss=759
    },
    [13]={LsLsLLs=153}
  },
  [16]={
    [3]={
      LLLLLLs=447,
      LsLssLs=560
    },
    [5]={LLLLLLs=1154},
    [7]={
      [12]={
        LsMsLss=509,
        sLsMsLs=1286
      }
    },
    [8]={
      [11]={MLMMLMs=1293}
    },
    [13]={LLLLLLs=1223}
  },
  [17]={
    [3]={LsLsLss=560},
    [5]={
      LLLLLLs=1154,
      sLsLsLL=514
    },
    [10]={LssLsLs=302},
    [12]={sLsssLs=170},
    [13]={Lssssss=900},
    [14]={LLLLLLs=1223},
    [15]={LsLsLLs=153}
  },
  [18]={
    [5]={sLsLsLL=514}
  },
  [19]={
    [4]={LLLLLLs=447},
    [5]={sLsLsLL=514},
    [9]={
      [13]={MLMMLMs=1293}
    },
    [16]={LsLsLss=910}
  },
  [20]={
    [1]={
      [9]={ssLMssL=461}
    },
    [3]={ssLsssL=529},
    [5]={
      [12]={
        LMssLss=870,
        LssLMss=873,
        MssLssL=868,
        sLMssLs=869,
        sLssLMs=871,
        ssLMssL=867,
        ssLssLM=872
      }
    },
    [17]={LsLsLss=910}
  },
  [21]={
    [17]={LsLsLss=785}
  },
  [22]={
    [19]={LsLsLLs=153}
  },
  [23]={
    [4]={LsLsLss=560},
    [5]={LLsLLsL=489},
    [20]={LsLsLLs=153}
  },
  [25]={
    [7]={sLsLsLL=514}
  },
  [27]={
    [5]={LsLssLs=561}
  },
  [28]={
    [5]={LsLsLss=560}
  },
  [29]={
    [8]={sLsLsLL=514}
  },
  [31]={
    [27]={LsLsLLs=153}
  },
  [39]={
    [7]={LsLsLss=560}
  },
  [44]={
    [19]={
      [33]={sLsMsLs=314}
    }
  }
},
[8]={
  [2]={
    [1]={
      LLsLLLLL=891,
      LLsLLsLs=321,
      LLsLLsss=380,
      LLsLsLLs=472,
      LLsLssLs=563,
      LLssLLss=744,
      LLsssLLs=490,
      LsLLLsss=1006,
      LsLLsLLs=235,
      LsLLsLsL=236,
      LsLLsLss=606,
      LsLLssLs=1296,
      LsLLsssL=1009,
      LsLsLLsL=783,
      LsLsLsLs=306,
      LsLssLsL=227,
      LssLLssL=345,
      LsssLLLs=961,
      LsssLLsL=762,
      sLLLsLLL=1259,
      sLLLsLss=414,
      sLLLssLs=801,
      sLLsLLsL=503,
      sLLsLLss=904,
      sLLsLsLL=234,
      sLLssLLs=1263,
      sLLsssLL=897,
      sLsLLsLL=215,
      sLsLLsLs=554,
      sLsLsLLs=1122,
      sLsLsLsL=842,
      sLsLssLL=531,
      sLssLLsL=495,
      sLssLsLL=1151,
      sLsssLLL=350,
      ssLLssLL=743,
      ssLsLsLL=963,
      ssLssLsL=1108,
      ssLsssLs=1191,
      sssLLLsL=140,
      sssLLsLL=951
    }
  },
  [3]={
    [1]={
      [2]={
        LMsLMsLM=310,
        LssMsMss=971,
        MLssMsss=1040,
        MsLssssM=944,
        MsMsssLs=148,
        MssLsMss=1079,
        sLMLssMM=758,
        sLMsssMs=947,
        sLsMMsss=924,
        sLsMsMss=600,
        sLsMssMs=1039,
        sLssMMss=1264,
        sLsssMMs=929,
        sMLssMss=835,
        sMLssssM=1123,
        sMMsssLs=413,
        sMsssLsM=611,
        ssMssLMs=990,
        sssMMsLs=422
      },
      LLsLLLLL=501,
      LsLLsLLs=353,
      LsLsLsLs=809,
      LsssLsss=740,
      sLsLsLsL=843,
      sLsssLss=1210,
      sLssssLs=926,
      ssLssLsL=1243,
      ssLsssLs=1211,
      sssLsssL=739
    },
    [2]={
      LsLLsLLs=353,
      LsLsLLsL=1239,
      LsLsLsLs=304,
      sLLLLLLL=405,
      sLLLsLLL=428,
      sLsLsLsL=841,
      sLssLssL=596,
      ssLssLsL=849,
      ssLsssLs=1191,
      sssLsssL=845
    }
  },
  [4]={
    [1]={
      [2]={
        MsssssLs=1054,
        sLLMLLLs=258
      },
      [3]={
        sLsLsLsM=516,
        sMMLMLMM=361
      },
      LLLLLLLs=761,
      LLsLLLLL=501,
      sLsLssLs=1106
    },
    [2]={
      [3]={MMssLMML=605}
    },
    [3]={
      LsLsLLsL=1239,
      sLLLLLLL=405,
      sLsLsLsL=915,
      ssLssLsL=1104
    }
  },
  [5]={
    [1]={
      [3]={
        sLMsLMsL=1156,
        sMLsMLsM=257
      }
    },
    [2]={
      [3]={
        LLMLLMsM=379,
        LMLMLsLM=305,
        MLsLMLML=841
      },
      LLLLLLLs=761,
      LsLsLsLs=304,
      sLsLsLsL=841
    },
    [3]={
      LsLsLsLs=304,
      sLLLsLLL=428,
      sLsLsLsL=841,
      ssLssLsL=691,
      ssLsssLs=1191,
      sssLsssL=845
    },
    [4]={
      LsLsLLsL=1239,
      sLsLsLsL=915
    }
  },
  [6]={
    [3]={LLsLLsss=261},
    [5]={sLsLsLsL=915}
  },
  [7]={
    [2]={
      LLLLLLLs=761,
      sLsLssLs=1106
    },
    [3]={
      LsLsLsLs=304,
      sLsLsLsL=841
    },
    [4]={
      ssLssLsL=691,
      ssLsssLs=1191
    },
    [5]={
      sLLLLLLL=405,
      sLLLsLLL=428,
      sLsLsLsL=841,
      ssLssLsL=1104
    },
    [6]={sLsLsLsL=915}
  },
  [8]={
    [3]={
      [5]={LMLMLsLM=305},
      LLLLLLLs=761,
      LsLsLsLs=304,
      sLsLsLsL=841
    },
    [5]={
      sLLLsLLL=428,
      sssLsssL=845
    },
    [7]={sLsLsLsL=915}
  },
  [9]={
    [4]={
      [5]={
        LLsLLsMs=580,
        LLssMLLs=572,
        LsLLsLsM=586
      },
      LsLsLsLs=304,
      sLsLsLsL=841
    },
    [5]={
      LsLsLsLs=304,
      sLsLsLsL=841,
      ssLssLsL=691
    },
    [7]={LsLsLLsL=1239}
  },
  [10]={
    [7]={
      sLLLLLLL=405,
      ssLssLsL=1104
    }
  },
  [11]={
    [4]={
      LLLLLLLs=761,
      sLsLsLsL=841
    },
    [6]={LsLsLsLs=304},
    [8]={
      sLLLLLLL=405,
      ssLssLsL=1104
    }
  },
  [12]={
    [7]={ssLssLsL=691}
  },
  [13]={
    [5]={
      [11]={MMMLMMMs=1294},
      LsLsLsLs=304
    },
    [8]={
      LsLsLsLs=394,
      sLLLLLLL=405
    },
    [9]={
      sLLLLLLL=405,
      ssLssLsL=1104
    }
  },
  [15]={
    [6]={
      [13]={MMMLMMMs=1294}
    }
  }
},
[9]={
  [0]={
    [1]={sssssssss=885}
  },
  [2]={
    [1]={
      LLLLLLLLs=496,
      LLLLsLLLs=1182,
      LLLsLLLLs=146,
      LLLsLLLsL=1183,
      LLsLLLLsL=1279,
      LLsLLLsLL=1184,
      LLsLLsLLs=1064,
      LLsLsLsLs=393,
      LLsLsssss=1019,
      LLsssLsss=1204,
      LLsssssLs=1013,
      LsLLLLsLL=1175,
      LsLLLsLLL=625,
      LsLLsLLsL=184,
      LsLLsssss=366,
      LsLsLsLLs=403,
      LsLsLsLsL=1099,
      LsLsLsLss=541,
      LsLsssssL=511,
      LssLssLss=738,
      LsssLLsss=222,
      LsssLsLss=941,
      LsssLsssL=458,
      LsssLssss=500,
      LsssssLsL=221,
      sLLLLsLLL=839,
      sLLLsLLLL=1179,
      sLLsLLsLL=1063,
      sLsLsLsLL=1186,
      sLssLsLss=789,
      sLssLssLs=375,
      sLssLsssL=923,
      ssLsLLsss=238,
      ssLsLssLs=251,
      ssLssLssL=737,
      ssLsssLLs=976,
      ssLsssLsL=1289,
      sssLLsssL=250,
      sssLsssLL=536,
      ssssLssss=1292
    }
  },
  [3]={
    [1]={
      [2]={
        LLssMLMss=460,
        LMLLMsMsM=50,
        MsLsLLsMs=412,
        MsMsLLLLs=1170,
        sLssssMss=991,
        sLsssssMs=987,
        sMssLssMs=1202,
        ssMssssLs=1002
      },
      LLLsLLLLs=173,
      LLsLLLLsL=1280,
      LLsLLsLLs=851,
      LLsLsLsLs=393,
      LsLLLsLLL=625,
      LsLLsLLsL=184,
      LsLsLsLsL=1099,
      sLsLLsLsL=850,
      ssLsLsLsL=810
    },
    [2]={
      LLLLLLLLs=496,
      LLLLsLLLs=1182,
      LLLsLLLLs=173,
      LLLsLLLsL=1183,
      LLsLLLLsL=550,
      LLsLLLsLL=1184,
      LLsLLsLLs=1242,
      LsLLLLsLL=1175,
      LsLLLsLLL=625,
      LsLsLLsLs=892,
      LsLsLsLsL=1169,
      LsLsLsLss=859,
      LssLssLss=191,
      LsssLssss=1295,
      LssssLsss=1073,
      sLLLLsLLL=1188,
      sLLLsLLLL=1179,
      sLsLsLsLL=1186,
      sLsLsLsLs=1066,
      sLssLssLs=913,
      sLsssLsss=198,
      ssLssssss=597,
      sssLsssLs=197,
      ssssLssss=807
    }
  },
  [4]={
    [1]={
      [2]={sLsLMsLsL=1068},
      [3]={LsMsLsMsL=1071},
      LLsLLsLLs=851,
      LLsLsLsLs=393,
      LsLLLsLLL=624,
      LsLsLsLsL=1303
    },
    [2]={
      [3]={MLsssssLM=602}
    },
    [3]={
      LLLLLLLLs=903,
      LLsLLLLsL=549,
      LsLsLsLss=859,
      LssssLsss=492,
      sLsLsLsLL=1186,
      sLssLssLs=271,
      ssssLssss=807
    }
  },
  [5]={
    [1]={
      LLsLLsLLs=1119,
      LLsLsLsLs=474,
      LsLsLsLsL=1099,
      sLLsLLsLL=1217
    },
    [2]={
      [3]={MLsMLMsLM=374},
      LLLsLLLLs=173,
      LLsLsLsLs=393,
      LsLLLsLLL=624,
      LsLLsLLsL=184,
      LsLsLsLss=541,
      sLssLssLs=180
    },
    [3]={
      [4]={
        MssLssMss=411,
        sMssLsMss=409,
        ssMsLsMss=410
      },
      LLLLLLLLs=496,
      LLLsLLLLs=172,
      LLsLLLLsL=549,
      LLsLLsLLs=1242,
      LsLLLsLLL=624,
      LssLssLss=191,
      LsssLssss=500,
      LssssLsss=1073,
      sLsLsLsLL=1186,
      sLsssLsss=1092,
      ssssLssss=807
    },
    [4]={
      LLLLLLLLs=903,
      LLsLLLLsL=549,
      sLsLsLsLL=1117,
      sLsLsLssL=408,
      sssLsssss=1252
    }
  },
  [6]={
    [1]={
      LLsLsLsLs=474,
      sssLssssL=530
    },
    [2]={
      [3]={MLsMLMsLM=374}
    },
    [5]={
      LLLLLLLLs=903,
      sLsLsLsLL=1117,
      sLsLsLssL=408,
      sssLsssss=1252
    }
  },
  [7]={
    [1]={LLsLsLsLs=474},
    [2]={
      LLsLLsLLs=851,
      LLsLsLsLs=393,
      LsLLLsLLL=624
    },
    [3]={
      LLLsLLLLs=172,
      LsLLLsLLL=624,
      sLssLssLs=188
    },
    [4]={
      LLLLLLLLs=903,
      LLLsLLLLs=172,
      LLsLLsLLs=1242,
      LssLssLss=191,
      LsssLssss=500,
      sLsLsLsLL=1186,
      ssssLssss=807
    },
    [5]={
      LLLLLLLLs=903,
      LLsLLLLsL=549,
      LsLsLsLss=859,
      sLsLsLsLL=1186,
      sLssLssLs=271,
      ssssLssss=807
    },
    [6]={sssLsssss=1252}
  },
  [8]={
    [3]={
      [6]={ssMLLssML=440},
      LLLsLLLLs=172,
      LLsLsLsLs=393,
      LsLLLsLLL=624,
      LsLLsLLsL=184,
      sLssLssLs=180
    },
    [5]={
      LLLLLLLLs=496,
      LLLsLLLLs=172,
      LLsLLLLsL=549,
      LLsLLsLLs=1242,
      sLsLsLsLL=1186,
      sLsssLsss=1092,
      ssssLssss=808
    }
  },
  [9]={
    [2]={LsLLLsLLL=624},
    [4]={
      [5]={
        LLssMLssM=575,
        MsssMLsLL=588,
        ssMLLssML=581
      },
      sLssLssLs=188
    },
    [5]={
      LLLLLLLLs=903,
      LLLsLLLLs=172,
      LLsLLsLLs=1242,
      sLsLsLsLL=1186
    },
    [7]={LLsLLLLsL=549}
  },
  [10]={
    [3]={
      LLsLLsLLs=851,
      LLsLsLsLs=393,
      LsLLLsLLL=624,
      sLssLssLs=180
    },
    [7]={
      LLLLLLLLs=903,
      LLsLLLLsL=549,
      LsLsLsLss=859
    }
  },
  [11]={
    [1]={LLsLsLsLs=909},
    [2]={
      LLsLsLsLs=474,
      sssLssssL=530
    },
    [3]={LLsLLsLLs=851},
    [4]={
      LLsLsLsLs=393,
      sLssLssLs=180
    },
    [6]={
      LLLLLLLLs=903,
      LLsLLsLLs=1242
    },
    [7]={
      LLsLLsLLs=1242,
      ssssLssss=807
    },
    [8]={
      LsLsLsLss=859,
      sLssLssLs=271,
      ssssLssss=807
    },
    [9]={
      LLLLLLLLs=903,
      sLsLsLsLL=1117
    }
  },
  [12]={
    [1]={LLsLsLsLs=909},
    [5]={
      LLLsLLLLs=172,
      sLssLssLs=180
    },
    [7]={
      LLsLLsLLs=1242,
      ssssLssss=807
    }
  },
  [13]={
    [4]={LLsLsLsLs=393},
    [5]={
      LLsLsLsLs=393,
      sLssLssLs=180
    },
    [8]={ssssLssss=807}
  },
  [14]={
    [5]={sLssLssLs=180},
    [9]={ssssLssss=807}
  },
  [15]={
    [4]={LLsLLsLLs=851},
    [11]={LsLsLsLss=859}
  },
  [16]={
    [7]={sLssLssLs=188}
  },
  [17]={
    [3]={sssLssssL=530},
    [5]={LLsLsLsLs=393},
    [7]={sLssLssLs=188}
  },
  [18]={
    [5]={LLsLLsLLs=851},
    [7]={sLssLssLs=180},
    [13]={LsLsLsLss=859}
  },
  [20]={
    [11]={LLLLLLLLs=1246}
  },
  [21]={
    [4]={sLLsLLsLL=1217}
  },
  [26]={
    [5]={sLLsLLsLL=1217}
  }
},
[10]={
  [2]={
    [1]={
      LLLLLLLLLs=805,
      LLLLsLLLLs=844,
      LLLsLLLLsL=1190,
      LLsLLLLLLL=591,
      LsLLsLLLsL=819,
      LsLLsLsLLs=174,
      LsLsLLsLsL=525,
      LsLsLsLsLs=167,
      LsssLssLss=1060,
      LsssLsssss=571,
      LssssLssss=746,
      LsssssLsss=768,
      LsssssssLs=612,
      sLLLsLLsLL=201,
      sLLsLLLsLL=824,
      sLLsLLsLLL=431,
      sLsLLsLsLL=266,
      sLsLsLsLsL=212,
      sLsLssLsLs=268,
      sLsssssssL=615,
      ssLsLsssss=979,
      ssLssLsssL=1061,
      ssLssssLss=1200,
      ssLsssssLs=927,
      sssLssLssL=1109,
      sssLsssssL=949,
      ssssLssssL=745,
      sssssLsLss=1042
    }
  },
  [3]={
    [1]={
      [2]={
        LsLMMMLMMM=152,
        LsssLssMss=39,
        MMLsLMMLsL=351
      },
      LLLLLLLLLs=806,
      LsLLLsLLsL=231,
      LsLLsLLLsL=819,
      LsLLsLsLLs=174,
      sLLsLLLsLL=824,
      sLLsLLsLLL=755
    },
    [2]={
      LLLLLLLLLs=806,
      LLLLsLLLLs=844,
      LLLsLLLLLL=508,
      LLLsLLLLsL=1190,
      LsLsLLsLsL=525,
      LsLsLsLsLs=167,
      LsssLsssss=890,
      sLLLsLLsLL=201,
      sLsLLsLsLL=266,
      sLsLsLsLsL=216,
      sLsLssLsLs=1290,
      sLssLsLssL=847,
      sLssssLsss=324,
      sLsssssLss=150,
      ssLsLssLsL=154,
      ssLsssLsss=1160,
      ssLssssLss=1166,
      sssLssssLs=1167,
      sssLsssssL=1161,
      ssssLsssLs=151,
      ssssLssssL=325,
      sssssssssL=774
    }
  },
  [4]={
    [1]={
      [2]={MsLMsLMsLM=335},
      LLLLsLLLLL=1251,
      LsLLLsLLsL=231,
      LsLLsLLLsL=819,
      LsLLsLsLLs=157,
      LsssLssLss=555,
      sLLsLLLsLL=824,
      sLLsLLsLLL=755,
      sLsLssLsLs=319
    },
    [2]={
      [3]={LsLsLsLMMM=542}
    },
    [3]={
      LLLLLLLLLs=806,
      LLLsLLLLsL=1190,
      LLLsLLsLLs=1124,
      LsLsLLsLsL=525,
      LsssLsssss=890,
      sLLLsLLsLL=301,
      sLLsLLsLLL=1120,
      sLLsLLssLL=228,
      sLLsLsLLsL=326,
      sLsLsLsLsL=210,
      sLsLssLsLs=268,
      ssLsLssLsL=154,
      sssssssLss=163,
      sssssssssL=774
    }
  },
  [5]={
    [1]={
      LLLLsLLLLL=1251,
      LsssLssLss=555,
      sLsLssLsLs=319
    },
    [2]={
      [3]={LMsMLMsMsM=571},
      LLLLLLLLLs=806,
      LsLLsLLLsL=616,
      LsLLsLsLLs=174,
      sLLLsLLsLL=201,
      sLLsLLLsLL=786,
      sLLsLLsLLL=431,
      sssLssLssL=1109
    },
    [3]={
      LLLLLLLLLs=806,
      LLLLLsLLLL=542,
      LLLLsLLLLs=844,
      LLLsLLLLLL=508,
      LsLsLLsLsL=525,
      LsLsLsLsLs=167,
      LsssLsssss=890,
      sLLLsLLsLL=201,
      sLsLsLsLsL=210,
      sLsLssLsLs=268,
      sLssLssLss=396,
      sssLssssLs=276
    },
    [4]={
      LLLsLLsLLs=1124,
      LssLssLsss=1172,
      sLLLsLLsLL=1120,
      sLLsLsLLsL=326,
      sLsLsLsLsL=354,
      sLsLssLsLs=266,
      ssLsLssLsL=154,
      sssssssssL=774
    }
  },
  [6]={
    [1]={
      LLLLsLLLLL=1251,
      LsssLssLss=555
    },
    [5]={
      LLLsLLsLLs=1124,
      LssLssLsss=1172,
      sLLLsLLsLL=1120,
      sLLsLsLLsL=326,
      sssssssssL=774
    }
  },
  [7]={
    [2]={
      LsLLsLsLLs=174,
      LsssLssLss=555,
      sLLsLLLsLL=786,
      sLLsLLsLLL=755
    },
    [3]={
      LsLLsLsLLs=174,
      sLLLsLLsLL=201,
      sLLsLLLsLL=786,
      sLLsLLsLLL=431,
      sLsLsLsLsL=1244
    },
    [4]={
      LLLLLLLLLs=806,
      LsLLsLLLsL=1173,
      LsLsLLsLsL=525,
      LsLsLsLsLs=167,
      LsssLsssss=890,
      sLLLsLLsLL=301,
      sLsLsLsLsL=216,
      sLsLssLsLs=268,
      ssLssssLss=1200,
      sssLssssLs=276
    },
    [5]={
      LLLLLLLLLs=806,
      LsLsLLsLsL=525,
      LsssLsssss=890,
      sLLLsLLsLL=201,
      sLsLsLsLsL=210,
      ssLsLssLsL=154,
      sssLssssLs=862,
      sssssssLss=163
    },
    [6]={
      LssLssLsss=1172,
      sLLLsLLsLL=1120,
      sLsLssLsLs=268,
      sssssssssL=777
    }
  },
  [8]={
    [1]={
      [3]={sLMsLMsLMs=274}
    },
    [3]={
      LLLLLLLLLs=806,
      LsLLsLLLsL=616,
      LsLLsLsLLs=174,
      sLLsLLLsLL=786
    },
    [5]={
      LLLLLLLLLs=806,
      LsLsLLsLsL=525,
      LsssLsssss=890,
      sLLLsLLsLL=200,
      sLsLssLsLs=268,
      sssLssssLs=862
    }
  },
  [9]={
    [2]={
      LsssLssLss=555,
      sLsLssLsLs=319
    },
    [4]={
      [5]={
        LMsssMLsMs=587,
        LsLMsssMsM=574
      },
      sLsLsLsLsL=1244
    },
    [5]={
      [7]={MLMMsMMLMM=912},
      LLLLLLLLLs=806,
      LsLLsLLLsL=1173,
      LsLsLLsLsL=525,
      LsLsLsLsLs=167,
      sLsLssLsLs=268,
      sssLssssLs=275
    },
    [7]={
      LLLsLLsLLs=1124,
      sLLsLsLLsL=326,
      sLsLsLsLsL=354,
      ssLsLssLsL=154,
      sssssssssL=774
    }
  },
  [10]={
    [3]={
      LsLLsLsLLs=174,
      sLLsLLLsLL=786,
      sLLsLLsLLL=755
    },
    [7]={
      LsLsLLsLsL=525,
      sLLLsLLsLL=301,
      sLsLsLsLsL=210,
      sLsLssLsLs=268,
      sssLssssLs=862
    }
  },
  [11]={
    [3]={
      sLLsLLLsLL=786,
      sLLsLLsLLL=755
    },
    [4]={
      LsLLsLsLLs=174,
      sLLsLLLsLL=786
    },
    [5]={sLsLsLsLsL=1244},
    [6]={
      LsLLsLLLsL=1173,
      LsLsLLsLsL=525,
      LsLsLsLsLs=167,
      sLsLssLsLs=268,
      sssLssssLs=275
    },
    [7]={
      LsLsLLsLsL=525,
      sLsLssLsLs=268,
      sssLssssLs=862
    },
    [8]={
      LsLsLLsLsL=525,
      sLsLsLsLsL=210,
      ssLsLssLsL=154,
      sssssssLss=163
    },
    [9]={
      LssLssLsss=1172,
      sLLsLsLLsL=326,
      sssssssssL=774
    }
  },
  [12]={
    [5]={
      sLLsLLsLLL=431,
      sLsLsLsLsL=1244
    },
    [7]={
      LsLsLLsLsL=525,
      sLsLssLsLs=268,
      sLssLssLss=396,
      sssLssssLs=275
    }
  },
  [13]={
    [3]={
      LsssLssLss=555,
      sLsLssLsLs=319
    },
    [6]={sLsLsLsLsL=1244},
    [7]={
      LsLLsLLLsL=1173,
      sLsLsLsLsL=216,
      ssLssssLss=864
    },
    [8]={
      LsLsLLsLsL=525,
      sLsLssLsLs=268
    },
    [10]={sssssssssL=774},
    [11]={LssLssLsss=1172}
  },
  [14]={
    [3]={LsssLssLss=555},
    [5]={sLLsLLLsLL=786},
    [11]={sssssssssL=774}
  },
  [15]={
    [4]={
      sLLsLLLsLL=786,
      sLLsLLsLLL=755
    }
  },
  [16]={
    [7]={sLsLsLsLsL=1244},
    [9]={sssLssssLs=275},
    [13]={
      sLLsLsLLsL=326,
      sssssssssL=774
    }
  },
  [17]={
    [5]={LsLLsLsLLs=174},
    [6]={LsLLsLsLLs=174},
    [7]={sLLsLLsLLL=431},
    [10]={sLssLssLss=396}
  },
  [18]={
    [5]={sLLsLLLsLL=786}
  },
  [19]={
    [4]={LsssLssLss=555},
    [5]={
      sLLsLLLsLL=786,
      sLLsLLsLLL=755
    }
  },
  [22]={
    [5]={
      LsssLssLss=556,
      sLsLssLsLs=319
    },
    [17]={sssssssssL=774}
  },
  [23]={
    [5]={LsssLssLss=555}
  },
  [24]={
    [13]={
      [18]={sLsLMLsLsL=1197}
    }
  },
  [32]={
    [7]={LsssLssLss=555}
  }
},
[11]={
  [2]={
    [1]={
      LLLLLLLLLLs=775,
      LLLLLsLsLLs=517,
      LLLLsLLLLLs=196,
      LLLLsLLLLsL=1298,
      LLLsLLLsLLs=1102,
      LLLsLLsLLLs=838,
      LLsLLLsLLLs=402,
      LLsLsLsLsLs=1237,
      LsLLLLLsLLL=1299,
      LsLLLsLLLsL=592,
      sLLLLLsLLLL=195,
      sLLLLsLLLLL=1089,
      sLsLsLsLsLL=551,
      sLsLsLsLsLs=398,
      sLsLssLssLs=1176,
      sLsssssssss=1020,
      ssLsLssLssL=512
    }
  },
  [3]={
    [1]={
      LLLLLLLLsLL=164,
      LLLsLLLsLLs=1102,
      LsLsLLsLLsL=788,
      LsLsLsLssLs=1152,
      LssLsLssLss=507,
      LssLsssLsss=1157,
      LssLssssLsL=626,
      sLLLLLsLLLL=491,
      sLsLsLsLsLs=398,
      sLssLsssLss=1097,
      ssLsLssLssL=512
    },
    [2]={
      LLsLLLsLLLs=194,
      LsLLLsLLLsL=689,
      LsLLLsLLsLL=1159,
      LssssLsssss=362,
      sLLLLsLLLLL=499,
      sLLLsLLLsLL=195,
      sLsLsLsLsLL=551,
      sLsLssLssLs=1176,
      ssLsLsLsLsL=518,
      ssLsLssLssL=854,
      sssssLsssss=1168
    }
  },
  [4]={
    [1]={
      LsLsLLsLLsL=788,
      LsLsLsLsLss=793,
      LsLsLsLssLs=1152,
      sssLsssLssL=229
    },
    [3]={
      LsLLLsLLLsL=689,
      LsLLLsLLsLL=1159,
      sLLLLsLLLLL=498,
      sLsLsLsLsLL=551,
      ssLsLssLssL=854
    }
  },
  [5]={
    [1]={
      [3]={LMsLLMsLMsL=255},
      LsLsLLsLLsL=788,
      LsLsLsLsLss=1300,
      LsLsLsLssLs=1127,
      LssLsLsLsLs=1281,
      sLssLsLssLs=795,
      ssssLsssssL=527
    },
    [2]={
      LLLLLLLLsLL=164,
      LLLsLLLsLLs=1102,
      LsLsLsLssLs=1152,
      LssLsssLsss=1157,
      LssssLsssss=1229,
      sLsLsLsLsLs=398,
      sLsLssLssLs=1275,
      sLssLsssLss=1097,
      ssLsLssLssL=512
    },
    [3]={
      LLsLLsLLsLs=1276,
      LssssLsssss=362,
      sLLLLsLLLLL=1088,
      sLsLsLsLsLL=551,
      sLsLssLssLs=1176,
      ssLsLsLsLsL=518,
      ssssLsssssL=876
    },
    [4]={
      LsLLLsLLLsL=689,
      sLsLsLsLsLL=551
    }
  },
  [6]={
    [1]={
      LsLsLsLssLs=1127,
      LssLsLsLsLs=1281,
      sLssLsLssLs=795
    },
    [5]={
      sLsLsLsLsLL=551,
      sLsssLsLssL=551
    }
  },
  [7]={
    [1]={
      [2]={sLsMsLsMsLs=811},
      LsLsLsLLsLs=192,
      LsLsLsLssLs=1069
    },
    [2]={
      LsLsLsLssLs=1152,
      sssLsssLssL=229
    },
    [3]={
      LLLsLLLsLLs=1102,
      LsLsLsLssLs=1152,
      LssLsssLsss=1157,
      sLsLsLsLsLs=398,
      ssLsLssLssL=512
    },
    [4]={
      sLsLssLssLs=1176,
      ssssLsssssL=876
    },
    [5]={
      LsLLLsLLLsL=689,
      LsLLLsLLsLL=1159,
      sLLLLsLLLLL=498,
      ssLsLssLssL=854
    },
    [6]={
      sLLLLsLLLLL=498,
      sLsLsLsLsLL=551,
      ssLsLssLssL=854
    }
  },
  [8]={
    [1]={LsLsLsLssLs=1069},
    [3]={
      LLLLLLLLsLL=164,
      LLLsLLLsLLs=1102,
      LssLsssLsss=1157,
      sLsLsLsLsLs=398,
      ssLsLssLssL=512
    },
    [5]={
      LLsLLsLLsLs=1276,
      LssssLsssss=362,
      sLsLssLssLs=1176,
      ssLsLsLsLsL=518,
      ssssLsssssL=876
    },
    [7]={sLsLsLsLsLL=551}
  },
  [9]={
    [2]={
      [5]={LMLMLMLsMLM=455},
      LsLsLsLsLss=793,
      ssssLsssssL=527
    },
    [4]={
      LLLsLLLsLLs=1102,
      ssLsLssLssL=512
    }
  },
  [10]={
    [3]={LsLsLsLssLs=1152},
    [7]={ssLsLssLssL=854}
  },
  [11]={
    [2]={
      LsLsLsLsLss=792,
      sLssLsLssLs=795
    },
    [3]={
      LsLsLsLssLs=1152,
      sssLsssLssL=229
    },
    [4]={
      LLLsLLLsLLs=1102,
      sLsLsLsLsLs=398,
      ssLsLssLssL=512
    },
    [5]={LLLsLLLsLLs=1102},
    [8]={
      LsLLLsLLsLL=1159,
      ssLsLssLssL=854
    },
    [9]={sLsLsLsLsLL=551}
  },
  [12]={
    [5]={
      LLLsLLLsLLs=1102,
      LssLsssLsss=1157,
      ssLsLssLssL=512
    },
    [7]={
      sLsLssLssLs=1176,
      ssLsLsLsLsL=518,
      ssssLsssssL=876
    }
  },
  [13]={
    [2]={LsLsLsLssLs=1127},
    [3]={LsLsLsLsLss=793},
    [4]={LsLssLssLss=874},
    [5]={
      LLLsLLLsLLs=1102,
      LssLsssLsss=1157,
      ssLsLssLssL=512
    },
    [8]={
      LLsLLsLLsLs=1276,
      LssssLsssss=362,
      ssLsLsLsLsL=518
    }
  },
  [14]={
    [3]={
      LsLsLsLsLss=793,
      ssssLsssssL=527
    },
    [5]={ssLsLssLssL=512}
  },
  [15]={
    [2]={
      LsLsLsLLsLs=192,
      LsLsLsLssLs=1069
    }
  },
  [16]={
    [3]={
      LsLsLsLsLss=793,
      sLssLsLssLs=795
    },
    [5]={LsLssLssLss=874}
  },
  [17]={
    [3]={sLssLsLssLs=795},
    [7]={LssLsssLsss=1157}
  },
  [18]={
    [7]={
      LssLsssLsss=1157,
      ssLsLssLssL=512
    }
  },
  [20]={
    [3]={LsLsLsLssLs=1069}
  },
  [21]={
    [8]={ssLsLssLssL=512}
  },
  [22]={
    [3]={
      LsLsLsLLsLs=192,
      LsLsLsLssLs=1069
    }
  },
  [23]={
    [4]={sLssLsLssLs=795}
  }
},
[12]={
  [0]={
    [1]={ssssssssssss=7}
  },
  [2]={
    [1]={
      LLLLLLssLLLL=327,
      LLLLsLLLLLLs=449,
      LLLsLLLLLLLL=1067,
      LLLsLLLLLsLL=863,
      LLsLLLLLsLLL=502,
      LLsLsLLsLLLs=4,
      LsLLLsLLLsLL=4,
      LsLsLLsLsLsL=1288,
      LsLsLsLLsLsL=378,
      LsLsLsLsLsLs=450,
      LssLsLsLssLs=28,
      LsssLsssLsss=475,
      sLLLsLLLsLLL=189,
      sLLsLsLsLLsL=639,
      sLsLLsLsLsLL=593,
      sLsLssLsLsLs=1192,
      sLssLsLssLsL=1084,
      sLssLssLssLs=357,
      sLsssLssssLs=4,
      ssLsssLsssLs=177,
      sssLsssLsssL=181
    }
  },
  [3]={
    [1]={
      [2]={
        LLLLLLLLLsMs=776,
        LMLMLMLLLsLL=619,
        LsLsMLsLsLsM=469,
        LsMLsMsMsMsL=365,
        LsMsLLsLsMsL=470,
        MMMsLMMMMMsL=468,
        sLMMMsLMMLsM=471,
        sLMsLsLMsMLM=1261,
        sLssMMsMsMMs=1162
      },
      LLLsLLLLLLLL=1067,
      LLLsLLLLLsLL=866,
      LsLsLssLsLss=1277,
      LssLsLsLssLs=17,
      sLLsLsLLsLsL=356,
      sLLsLsLsLLsL=672,
      sLsLssLsLsLs=1192,
      sLssLsLssLsL=1189,
      sLssLssLssLs=209,
      sssLsssLsssL=537
    },
    [2]={
      LLLLLLLLsLLL=1250,
      LLLsLLLLLLLL=1067,
      LLLsLLLLLsLL=278,
      LLLsLLLLsLLL=2,
      LLsLLLLLsLLL=502,
      LLsLLsLLsLLs=307,
      LsLsLsLLsLsL=377,
      LsLsLsLsLsLs=450,
      LssLLsLLssLL=359,
      LssLsLsLssLs=10,
      LsssLsssLsss=757,
      sLLLsLLLsLLL=189,
      sLLsLsLsLLsL=681,
      sLsLLsLLssLL=451,
      sLssLsLssLsL=1085,
      sLssLssLssLs=4,
      sLsssLsssLss=1162,
      ssLssLssLssL=272,
      ssLsssLsssLs=177,
      sssssLsssssL=478
    }
  },
  [4]={
    [1]={
      [3]={LLLLLLLLLsMs=776},
      LLLsLLLLLLLL=1067,
      LLLsLLLLLsLL=866,
      LssLsLsLssLs=34,
      sLLsLsLsLLsL=633,
      sLsLssLsLsLs=1192,
      sLssLsLssLsL=1189
    },
    [2]={
      [3]={
        LMLsLMLLsLML=2,
        sLssMMsMsMMs=1162,
        sMsLsMssMMMs=424
      }
    },
    [3]={
      LLLsLLLLLLLL=1067,
      LLLsLLLLLsLL=278,
      LLLsLLLLsLLL=2,
      LLsLLsLLsLLs=307,
      LsLsLsLLsLsL=377,
      LsLsLsLsLsLs=450,
      LssLsLsLssLs=20,
      sLLLsLLLsLLL=189,
      sLLsLsLsLLsL=644,
      sLssLsLssLsL=1085,
      ssLssLssLssL=308,
      ssLsssLsssLs=185,
      sssssLsssssL=478,
      ssssssLsssss=878
    }
  },
  [5]={
    [1]={
      [2]={MLMLsMLMLMLs=347},
      [3]={LMLMLMLLLsLL=619},
      [4]={LLLLLLLLLsMs=776},
      LsssLsssLsss=430
    },
    [2]={
      LLLsLLLLLsLL=863,
      LssLsLsLssLs=19,
      LsssLsssLsss=475,
      sLLsLsLLsLsL=356,
      sLLsLsLsLLsL=658,
      sLsLssLsLsLs=1192,
      ssLsLsLssLsL=921
    },
    [3]={
      [4]={
        LMLsLMLLsLML=2,
        ssLsssMssLss=798
      },
      LLLsLLLLLLLL=1067,
      LLLsLLLLLsLL=863,
      LsLsLsLsLsLs=450,
      LssLsLsLssLs=27,
      sLLLsLLLsLLL=189,
      sLLsLsLsLLsL=677,
      sLssLsLssLsL=1084,
      ssLssLssLssL=272,
      ssLsssLsssLs=177,
      sssssLsssssL=478
    },
    [4]={
      LLLsLLLLLLLL=1067,
      LLLsLLLLLsLL=277,
      LLLsLLLLsLLL=2,
      LLsLLsLLsLLs=307,
      LsLsLLsLsLsL=1081,
      LsLsLsLLsLsL=377,
      LsLsLsLsLsLs=450,
      LssLsLsLssLs=640,
      sLLLsLLLsLLL=189,
      sLLsLLsLLsLL=206,
      sLLsLsLsLLsL=663,
      sLssLsLssLsL=1085,
      ssLssLssLssL=272,
      ssLsssLsssLs=185,
      sssssLsssssL=478,
      ssssssLsssss=878
    }
  },
  [6]={
    [1]={LLLsLLLLLsLL=1100},
    [3]={
      [4]={LMLsLMLLsLML=2},
      [5]={LMLsLMLLsLML=2}
    },
    [4]={
      [5]={LMLsLMLLsLML=2}
    },
    [5]={
      LLLsLLLLLLLL=1067,
      LLLsLLLLLsLL=277,
      LLsLLsLLsLLs=307,
      LssLsLsLssLs=645,
      sLLLsLLLsLLL=189,
      sLLsLLsLLsLL=206,
      sLLsLsLsLLsL=671,
      sssssLsssssL=478,
      ssssssLsssss=878
    }
  },
  [7]={
    [1]={
      LLLsLLLLLsLL=1100,
      sssssLsssssL=538
    },
    [2]={
      [5]={LLLLLLLLLsMs=776},
      LLLsLLLLLsLL=866,
      sLsLssLsLsLs=1192,
      sLssLsLssLsL=1189,
      sLssLssLssLs=209
    },
    [3]={
      [5]={sMMsMsMMssLs=1283},
      LLLsLLLLLsLL=863,
      LsssLsssLsss=475,
      sLLsLsLLsLsL=356,
      sLLsLsLsLLsL=687,
      sLsLssLsLsLs=1192,
      ssLsssLsssLs=177
    },
    [4]={
      [5]={
        LMLsLMLLsLML=2,
        LMsLLMLLsMLL=1134,
        MLsLLMLLsMLL=451
      },
      [6]={LMLsLMLLsLML=2},
      LLLsLLLLLsLL=863,
      LssLsLsLssLs=24,
      sLLsLsLsLLsL=676,
      ssLsssLsssLs=177
    },
    [5]={
      [6]={LMLsLMLLsLML=2},
      LLLsLLLLLLLL=1067,
      LLLsLLLLLsLL=277,
      LsLsLsLsLsLs=450,
      LssLsLsLssLs=14,
      sLLLsLLLsLLL=189,
      sLLsLsLsLLsL=662,
      sLssLsLssLsL=1085,
      ssLsssLsssLs=177,
      sssssLsssssL=478
    },
    [6]={
      LLLsLLLLLLLL=1067,
      LLLsLLLLLsLL=865,
      LssLsLsLssLs=653,
      sLLLsLLLsLLL=189,
      sLLsLLsLLsLL=206,
      sLLsLsLsLLsL=664,
      sssssLsssssL=478,
      ssssssLsssss=878
    }
  },
  [8]={
    [1]={LLLsLLLLLsLL=1100},
    [3]={
      LssLsLsLssLs=36,
      sLLsLsLLsLsL=356,
      sLLsLsLsLLsL=674,
      sLsLssLsLsLs=1192,
      ssLsLsLssLsL=921
    },
    [5]={
      [6]={LMLsLMLLsLML=2},
      [7]={LMLsLMLLsLML=2},
      LLLsLLLLLLLL=1067,
      LLLsLLLLLsLL=863,
      LsLsLsLsLsLs=450,
      LssLsLsLssLs=30,
      sLLsLsLsLLsL=678,
      sLssLsLssLsL=1084,
      ssLsssLsssLs=177,
      sssssLsssssL=478
    },
    [6]={
      [7]={LMLsLMLLsLML=2}
    },
    [7]={
      LLLsLLLLLLLL=1067,
      LssLsLsLssLs=637,
      sLLsLsLsLLsL=648,
      ssLsssLsssLs=781,
      sssssLsssssL=478
    }
  },
  [9]={
    [2]={
      [7]={LLLLLLLLLsMs=776}
    },
    [4]={
      LLLsLLLLLsLL=863,
      LsssLsssLsss=475,
      sLLsLsLLsLsL=356,
      sLsLssLsLsLs=1192
    },
    [5]={
      [7]={LMLsLMLLsLML=2},
      LLLsLLLLLsLL=863,
      LssLsLsLssLs=23,
      sLLsLsLsLLsL=661,
      ssLsssLsssLs=177
    },
    [6]={
      [7]={LMLsLMLLsLML=2},
      [8]={LMLsLMLLsLML=2}
    },
    [7]={
      LLLsLLLLLLLL=1067,
      LLLsLLLLLsLL=277,
      LssLsLsLssLs=9,
      sLLsLsLsLLsL=680,
      sLssLsLssLsL=1085,
      ssLsssLsssLs=185,
      sssssLsssssL=478,
      ssssssLsssss=878
    },
    [8]={
      LLLsLLLLLLLL=1067,
      LsLLLLLsLLLL=208,
      LssLsLsLssLs=635,
      sLLsLsLsLLsL=665,
      ssLsssLsssLs=781
    }
  },
  [10]={
    [3]={
      [7]={LLLLLLLLLsMs=776},
      sLssLsLssLsL=1189
    },
    [6]={
      [9]={LMLsLMLLsLML=2}
    },
    [7]={
      [8]={LMLsLMLLsLML=2},
      [9]={LMLsLMLLsLML=2},
      LLLsLLLLLsLL=277,
      LsLsLsLsLsLs=450,
      LssLsLsLssLs=12,
      sLLsLsLsLLsL=660,
      ssLsssLsssLs=185,
      sssssLsssssL=478
    },
    [9]={
      LLLsLLLLLLLL=1067,
      LsLLLLLsLLLL=208,
      LssLsLsLssLs=634,
      sLLsLsLsLLsL=666,
      ssLsssLsssLs=781
    }
  },
  [11]={
    [2]={LsssLsssLsss=430},
    [3]={
      [8]={LLLLLLLLLsMs=776},
      sLLsLsLsLLsL=673,
      sLssLsLssLsL=1189,
      sLssLssLssLs=209
    },
    [4]={
      [6]={MsMsLMsMsMsL=137},
      sLsLssLsLsLs=1192,
      ssLsLsLssLsL=921
    },
    [5]={
      LLLsLLLLLsLL=863,
      LsssLsssLsss=475
    },
    [6]={
      [9]={LMLsLMLLsLML=2},
      LLLsLLLLLsLL=863,
      LssLsLsLssLs=32,
      sLLsLsLsLLsL=668
    },
    [7]={
      [10]={LMLsLMLLsLML=2},
      [9]={LMLsLMLLsLML=2},
      LssLsLsLssLs=31,
      sLLsLsLsLLsL=686,
      ssLsssLsssLs=177
    },
    [8]={
      LLLsLLLLLsLL=277,
      LsLsLsLsLsLs=450,
      LssLsLsLssLs=16,
      sLLsLsLsLLsL=669
    },
    [9]={
      LssLsLsLssLs=651,
      sLLsLsLsLLsL=646,
      sLssLsLssLsL=1085,
      sssssLsssssL=478
    },
    [10]={
      LsLLLLLsLLLL=208,
      LssLsLsLssLs=632,
      sLLsLsLsLLsL=649
    }
  },
  [12]={
    [5]={sLLsLsLsLLsL=685},
    [7]={
      [10]={LMLsLMLLsLML=2},
      [9]={LMLsLMLLsLML=2},
      LssLsLsLssLs=25,
      sLLsLsLsLLsL=659
    },
    [11]={
      LLsLLsLLsLLs=1254,
      LssLsLsLssLs=631,
      sLLsLsLsLLsL=650
    }
  },
  [13]={
    [2]={LLLsLLLLLsLL=1100},
    [3]={
      [10]={LLLLLLLLLsMs=776}
    },
    [4]={sLssLsLssLsL=1189},
    [5]={sLLsLsLsLLsL=684},
    [6]={LsssLsssLsss=475},
    [7]={
      [10]={LMLsLMLLsLML=2},
      LLLsLLLLLsLL=863,
      LssLsLsLssLs=29,
      sLLsLsLsLLsL=675
    },
    [8]={
      [10]={LMLsLMLLsLML=2},
      [11]={LMLsLMLLsLML=2},
      LssLsLsLssLs=6,
      sLLsLsLsLLsL=395
    },
    [9]={
      LssLsLsLssLs=11,
      sLLsLsLsLLsL=679
    },
    [10]={
      LssLsLsLssLs=26,
      sLLsLsLsLLsL=670,
      sLssLsLssLsL=1085
    },
    [11]={
      LssLsLsLssLs=641,
      sLLsLLsLLsLL=206,
      sLLsLsLsLLsL=656
    },
    [12]={
      LLsLLsLLsLLs=1254,
      LssLsLsLssLs=630,
      sLLsLsLsLLsL=652
    }
  },
  [14]={
    [8]={
      [11]={LMLsLMLLsLML=2}
    },
    [9]={
      [11]={LMLsLMLLsLML=2},
      [12]={LMLsLMLLsLML=2},
      LssLsLsLssLs=8,
      sLLsLsLsLLsL=654
    },
    [11]={
      LssLsLsLssLs=15,
      sLLsLsLsLLsL=655
    },
    [13]={
      LssLsLsLssLs=629,
      sLLsLsLsLLsL=667
    }
  },
  [15]={
    [4]={
      sLLsLsLsLLsL=633,
      sLssLsLssLsL=1189
    },
    [7]={LssLsLsLssLs=35},
    [8]={sLLsLsLsLLsL=682},
    [9]={
      [13]={LMLsLMLLsLML=2}
    },
    [10]={
      [12]={LMLsLMLLsLML=2},
      [13]={LMLsLMLLsLML=2}
    },
    [11]={
      LssLsLsLssLs=18,
      sLLsLsLsLLsL=683,
      sLssLsLssLsL=1085
    },
    [13]={LssLsLsLssLs=638},
    [14]={
      sLLsLsLsLLsL=657,
      ssLsssLsssLs=1212
    }
  },
  [16]={
    [3]={LsssLsssLsss=430},
    [10]={
      [13]={LMLsLMLLsLML=2}
    },
    [11]={
      [14]={LMLsLMLLsLML=2}
    },
    [13]={
      LssLsLsLssLs=627,
      sLLsLsLsLLsL=688,
      sLssLsLssLsL=1085
    },
    [15]={ssLsssLsssLs=1212}
  },
  [17]={
    [5]={
      [12]={LLLLLLLLLsMs=776}
    },
    [10]={
      [14]={LMLsLMLLsLML=2},
      LssLsLsLssLs=33
    },
    [11]={
      [14]={LMLsLMLLsLML=2},
      sLLsLsLsLLsL=643
    },
    [12]={LssLsLsLssLs=13},
    [13]={LssLsLsLssLs=22},
    [14]={
      LssLsLsLssLs=647,
      sssssLsssssL=478
    },
    [15]={LssLsLsLssLs=636},
    [16]={
      LLsLLsLLsLLs=1254,
      LssLsLsLssLs=628
    }
  },
  [18]={
    [5]={sLssLssLssLs=209},
    [11]={
      [14]={LMLsLMLLsLML=2}
    }
  },
  [19]={
    [7]={ssLsLsLssLsL=921},
    [8]={LssLsLsLssLs=1065},
    [11]={
      [14]={MLsLLMLLsMLL=451},
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
    [13]={sLsLsLLsLsLL=642}
  },
  [21]={
    [13]={LsLsLssLsLss=5}
  },
  [29]={
    [8]={sLssLssLssLs=209}
  }
},
[13]={
  [2]={
    [1]={
      LLLLLsLLLLLLs=147,
      LLsLLLsLLsLLs=838,
      LsLsLsLsLsLss=594,
      LsLsLsLssLsLs=387,
      LsLssLsLssLss=1101,
      LsssssLssssss=1230,
      sLLLLLLsLLLLL=1301,
      sLLLLLsLLLLLL=364,
      sLLsLLsLLsLLL=857,
      sLsLsLssLsLsL=1256,
      sLsLssLssLsLs=1278,
      sLssssssLssss=901
    }
  },
  [3]={
    [1]={
      LsLsLsLsLsLss=443,
      LsssLsssLssss=557,
      sLLsLLsLLsLLL=857,
      sLsLsLsLLsLsL=1222,
      ssLsssLssssLs=794,
      sssLssLssLssL=1171
    },
    [2]={
      LLLLLsLLLLLLs=877,
      LLsLLLsLLLsLL=397,
      LsLsLsLssLsLs=387,
      LsLssLsLssLss=1101,
      LssLssLssLsss=539,
      LsssssLssssss=1230,
      sLLLLLsLLLLLL=363,
      sLsLsLsLLsLsL=219,
      sssLsssLsssLs=1110
    }
  },
  [4]={
    [1]={
      LsLLsLLsLLLsL=520,
      LsLsLsLsLsLss=442,
      LsssLsssLssss=557,
      sLsLsLsLLsLsL=1222
    },
    [3]={
      LLLLLsLLLLLLs=877,
      LsLsLsLssLsLs=387,
      LsLssLsLssLss=1101,
      LssssLsssLsss=199,
      sLsLsLsLLsLsL=219
    }
  },
  [5]={
    [1]={
      [3]={MsMsLsMsMsLsM=1208},
      LsLLsLLsLLLsL=520,
      LsLsLsLsLsLss=1074,
      LsssLsssLssss=557,
      sLsLsLsLLsLsL=1222
    },
    [2]={
      LsLsLsLsLsLss=1153,
      LsssLsssLssss=557,
      LsssssLssssss=504,
      sLLsLLsLLsLLL=857,
      ssLssLssLsssL=1171,
      ssLsssLssssLs=794
    },
    [3]={
      LLLLLsLLLLLLs=877,
      LsLsLsLssLsLs=387,
      LsLssLsLssLss=1101,
      LssLssLssLsss=1059,
      LsssssLssssss=1230,
      sLLLLLsLLLLLL=363
    },
    [4]={LsLssLsLssLss=1101}
  },
  [6]={
    [1]={LsLLsLLsLLLsL=520}
  },
  [7]={
    [1]={
      LsssLsssLssss=1284,
      sLsLsLsLLsLsL=1222
    },
    [2]={
      LsLsLsLsLsLss=441,
      LsssLsssLssss=557,
      sLsLsLsLLsLsL=1222
    },
    [3]={
      LsLsLsLsLsLss=1153,
      LsssssLssssss=504,
      sLLsLLsLLsLLL=857
    },
    [4]={
      LsLssLsLssLss=1101,
      LsssssLssssss=1230
    },
    [5]={
      LLLLLsLLLLLLs=877,
      LLsLLLsLLLsLL=397,
      LsLssLsLssLss=1101,
      sLsLsLsLLsLsL=219
    }
  },
  [8]={
    [1]={LsssLsssLssss=1284},
    [3]={
      LsLsLsLsLsLss=1153,
      sLLsLLsLLsLLL=857,
      ssLssLssLsssL=1171,
      ssLsssLssssLs=794
    },
    [5]={
      LsLssLsLssLss=1101,
      LssLssLssLsss=1059,
      LsssssLssssss=1230,
      sLLLLLsLLLLLL=363
    }
  },
  [9]={
    [2]={
      LsLsLsLsLsLss=441,
      sLsLsLsLLsLsL=1222
    },
    [4]={
      LsLsLsLsLsLss=1153,
      LsssssLssssss=504
    },
    [5]={
      LsssssLssssss=1230,
      sLsLsLssLsLsL=1256
    }
  },
  [10]={
    [3]={
      LssLsLsLsLsLs=523,
      LsssLsssLssss=557,
      sLsLsLsLLsLsL=1222
    },
    [7]={LLsLLLsLLLsLL=397}
  },
  [11]={
    [2]={LsLLsLLsLLLsL=520},
    [3]={
      LsLsLsLsLsLss=441,
      LsssLsssLssss=557
    },
    [4]={
      LssLsLsLsLsLs=1153,
      sLLsLLsLLsLLL=857
    },
    [5]={LsLsLsLsLsLss=1153},
    [7]={LsLssLsLssLss=1101}
  },
  [12]={
    [5]={
      LsLsLsLsLsLss=1153,
      LsssssLssssss=504
    },
    [7]={LsssssLssssss=1230}
  },
  [13]={
    [3]={
      LsLsLsLsLsLss=441,
      sLsLsLsLLsLsL=1222
    },
    [5]={
      sLLsLLsLLsLLL=857,
      ssLsssLssssLs=794
    },
    [8]={sLLsLsLLsLLsL=893}
  },
  [14]={
    [3]={sLsLsLsLLsLsL=1222}
  },
  [15]={
    [2]={LsssLsssLssss=1284},
    [4]={
      LsLsLsLsLsLss=441,
      LsssLsssLssss=557
    }
  },
  [17]={
    [5]={LsssLsssLssss=558}
  },
  [18]={
    [5]={LsssLsssLssss=557}
  },
  [22]={
    [3]={LsssLsssLssss=1284}
  },
  [23]={
    [3]={LsssLsssLssss=1284}
  },
  [25]={
    [7]={LsssLsssLssss=557}
  }
},
[14]={
  [2]={
    [1]={
      LLLLLLLLLLLLLs=840,
      LLLLLLLsLLLLLs=477,
      LLLLLLsLLLLLLs=346,
      LLLLLLsLLLLLsL=1164,
      LLLLLsLLLLLLLs=322,
      LLLsLLLLsLLLLs=510,
      LLsLLLLLsLLLLL=323,
      LLsLLLsLLsLLLs=1291,
      LLsLLsLLsLLsLs=1185,
      LLsLsLsLLsLsLs=1257,
      LsLLLLLLLsLLLL=1165,
      LsLLsLLLsLLsLL=155,
      LsLLsLsLsLLsLs=426,
      LsLsLsLsLsLsLs=1115,
      LsLssLssLssLss=391,
      LsssLssssLssss=1158,
      sLssLssLssLsLs=595,
      sssLssssssLsss=207,
      sssLssssssssss=800
    }
  },
  [3]={
    [1]={
      LLLLLLsLLLLLLs=479,
      LLsLLLsLLsLLLs=269,
      LLsLLsLLsLLsLs=1185,
      LsLLsLLLsLLsLL=155,
      LsLsLssLsLsLss=1096,
      LsLssLssLssLss=391,
      sLsLsLsLsLsLsL=1273,
      ssLssLsssLssLs=320,
      ssLsssLssLsssL=358,
      sssLssssLsssLs=230
    },
    [2]={
      LLLLLLLLLLLLLs=840,
      LLLLLLsLLLLLLs=479,
      LLsLLLsLLsLLLs=269,
      LLsLLsLLsLLsLs=1185,
      LLsLsLsLLsLsLs=1257,
      LsLLsLsLsLLsLs=426,
      LsLsLsLsLsLsLs=1115,
      LsLssLssLssLss=391,
      LsssLssssLssss=1158,
      sLsssLssssLsss=1105,
      sssLssssssLsss=207,
      sssLssssssssss=800
    }
  },
  [4]={
    [1]={
      LLLLLLsLLLLLLs=479,
      LLsLLsLLsLLsLs=1116,
      LsLLsLLLsLLsLL=155,
      sLsLsLsLsLsLsL=1273,
      ssLssLsssLssLs=320
    },
    [3]={
      LLLLLLLLLLLLLs=840,
      LLsLLLsLLsLLLs=269,
      LLsLLsLLsLLsLs=1185,
      LLsLsLsLLsLsLs=1257,
      LsLsLsLsLsLsLs=1115,
      LssLsssLssLsss=429,
      LsssLssssLssss=1158,
      sssLssssssLsss=207,
      sssLssssssssss=800
    }
  },
  [5]={
    [1]={
      LLLLLLsLLLLLLs=479,
      LLsLLsLLsLLsLs=1116
    },
    [2]={
      LLLLLLsLLLLLLs=479,
      LLsLLsLLsLLsLs=1185,
      LLsLsLsLLsLsLs=1257,
      LsLLsLLLsLLsLL=155,
      LsLLsLsLsLLsLs=426,
      LsLssLssLssLss=391,
      LssssssLssssss=1270,
      sLsLsLsLsLsLsL=1273,
      ssLsssLssLsssL=358,
      sssLssssLsssLs=230
    },
    [3]={
      LLLLLLLLLLLLLs=840,
      LLLLLLsLLLLLLs=479,
      LLsLLsLLsLLsLs=1185,
      LLsLsLsLLsLsLs=1257,
      LsLLsLsLsLLsLs=426,
      LsLsLsLsLsLsLs=406,
      LsLssLssLssLss=391,
      LsssLssssLssss=1158,
      sLsssLssssLsss=1105,
      sssLssssssLsss=207,
      sssLssssssssss=800
    },
    [4]={
      LLsLLsLLsLLsLs=1185,
      LsLsLsLsLsLsLs=1115,
      LssLsssLssLsss=429
    }
  },
  [6]={
    [1]={LLLLLLsLLLLLLs=479},
    [5]={LsLsLsLsLsLsLs=1115}
  },
  [7]={
    [1]={LLLLLLsLLLLLLs=479},
    [2]={
      LLLLLLsLLLLLLs=479,
      LsLLsLLLsLLsLL=155,
      LsLsLssLsLsLss=1096,
      ssLssLsssLssLs=320
    },
    [3]={
      LLLLLLsLLLLLLs=479,
      LLsLsLsLLsLsLs=1257,
      LsLLsLsLsLLsLs=426,
      LsLssLssLssLss=391,
      LssssssLssssss=1270,
      sLsLsLsLsLsLsL=1273
    },
    [4]={
      LLLLLLLLLLLLLs=840,
      LsLLsLsLsLLsLs=426,
      LsLsLsLsLsLsLs=406,
      LsLssLssLssLss=391,
      sssLssssssssss=800
    },
    [5]={
      LLLLLLLLLLLLLs=840,
      LLsLsLsLLsLsLs=1257,
      LsLsLsLsLsLsLs=1115,
      LsssLssssLssss=1158,
      sssLssssssLsss=207
    },
    [6]={LsLsLsLsLsLsLs=1115}
  },
  [8]={
    [3]={
      LsLLsLLLsLLsLL=155,
      sssLssssLsssLs=230
    },
    [5]={
      LLLLLLLLLLLLLs=840,
      LLLLLsLLLLLLsL=480,
      LLsLsLsLLsLsLs=1257,
      LsLLsLsLsLLsLs=426,
      LsLssLssLssLss=391,
      LsssLssssLssss=1158,
      sLsssLssssLsss=1105,
      sssLssssssLsss=207,
      sssLssssssssss=800
    }
  },
  [9]={
    [2]={
      LLLLLLsLLLLLLs=479,
      LLsLLsLLsLLsLs=1116
    },
    [4]={
      LsLLsLsLsLLsLs=426,
      LsLssLssLssLss=391,
      LssssssLssssss=1270
    },
    [5]={
      LsLLsLsLsLLsLs=426,
      sssLssssssssss=800
    },
    [7]={
      LsLsLsLsLsLsLs=1115,
      LssLsssLssLsss=429
    },
    [8]={LLLLLsLLLLLLsL=480}
  },
  [10]={
    [1]={sLsLsLsLsLsLsL=139},
    [3]={
      LsLsLssLsLsLss=1096,
      ssLssLsssLssLs=320
    },
    [7]={LsssLssssLssss=1158}
  },
  [11]={
    [1]={sLsLsLsLsLsLsL=139},
    [4]={
      LsLLsLLLsLLsLL=155,
      ssLsssLssLsssL=358
    },
    [5]={LsLLsLsLsLLsLs=426},
    [6]={LsLLsLsLsLLsLs=426},
    [7]={
      LLLLLLLLLLLLLs=791,
      LsssLssssLssss=1158,
      sLsssLssssLsss=1105,
      sssLssssssssss=800
    }
  },
  [12]={
    [5]={
      LsLssLssLssLss=391,
      LssssssLssssss=1270
    },
    [7]={sssLssssssssss=800}
  },
  [13]={
    [4]={LsLsLssLsLsLss=1096},
    [8]={
      LLLLLLLLLLLLLs=840,
      sLsssLssssLsss=1105
    },
    [9]={LLLLLsLLLLLLsL=480},
    [10]={LssLsssLssLsss=429}
  },
  [14]={
    [3]={LLLLLLsLLLLLLs=479},
    [5]={ssLsssLssLsssL=358},
    [9]={
      sLsssLssssLsss=1105,
      sssLssssssssss=800
    }
  },
  [17]={
    [5]={ssLssLsssLssLs=320},
    [7]={LssssssLssssss=1270}
  },
  [22]={
    [9]={LssssssLssssss=1270}
  }
},
[15]={
  [2]={
    [1]={
      LLLsLLLLsLLLLsL=178,
      LLsLsLsLsLsLsLs=404,
      LsLLsLLsLLsLLsL=217,
      LsLssLsLsLsLsLs=899,
      sLLLLLLLLLLLLLL=203,
      sLLLLLLsLLLLLLL=1232,
      sLLLsLLLsLLLsLL=1177,
      sLsLLsLsLLsLsLL=1240,
      sLsLssLsLssLsLs=182,
      sssLsssLsssLssL=513
    }
  },
  [3]={
    [1]={
      LLsLLLLsLLLLsLL=186,
      LLsLsLsLsLsLsLs=404,
      LsLLsLLsLLsLLsL=211
    },
    [2]={
      LLLsLLLLsLLLLsL=178,
      LsLLsLLsLLsLLsL=211,
      LsLssLsLsLsLsLs=899,
      LssLsLssLsLssLs=1213,
      sLLLLLLsLLLLLLL=1231,
      sLLLsLLLsLLLsLL=1177,
      sLLsLLsLLsLLsLL=168,
      sLsLLsLsLLsLsLL=1240,
      sLsLssLsLssLsLs=182,
      sLssssLssssLsss=476,
      sLsssssssLsssss=902,
      sssLsssLsssLssL=513,
      sssssssssssLsss=1219
    }
  },
  [4]={
    [1]={
      LLsLLLLsLLLLsLL=186,
      sLsLssLsLssLsLs=1216,
      ssLsssLsssLssLs=796
    },
    [3]={
      LLLsLLLLsLLLLsL=178,
      LsLLsLLsLLsLLsL=217,
      sLLLLLLsLLLLLLL=1231,
      sLLLsLLLsLLLsLL=1177,
      sLLsLLsLLsLLsLL=168,
      sLsLLsLsLLsLsLL=1240,
      sLsLsLsLsLsLsLL=432,
      sLssssLssssLsss=476,
      sLsssssssLsssss=902,
      ssLssLssLssLssL=1245,
      sssLssssLssssLs=178,
      sssssssssssLsss=1262
    }
  },
  [5]={
    [1]={
      LLsLLLsLLsLLLsL=853,
      ssLsssLsssLssLs=796
    },
    [2]={
      LLLsLLLLsLLLLsL=178,
      LLsLsLsLsLsLsLs=404,
      LsLLsLLsLLsLLsL=211,
      LsLssLsLsLsLsLs=899,
      Lssssssssssssss=1133,
      sLLLLLLLLLLLLLL=203
    },
    [3]={
      LLLsLLLLsLLLLsL=178,
      LsLssLsLsLsLsLs=899,
      sLLLLLLsLLLLLLL=1231,
      sLLLsLLLsLLLsLL=1177,
      sLsLLsLsLLsLsLL=1240,
      sLsLssLsLssLsLs=182,
      ssLsLsLsLsLsLsL=852,
      sssLsssLsssLssL=513
    },
    [4]={
      LLLsLLLLsLLLLsL=178,
      sLLLLLLsLLLLLLL=1231,
      sLLsLLsLLsLLsLL=168,
      sLsLLsLsLLsLsLL=1240,
      sLsLsLsLsLsLsLL=432,
      sLssssLssssLsss=476,
      sLsssssssLsssss=902,
      ssLssLssLssLssL=1245
    }
  },
  [6]={
    [5]={
      sLLsLLsLLsLLsLL=168,
      sLsLLsLsLLsLsLL=1240,
      sLssssLssssLsss=476,
      ssLssLssLssLssL=1245
    }
  },
  [7]={
    [2]={LLsLLLLsLLLLsLL=186},
    [3]={
      LLsLLLLsLLLLsLL=186,
      LLsLsLsLsLsLsLs=404,
      LsLLsLLsLLsLLsL=211,
      sLLLLLLLLLLLLLL=203
    },
    [4]={
      LLLsLLLLsLLLLsL=178,
      LsLssLsLsLsLsLs=899,
      sLsLLsLsLLsLsLL=1240,
      sssLsssLsssLssL=513
    },
    [5]={
      LssLsLssLsLssLs=1213,
      sLLLLLLsLLLLLLL=1231,
      sLLLsLLLsLLLsLL=1177,
      sLsLLsLsLLsLsLL=1240,
      sLsssssssLsssss=902,
      ssLssLssLssLssL=1245,
      sssssssssssLsss=1262
    },
    [6]={
      LsLLsLLsLLsLLsL=217,
      sLssssLssssLsss=476,
      ssLssLssLssLssL=1245
    }
  },
  [8]={
    [3]={
      LLsLsLsLsLsLsLs=404,
      LsLLsLLsLLsLLsL=211,
      Lssssssssssssss=1133
    },
    [5]={
      LLsLsLsLsLsLsLs=404,
      sssssssssssLsss=1218
    }
  },
  [9]={
    [2]={ssLsssLsssLssLs=796},
    [4]={
      LLsLsLsLsLsLsLs=404,
      LssLsssLsssLsss=875,
      Lssssssssssssss=1133,
      sLLLLLLLLLLLLLL=203
    },
    [7]={
      sLsLsLsLsLsLsLL=432,
      ssLssLssLssLssL=1245
    }
  },
  [10]={
    [7]={
      LssLsLssLsLssLs=1213,
      sssssssssssLsss=1262
    }
  },
  [11]={
    [5]={LssLsssLsssLsss=875},
    [7]={
      sssLsssLsssLssL=513,
      sssssssssssLsss=1218
    },
    [8]={sssssssssssLsss=1262}
  },
  [12]={
    [7]={sssLsssLsssLssL=232}
  },
  [13]={
    [3]={ssLsssLsssLssLs=796},
    [5]={Lssssssssssssss=1133},
    [8]={sssLsssLsssLssL=513},
    [9]={sssssssssssLsss=1262}
  },
  [14]={
    [3]={ssLsssLsssLssLs=796},
    [9]={sssssssssssLsss=1218}
  },
  [17]={
    [4]={sLsLssLsLssLsLs=1216},
    [7]={Lssssssssssssss=1133},
    [11]={sssssssssssLsss=1218}
  },
  [18]={
    [13]={sssssssssssLsss=1262}
  },
  [19]={
    [4]={ssLsssLsssLssLs=796},
    [11]={sssLsssLsssLssL=232}
  },
  [20]={
    [13]={sssssssssssLsss=1218}
  },
  [21]={
    [5]={sLsLssLsLssLsLs=1216}
  }
}
}
return scales
