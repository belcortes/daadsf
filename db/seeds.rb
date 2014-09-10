# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
Neighborhood.delete_all
Zipcode.delete_all
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


z20 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94107')
z21 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94133')
z22 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94109')
z23 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94115')
z24 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94114')
z25 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94110')
z26 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94124')
z27 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94129')
z28 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94131')
z29 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94111')
z30 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94121')
z31 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94112')
z32 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94123')
z33 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94124')
z34 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94116')
z35 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94132')
z36 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94127')
z37 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94122')
z38 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94117')
z39 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94114')
z40 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94118')
z41 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94102')
z42 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94108')
z43 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94104')
z44 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94105')
z45 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94103')
z46 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94158')
z47 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94110')
z48 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94134')
z49 = Zipcode.create(city:'San Francisco', state:'CA', zip_number:'94130')

# San Francisco Police Stations, Fire Stations and Hospitals

r1 = Resource.create(street_number: 935, street_name:'Folsom', street_type:'ST', station_type:'Fire Station', lat:37.779453, lng:-122.404066, location: 'SF')
r2 = Resource.create(street_number: 1340, street_name:'POWELL', street_type:'ST', station_type:'Fire Station', lat:37.797032, lng:-122.40999, location: 'SF')
r3 = Resource.create(street_number: 1067, street_name:'POST', street_type:'ST', station_type:'Fire Station', lat:37.786817, lng:-122.419429, location: 'SF')
r4 = Resource.create(street_number: 1301, street_name:'TURK', street_type:'ST', station_type:'Fire Station', lat: 37.780512, lng: -122.43078, location: 'SF')
r5 = Resource.create(street_number: 135, street_name:'SANCHEZ', street_type:'ST', station_type:'Fire Station', lat: 37.767046, lng: -122.430779, location: 'SF')
r6 = Resource.create(street_number: 2300, street_name:'FOLSOM', street_type:'ST', station_type:'Fire Station', lat: 37.760352, lng: -122.415155, location: 'SF')
r7 = Resource.create(street_number: 36, street_name:'BLUXOME', street_type:'ST', station_type:'Fire Station', lat: 37.777261, lng: -122.396718, location: 'SF')
r8 = Resource.create(street_number: 2245, street_name:'JERROLD', street_type:'AVE', station_type:'Fire Station', lat: 37.74525, lng: -122.40124, location: 'SF')
r9 = Resource.create(street_number: 655, street_name:'PRESIDIO', street_type:'AVE', station_type:'Fire Station', lat: 37.785692, lng: -122.446685, location: 'SF')
r10 = Resource.create(street_number: 3880, street_name:'26TH', street_type:'ST', station_type:'Fire Station', lat: 37.748744, lng: -122.426444, location: 'SF')
r11 = Resource.create(street_number: 1145, street_name:'STANYAN', street_type:'ST', station_type:'Fire Station', lat: 37.763478, lng: -122.452642, location: 'SF')
r12 = Resource.create(street_number: 530, street_name:'SANSOME', street_type:'ST', station_type:'Fire Station', lat: 37.795552, lng: -122.401411, location: 'SF')
r13 = Resource.create(street_number: 551, street_name:'26TH', street_type:'AVE', station_type:'Fire Station', lat: 37.779006, lng: -122.485945, location: 'SF')
r14 = Resource.create(street_number: 1000, street_name:'OCEAN', street_type:'AVE', station_type:'Fire Station', lat: 37.723488, lng: -122.45288, location: 'SF')
r15 = Resource.create(street_number: 2251, street_name:'GREENWICH', street_type:'ST', station_type:'Fire Station', lat: 37.798662 , lng: -122.436692, location: 'SF')
r16 = Resource.create(street_number: 1295, street_name:'SHAFTER', street_type:'AVE', station_type:'Fire Station', lat: 37.727515 , lng: -122.385011, location: 'SF')
r17 = Resource.create(street_number: 1935, street_name:'32ND', street_type:'AVE', station_type:'Fire Station', lat: 37.750973 , lng: -122.490482, location: 'SF')
r18 = Resource.create(street_number: 390, street_name:'BUCKINGHAM', street_type:'WAY', station_type:'Fire Station', lat: 37.727841 , lng: -122.478923, location: 'SF')
r19 = Resource.create(street_number: 285, street_name:'OLYMPIA', street_type:'WAY', station_type:'Fire Station', lat: 37.751289 , lng: -122.455738, location: 'SF')
r20 = Resource.create(street_number: 1443, street_name:'GROVE', street_type:'ST', station_type:'Fire Station', lat: 37.775446 , lng: -122.440278, location: 'SF')
r21 = Resource.create(street_number: 1290, street_name:'16TH', street_type:'AVE', station_type:'Fire Station', lat: 37.763976 , lng: -122.473614, location: 'SF')
r22 = Resource.create(street_number: 1348, street_name:'45TH', street_type:'AVE', station_type:'Fire Station', lat: 37.761401 , lng: -122.504716, location: 'SF')
r23 = Resource.create(street_number: 100, street_name:'HOFFMAN', street_type:'AVE', station_type:'Fire Station', lat: 37.753099 , lng: -122.441176, location: 'SF')
r24 = Resource.create(street_number: 3305, street_name:'3RD', street_type:'ST', station_type:'Fire Station', lat: 37.746634 , lng: -122.386868, location: 'SF')
r25 = Resource.create(street_number: 80, street_name:'DIGBY', street_type:'ST', station_type:'Fire Station', lat: 37.739985 , lng: -122.433069, location: 'SF')
r26 = Resource.create(street_number: 1814, street_name:'STOCKTON', street_type:'ST', station_type:'Fire Station', lat: 37.802562 , lng: -122.409628, location: 'SF')
r27 = Resource.create(street_number: 299, street_name:'VERMONT', street_type:'ST', station_type:'Fire Station', lat: 37.766187 , lng: -122.404317, location: 'SF')
r28 = Resource.create(street_number: 441, street_name:'12TH', street_type:'AVE', station_type:'Fire Station', lat: 37.779862 , lng: -122.47092, location: 'SF')
r29 = Resource.create(street_number: 194, street_name:'PARK', street_type:'ST', station_type:'Fire Station', lat: 37.736453 , lng: -122.421201, location: 'SF')
r30 = Resource.create(street_number: 8, street_name:'CAPITAL', street_type:'ST', station_type:'Fire Station', lat: 37.710879 , lng: -122.45853, location: 'SF')
r31 = Resource.create(street_number: 499, street_name:'41ST', street_type:'AVE', station_type:'Fire Station', lat: 37.779475 , lng: -122.502448, location: 'SF')
r32 = Resource.create(street_number: 0, street_name:'PIER', street_type:'NA', station_type:'Fire Station', lat: 37.790218 , lng: -122.388457, location: 'SF')
r33 = Resource.create(street_number: 109, street_name:'OAK', street_type:'ST', station_type:'Fire Station', lat: 37.774936 , lng: -122.421206, location: 'SF')
r34 = Resource.create(street_number: 798, street_name:'WISCONSIN', street_type:'ST', station_type:'Fire Station', lat: 37.757421 , lng: -122.399164, location: 'SF')
r35 = Resource.create(street_number: 2150, street_name:'CALIFORNIA', street_type:'ST', station_type:'Fire Station', lat: 37.789531 , lng: -122.429817, location: 'SF')
r36 = Resource.create(street_number: 1091, street_name:'PORTOLA', street_type:'DR', station_type:'Fire Station', lat: 37.74011 , lng: -122.458727, location: 'SF')
r37 = Resource.create(street_number: 2155, street_name:'18TH', street_type:'AVE', station_type:'Fire Station', lat: 37.747641 , lng: -122.475236, location: 'SF')
r38 = Resource.create(street_number: 1325, street_name:'LEAVENWORTH', street_type:'ST', station_type:'Fire Station', lat: 37.793408 , lng: -122.41641, location: 'SF')
r39 = Resource.create(street_number: 2430, street_name:'SAN BRUNO', street_type:'AVE', station_type:'Fire Station', lat: 37.731556 , lng: -122.405608, location: 'SF')
r40 = Resource.create(street_number: 720, street_name:'MOSCOW', street_type:'ST', station_type:'Fire Station', lat: 37.716257 , lng: -122.431506, location: 'SF')
r41 = Resource.create(street_number: 1298, street_name:'GIRARD', street_type:'ST', station_type:'Fire Station', lat: 37.716658 , lng: -122.400258, location: 'SF')
r42 = Resource.create(street_number: 849, street_name:'AVENUE', street_type:'NA', station_type:'Fire Station', lat: 37.825182 , lng: -122.373959, location: 'SF')
r43 = Resource.create(street_number: 1415, street_name:'EVANS', street_type:'AVE', station_type:'Fire Station', lat: 37.741162 , lng: -122.385482, location: 'SF')
r44 = Resource.create(street_number: 218, street_name:'LINCOLN', street_type:'BLVD', station_type:'Fire Station', lat: 37.801507 , lng: -122.455489, location: 'SF')
r45 = Resource.create(street_number: 766, street_name:'VALLEJO', street_type:'ST', station_type:'Police Station', lat: 37.798659 , lng: -122.409957, location: 'SF')
r46 = Resource.create(street_number: 850, street_name:'BRYANT', street_type:'ST', station_type:'Police Station', lat: 37.775431 , lng: -122.403934, location: 'SF')
r47 = Resource.create(street_number: 201, street_name:'WILLIAMS', street_type:'ST', station_type:'Police Station', lat: 37.729788 , lng: -122.397934, location: 'SF')
r48 = Resource.create(street_number: 630, street_name:'VALENCIA', street_type:'ST', station_type:'Police Station', lat: 37.762851 , lng: -122.422005, location: 'SF')
r49 = Resource.create(street_number: 1125, street_name:'FILMORE', street_type:'ST', station_type:'Police Station', lat: 37.780188 , lng: -122.432322, location: 'SF')
r50 = Resource.create(street_number: 1899, street_name:'WALLER', street_type:'ST', station_type:'Police Station', lat: 37.767797 , lng: -122.455284, location: 'SF')
r51 = Resource.create(street_number: 461, street_name:'6TH', street_type:'AVE', station_type:'Police Station', lat: 37.780004 , lng: -122.464317, location: 'SF')
r52 = Resource.create(street_number: 1, street_name:'JOHN YOUNG', street_type:'LN', station_type:'Police Station', lat: 37.724678 , lng: -122.446214, location: 'SF')
r53 = Resource.create(street_number: 2345, street_name:'24TH', street_type:'AVE', station_type:'Police Station', lat: 37.743745 , lng: -122.481477, location: 'SF')
r54 = Resource.create(street_number: 301, street_name:'EDDY', street_type:'ST', station_type:'Police Station', lat: 37.783665 , lng: -122.412901, location: 'SF')
r55 = Resource.create(name: 'hospital name2',street_number: 1001, street_name:'Potrero', street_type:'AVE', station_type:'Hospital', lat: 37.755413 , lng: -122.404625, location: 'SF')
r56 = Resource.create(name: 'hospital name', street_number: 900, street_name:'Hyde', street_type:'ST', station_type:'Hospital', lat: 37.789630 , lng: -122.417004, location: 'SF')


