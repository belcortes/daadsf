# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
Neighborhood.delete_all
Zipcode.delete_all
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

n1 = Neighborhood.create(name: "Alamo Square")
n2 = Neighborhood.create(name: "Anza Vista")
n3 = Neighborhood.create(name: "Balboa Terrace")
n4 = Neighborhood.create(name: "Bayview - Hunter's Point")
n5 = Neighborhood.create(name: "Bernal Heights")
n6 = Neighborhood.create(name: "Castro Disctrict")
n7 = Neighborhood.create(name: "Chinatown")
n8 = Neighborhood.create(name: "Civic Center")
n9 = Neighborhood.create(name: "Cole Valley")
n10 = Neighborhood.create(name: "College Hill")
n11 = Neighborhood.create(name: "Corona Heights")
n12 = Neighborhood.create(name: "Cow Hollow")
n13 = Neighborhood.create(name: "Crocker-Amazon")
n14 = Neighborhood.create(name: "Diamond Heights")
n15 = Neighborhood.create(name: "Dogpatch")
n16 = Neighborhood.create(name: "Duboce Triangle")
n17 = Neighborhood.create(name: "Excelsior District")
n18 = Neighborhood.create(name: "Financial District")
n19 = Neighborhood.create(name: "Forest Hill")
n20 = Neighborhood.create(name: "Forest Knolls")
n21 = Neighborhood.create(name: "Glen Park")
n22 = Neighborhood.create(name: "Golden Gate Heights")
n23 = Neighborhood.create(name: "Haight-Ashbury")
n24 = Neighborhood.create(name: "Hayes Valley")
n25 = Neighborhood.create(name: "Ingleside Heights")
n26 = Neighborhood.create(name: "Ingleside Terrace")
n27 = Neighborhood.create(name: "Lakeshore")
n28 = Neighborhood.create(name: "Laurel Heights")
n29 = Neighborhood.create(name: "Little Hollywood")
n30 = Neighborhood.create(name: "Lone Mountain")
n31 = Neighborhood.create(name: "Lower Haight")
n32 = Neighborhood.create(name: "Marina District")
n33 = Neighborhood.create(name: "Merced Heights")
n34 = Neighborhood.create(name: "Midtown Terrace")
n35 = Neighborhood.create(name: "Miraloma Park")
n36 = Neighborhood.create(name: "Mission Bay")
n37 = Neighborhood.create(name: "Mission District")
n38 = Neighborhood.create(name: "Mission Dolores")
n39 = Neighborhood.create(name: "Mission Terrace")
n40 = Neighborhood.create(name: "Monterey Heights")
n41 = Neighborhood.create(name: "Mount Davidson Manor")
n42 = Neighborhood.create(name: "Nob Hill")
n43 = Neighborhood.create(name: "Noe Valley")
n44 = Neighborhood.create(name: "NoPa (North of Panhandle)")
n45 = Neighborhood.create(name: "North Beach")
n46 = Neighborhood.create(name: "Oceanview")
n47 = Neighborhood.create(name: "Outer Mission")
n48 = Neighborhood.create(name: "Pacific Heights")
n49 = Neighborhood.create(name: "Parkside")
n50 = Neighborhood.create(name: "Portola District")
n51 = Neighborhood.create(name: "Potrero Hill")
n52 = Neighborhood.create(name: "Presidio Heights")
n53 = Neighborhood.create(name: "Richmond District")
n54 = Neighborhood.create(name: "Russian Hill")
n55 = Neighborhood.create(name: "Sherwood Forest")
n56 = Neighborhood.create(name: "SoMa (South of Market)")
n57 = Neighborhood.create(name: "St. Francis Wood")
n58 = Neighborhood.create(name: "St. Mary's")
n59 = Neighborhood.create(name: "Sunnyside")
n60 = Neighborhood.create(name: "Sunset District")
n61 = Neighborhood.create(name: "Telegraph Hill")
n62 = Neighborhood.create(name: "Tenderloin")
n63 = Neighborhood.create(name: "Twin Peaks")
n64 = Neighborhood.create(name: "Union Square")
n65 = Neighborhood.create(name: "Upper Market")
n66 = Neighborhood.create(name: "Visitation Valley")
n67 = Neighborhood.create(name: "Western Addition")
n68 = Neighborhood.create(name: "West Portal")
n69 = Neighborhood.create(name: "Westwood Highlands")


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
r55 = Resource.create(street_number: 1001, street_name:'Potrero', street_type:'AVE', station_type:'Hospital', lat: 37.755413 , lng: -122.404625, location: 'SF')
r56 = Resource.create(street_number: 900, street_name:'Hyde', street_type:'ST', station_type:'Hospital', lat: 37.789630 , lng: -122.417004, location: 'SF')


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