r57 = Resource.create( name:"CALIFORNIA PACIFIC MED CTR-CALIFORNIA EAST",street_number: 3698, street_name:"SACRAMENTO", street_type:"STREET",station_type: "Hospital",lat:  37.7874023244287, lng: -122.453549504635, location: 'SF')
r58 = Resource.create( name:"CALIFORNIA PACIFIC MED CTR-CALIFORNIA WEST",street_number: 3700, street_name:"CALIFORNIA", street_type:"STREET",station_type: "Hospital",lat:  37.7861440606815, lng: -122.455911660361, location: 'SF')
r59 = Resource.create( name:"CALIFORNIA PACIFIC MED CTR-DAVIES CAMPUS", street_name:"CASTRO AND DUBOCE", street_type:"STREETS",station_type: "Hospital",lat:  37.769054188445, lng: -122.435817695964, location: 'SF')
r60 = Resource.create( name:"CALIFORNIA PACIFIC MED CTR-PACIFIC CAMPUS",street_number: 2333, street_name:"BUCHANAN", street_type:"STREET",station_type: "Hospital",lat:  37.7914244373881, lng: -122.431037550901, location: 'SF')
r61 = Resource.create( name:"CALIFORNIA PACIFIC MEDICAL CENTER - ST. LUKE'S CAMPUS",street_number: 3555, street_name:"CESAR CHAVEZ", street_type:"STREET",station_type: "Hospital",lat:  37.7480429580925, lng: -122.421248849645, location: 'SF')
r62 = Resource.create( name:"CHINESE HOSPITAL",street_number: 845, street_name:"JACKSON", street_type:"STREET",station_type: "Hospital",lat:  37.7956620897215, lng: -122.409172332474, location: 'SF')
r63 = Resource.create( name:"KAISER FND HOSP - SAN FRANCISCO",street_number: 2425, street_name:"GEARY", street_type:"BOULEVARD",station_type: "Hospital",lat:  37.7826832430279, lng: -122.443706764733, location: 'SF')
r64 = Resource.create( name:"LAGUNA HONDA HOSPITAL AND REHABILITATION CENTER",street_number: 375, street_name:"LAGUNA HONDA", street_type:"BOULEVARD",station_type: "Hospital",lat:  37.7476257333769, lng: -122.458717789552, location: 'SF')
r65 = Resource.create( name:"SAN FRANCISCO GENERAL HOSPITAL",street_number: 1001, street_name:"POTRERO", street_type:"AVENUE",station_type: "Hospital",lat:  37.7560636303259, lng: -122.407719719518, location: 'SF')
r66 = Resource.create( name:"ST. FRANCIS MEMORIAL HOSPITAL",street_number:900, street_name:"HYDE", street_type:" STREET",station_type: "Hospital",lat:  37.7895679837441, lng: -122.417066210552, location: 'SF')
r67 = Resource.create( name:"ST. MARY'S MEDICAL CENTER, SAN FRANCISCO",street_number:450, street_name:"STANYAN", street_type:" STREET",station_type: "Hospital",lat:  37.7738044863286, lng: -122.454406792939, location: 'SF')
r68 = Resource.create( name:"UCSF MEDICAL CENTER",street_number:505, street_name:"PARNASSUS", street_type:" AVENUE",station_type: "Hospital",lat:  37.7633673381329, lng: -122.45856737695, location: 'SF')
r69 = Resource.create( name:"UCSF MEDICAL CENTER AT MOUNT ZION",street_number:1600, street_name:"DIVISADERO", street_type:" STREET",station_type: "Hospital",lat:  37.7847768558434, lng: -122.439725807994, location: 'SF')
r70 = Resource.create( name:"ON LOK 30TH STREET COMMUNITY CENTER",street_number:225, street_name:"30TH", street_type:"STREET",station_type: "Senior Health",lat:  37.7421528838501, lng: -122.425108338794, location: 'SF')
r71 = Resource.create( name:"AHF HEALTHCARE CENTER - SAN FRANCISCO",street_number:1025, street_name:"HOWARD", street_type:" STREET",station_type: "Sexual Health Clinic",lat:  37.7791870138907, lng: -122.407791061158, location: 'SF')
r72 = Resource.create( name:"BAART MARKET CLINIC",street_number:1111, street_name:"MARKET", street_type:" STREET, 1ST FLOOR",station_type: "Drug Treatment",lat:  37.7802172036299, lng: -122.412790748867, location: 'SF')
r73 = Resource.create( name:"BAART TURK STREET CLINIC",street_number:433, street_name:"TURK", street_type:" STREET",station_type: "Drug Treatment",lat:  37.7824632250282, lng: -122.416346565548, location: 'SF')
r74 = Resource.create( name:"CHINESE COMMUNITY HEALTH SERVICES",street_number:1800, street_name:"31ST", street_type:" AVENUE",station_type: "General Health",lat:  37.7534127813936, lng: -122.489274627858, location: 'SF')

# r75 = Resource.create( name:"CHINESE HOSPITAL'S EXCELSIOR HEALTH SERVICES","888 PARIS STREET","Community Clinic",station_type: "General Health",lat:  37.7158264616097, lng: -122.439401018421)
# r76 = Resource.create( name:"CURRY SENIOR CENTER","333 TURK STREET","Community Clinic",station_type: "Senior Health",lat:  37.7826705449233, lng: -122.414581619513)
# r77 = Resource.create( name:"DRUG DETOXIFICATION, REHAB AND AFTER CARE SVS. PROG.","529 CLAYTON STREET","Free Clinic","Drug Treatment",lat:  37.7702946062309, lng: -122.448703015551)
# r78 = Resource.create( name:"FIRST RESORT","450 SUTTER ST., STE. 1740","Community Clinic","Womens Health",lat:  37.7893479656049, lng: -122.407783038832)
# r79 = Resource.create( name:"GLIDE HEALTH SERVICES","330 ELLIS STREET","Community Clinic",station_type: "General Health",lat:  37.7850949708625, lng: -122.411649525809)
# r80 = Resource.create( name:"HAIGHT ASHBURY FREE MEDICAL CLINIC","558 CLAYTON STREET","Free Clinic","Free General Health",lat:  37.7701915506795, lng: -122.448580443094)
# r81 = Resource.create( name:"HAIGHT ASHBURY INTEGRATED CARE CENTER","1735 MISSION ST","Community Clinic","Free General Health",lat:  37.7694837958367, lng: -122.419917501537)
# r82 = Resource.create( name:"INSTITUTE ON AGING","2700 GEARY BLVD.","Community Clinic",station_type: "Senior Health",lat:  37.7824678085806, lng: -122.448343193274)
# r83 = Resource.create( name:"INSTITUTO FAMILIAR DE LA RAZA - OUTPATIENT","2919 MISSION STREET","Community Clinic","Cultural General Health",lat:  37.7503437056765, lng: -122.418195510265)
# r84 = Resource.create( name:"LIFEWAYS PACE AT THE CORONET","3575 GEARY BLVD","Community Clinic",station_type: "General Health",lat:  37.7812336432758, lng: -122.457667617541)
# r85 = Resource.create( name:"LYON-MARTIN WOMENS HEALTH SERVICES","1748 MARKET STREET","Community Clinic","Womens Health",lat:  37.7724019360336, lng: -122.422812354204)
# r86 = Resource.create( name:"MERRIOUNS PSYCHOLOGICAL INSTITUTE","242 MYRTLE STREET","Community Clinic","Mental Health",lat:  37.7851815146524, lng: -122.422043909381)
# r87 = Resource.create( name:"MISSION NEIGHBORHOOD HEALTH CENTER","240 SHOTWELL STREET","Community Clinic","Cultural General Health",lat:  37.7647276834345, lng: -122.416353442225)
# r88 = Resource.create( name:"MISSION NEIGHBORHOOD HEALTH CENTER - VALENCIA CLINIC","1647 VALENCIA STREET","Community Clinic","Cultural General Health",lat:  37.7470001479503, lng: -122.420080100331)
# r89 = Resource.create( name:"MISSION NEIGHBORHOOD HEALTH CTR.-EXCELSIOR CLINIC","4434 MISSION STREET","Community Clinic","Cultural General Health",lat:  37.726681581284, lng: -122.433376754897)
# r90 = Resource.create( name:"MISSION NEIGHBORHOOD RESOURCE CENTER","165 CAPP ST","Community Clinic","Cultural General Health",lat:  37.7640343960752, lng: -122.418554770474)
# r91 = Resource.create( name:"NATIVE AMERICAN HEALTH CENTER","160 CAPP STREET","Community Clinic","Cultural General Health",lat:  37.7641173338716, lng: -122.41866508809)
# r92 = Resource.create( name:"NORTH EAST MEDICAL SERVICES","1520 STOCKTON STREET","Community Clinic","Cultural General Health",lat:  37.7998973880673, lng: -122.409025225587)
# r93 = Resource.create( name:"NORTH EAST MEDICAL SERVICES - NORIEGA","1450 NORIEGA STREET","Community Clinic","Cultural General Health",lat:  37.7541278405477, lng: -122.479400159271)
# r94 = Resource.create( name:"NORTH EAST MEDICAL SERVICES - SAN BRUNO AVENUE","2574 SAN BRUNO AVE","Community Clinic","Cultural General Health",lat:  37.7290881481045, lng: -122.404260453933)
# r95 = Resource.create( name:"NORTH EAST MEDICAL SERVICES-LELAND AVENUE","82 LELAND AVENUE","Community Clinic","Cultural General Health",lat:  37.7118270208516, lng: -122.405249390901)
# r96 = Resource.create( name:"ON LOK SENIOR HEALTH SERVICES","1000 MONTGOMERY STREET","Community Clinic",station_type: "Senior Health",lat:  37.7984672677067, lng: -122.403855941399)
# r97 = Resource.create( name:"ON LOK SENIOR HEALTH SERVICES - BUSH ST","1333 BUSH STREET","Community Clinic",station_type: "Senior Health",lat:  37.7888231308589, lng: -122.419046374695)
# r98 = Resource.create( name:"ON LOK SENIOR HEALTH SERVICES - POWELL","1441 POWELL STREET","Community Clinic",station_type: "Senior Health",lat:  37.7978839898135, lng: -122.410372839177)
# r99 = Resource.create( name:"ON LOK SENIOR HEALTH SERVICES-MISSION CENTER","4430 MISSION STREET","Community Clinic",station_type: "Senior Health",lat:  37.7267401396442, lng: -122.433293708794)
# r100 = Resource.create( name:"PLANNED PARENTHOOD GOLDEN GATE","815 EDDY STREET","Community Clinic","Family General Health",lat:  37.7827634584454, lng: -122.421545646141)
# r101 = Resource.create( name:"PLANNED PARENTHOOD SAN FRANCISCO CENTER","1650 VALENCIA STREET","Community Clinic","Family General Health",lat:  37.7461189444301, lng: -122.420123548451)
# r102 = Resource.create( name:"RICHMOND MAXI-CENTER","3626 BALBOA STREET","Community Clinic","Cultural General Health",lat:  37.7757571356042, lng: -122.497614168394)
# r103 = Resource.create( name:"SAN FRANCISCO FREE CLINIC","4900 CALIFORNIA STREET","Free Clinic","Free General Health",lat:  37.7845877767315, lng: -122.47009063256)
# r104 = Resource.create( name:"SOUTH OF MARKET HEALTH CENTER","229 7TH STREET","Community Clinic",station_type: "General Health",lat:  37.7776606923431, lng: -122.408886412434)
# r105 = Resource.create( name:"ST. ANTHONY MEDICAL CLINIC","150 GOLDEN GATE AVE","Free Clinic","Free General Health",lat:  37.7819773510047, lng: -122.413172343401)
# r106 = Resource.create( name:"ST. JAMES INFIRMARY","1372 MISSION ST.","Community Clinic","Sexual Health Clinic",lat:  37.7756177837849, lng: -122.415576780458)
# r107 = Resource.create( name:"ST. LUKE'S HEALTH CARE CENTER - ADULT CLINIC","1580 VALENCIA STREET","Community Clinic",station_type: "General Health",lat:  37.7475673980591, lng: -122.420233557261)
# r108 = Resource.create( name:"ST. LUKE'S HEALTH CARE CENTER - PEDIATRIC CLINIC","1580 VALENCIA ST","Community Clinic","Youth Health",lat:  37.7475673980591, lng: -122.420233557261)
# r109 = Resource.create( name:"ST. LUKE'S HEALTH CARE CENTER - WOMEN'S CLINIC","1580 VALENCIA STREET","Community Clinic","Womens Health",lat:  37.7475673980591, lng: -122.420233557261)
# r110 = Resource.create( name:"ASIAN & PACIFIC ISLANDER WELLNESS CENTER","730 POLK STREET","Community Clinic","Cultural General Health",lat:  37.7835866531421, lng: -122.419190421982)
# r111 = Resource.create( name:"WOMAN'S COMMUNITY CLINIC/TIDES CENTER","1833 FILLMORE STREET","Community Clinic","Womens Health",lat:  37.7865243971326, lng: -122.433383091083)
# r112 = Resource.create( name:"Castro-Mission Health Center","3850 17th Street ","Community Health Network",NA,lat:  37.7627177236165, lng: -122.431840670589)
# r113 = Resource.create( name:"Children's Health Center at SFGH","1001 Potrero Ave","Community Health Network",NA,lat:  37.7557795096548, lng: -122.406195661879)
# r114 = Resource.create( name:"Chinatown Health Center","1490 Mason Street","Community Health Network",NA,lat:  37.7969306240681, lng: -122.411772220157)
# r115 = Resource.create( name:"Family Health Center at SFGH","995 Potrero Avenue","Community Health Network",NA,lat:  37.7569032093825, lng: -122.406631497483)
# r116 = Resource.create( name:"General Medical Clinic at SFGH","1001 Potrero Ave","Community Health Network",NA,lat:  37.7557795096548, lng: -122.406195661879)
# r117 = Resource.create( name:"Maxine Hall Health Center","1301 Pierce Street","Community Health Network",NA,lat:  37.7819379961741, lng: -122.435869428973)
# r118 = Resource.create( name:"Ocean Park Health Center","1351 24th Avenue","Community Health Network",NA,lat:  37.7623808286701, lng: -122.482494947865)
# r119 = Resource.create( name:"Potrero Hill Health Center","1050 Wisconsin Street","Community Health Network",NA,lat:  37.7542706901466, lng: -122.398735281794)
# r120 = Resource.create( name:"Silver Avenue Family Health Center","1525 Silver Avenue","Community Health Network",NA,lat:  37.7322274448348, lng: -122.406517455449)
# r121 = Resource.create( name:"Southeast Health Center","2401 Keith Street","Community Health Network",NA,lat:  37.7259104866367, lng: -122.392466554487)
# r122 = Resource.create( name:"3rd Street Youth Center & Clinic","5190 3rd Street ","Community Health Network",NA,lat:  37.730862046278, lng: -122.39220069762)
# r123 = Resource.create( name:"San Francisco City Clinic","356 7th Street","Community Health Network",NA,lat:  37.7760443023774, lng: -122.407029454185)
# r124 = Resource.create( name:"Adult Immunization & Travel Clinic","101 Grove St","Community Health Network",NA,lat:  37.7783837178964, lng: -122.418695719901)
# r125 = Resource.create( name:"Breast & Cervical Cancer Services","30 Van Ness Avenue","Community Health Network",NA,lat:  37.7758775723219, lng: -122.419355775527)
# r126 = Resource.create( name:"Housing and Urban Health Clinic","234 Eddy Street","Community Health Network",NA,lat:  37.784137854267, lng: -122.411542475006)
# r127 = Resource.create( name:"Tom Waddell Health Center","50 Lech Walesa","Community Health Network",NA,lat:  37.7779784122703, lng: -122.418539428483)
# r128 = Resource.create( name:"Women's Health Center","1001 Potrero Ave.","Community Health Network",NA,lat:  37.7561744697543, lng: -122.406594710673)
# r129 = Resource.create( name:"Balboa Teen Health Center","1000 Cayuga Ave","Community Health Network",NA,lat:  37.722070480904, lng: -122.439828826256)
# r130 = Resource.create( name:"Cole Street Clinic","555 Cole Street","Community Health Network",NA,lat:  37.7699919320792, lng: -122.450374000471)
# r131 = Resource.create( name:"Larkin Street Medical Clinic","1138 Sutter St","Community Health Network",NA,lat:  37.787942237966, lng: -122.419121802428)
# r132 = Resource.create( name:"Special Programs for Youth","375 Woodside Avenue","Community Health Network",NA,lat:  37.7457170271602, lng: -122.452267081743)
# r133 = Resource.create( name:"Mission Neighborhood Health Centers-LPC","1663 Mission St","Community Health Network",NA,lat:  37.7712583317568, lng: -122.419488702884)
# r134 = Resource.create( name:"North East Medical Services-Taraval","2308 Taraval Street","Community Health Network",NA,lat:  37.742408425782, lng: -122.491040505083)


# SF Zip Code Connector

z20.resources << r1 << r7 << r34
z21.resources << r2 << r26 << r45
z22.resources << r3 << r38 << r56
z23.resources << r4 << r35 << r49 << r9
z33.resources << r8 << r24
z28.resources << r10 << r11 << r25
z29.resources << r12
z30.resources << r13 << r31
z31.resources << r14 << r30 << r40 << r52
z32.resources << r15
z33.resources << r16 << r43 << r47
z34.resources << r17 << r37 << r53
z35.resources << r18
z36.resources << r19 << r36
z38.resources << r20 << r50
z37.resources << r21 << r22
z39.resources << r23
z45.resources << r27 << r46
z40.resources << r28 << r51
z47.resources << r29 << r48
z44.resources << r32
z41.resources << r33 << r54
z48.resources << r39 << r41
z49.resources << r42
z27.resources << r44
z25.resources << r55

# DC Zip Code Connector

# z1.resources << r57 << r58 << r59 << r61 << r77 << r88 << r93 << r98 << r99 << r103
# z2.resources << r65 << r67 << r94 << r104
# z3.resources << r63 << r72 << r95
# z4.resources << r70
# z5.resources << r60 << r83
# z6.resources << r82 << r85
# z7.resources << r64 << r75 << r92 << r96
# z8.resources << r66 << r111
# z9.resources << r68 << r76 << r78 << r102 << r105
# z12.resources << r74 << r106
# z13.resources << r71
# z14.resources << r80
# z15.resources << r81 << r84 << r90
# z16.resources << r69 << r73 << r86 << r91 << r97 << r100 << r107
# z17.resources << r62 << r89 << r101
# z18.resources << r55 << r79
# z19.resources << r56 << r110
# z53.resources << r87 
