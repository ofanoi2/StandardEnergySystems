# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Workday.destroy_all
Building.destroy_all
Meter.destroy_all

User.create! [	
  { name: "Oluseye Fanoiki", email: "oluseye@standardenergysystems.com", password: "abc1234#", user_role: "1" },
  { name: "Jon Doe", email: "jon@standardenergysystems.com", password: "1234abc#", user_role: "0" }
]

Workday.create! [
  { title: "Workday 1", workday_type: "Suburb"},	
  { title: "Workday 2", workday_type: "Suburb"},
  { title: "Workday 3", workday_type: "Suburb"},
  { title: "Workday 4", workday_type: "Suburb"},
  { title: "Workday 5", workday_type: "Suburb"},
  { title: "Workday 6", workday_type: "Suburb"},
  { title: "Workday 7", workday_type: "Suburb"},
  { title: "Workday 8", workday_type: "Suburb"},
  { title: "Workday 9", workday_type: "Suburb"},
  { title: "Workday 10", workday_type: "Suburb"},
  { title: "Workday 11", workday_type: "Suburb"},  
  { title: "Workday 12", workday_type: "Suburb"},
  { title: "Workday 13", workday_type: "Suburb"},
  { title: "Workday 14", workday_type: "Suburb"},
  { title: "Workday 15", workday_type: "Suburb"},
  { title: "Workday 16", workday_type: "Suburb"},
  { title: "Workday 17", workday_type: "Suburb"},
  { title: "Workday 18", workday_type: "Suburb"},  
  { title: "Workday 21", workday_type: "Suburb"},
  { title: "Workday 22", workday_type: "Suburb"},	
  { title: "Workday 1", workday_type: "Downtown"},	
  { title: "Workday 2", workday_type: "Downtown"},
  { title: "Workday 3", workday_type: "Downtown"},
  { title: "Workday 5", workday_type: "Downtown"},
  { title: "Workday 6", workday_type: "Downtown"},
  { title: "Workday 7", workday_type: "Downtown"},
  { title: "Workday 8", workday_type: "Downtown"},
  { title: "Workday 9", workday_type: "Downtown"},
  { title: "Workday 10", workday_type: "Downtown"},
  { title: "Workday 12", workday_type: "Downtown"},
  { title: "Workday 13", workday_type: "Downtown"},
  { title: "Workday 14", workday_type: "Downtown"},
  { title: "Workday 15", workday_type: "Downtown"},
  { title: "Workday 16", workday_type: "Downtown"},
  { title: "Workday 17", workday_type: "Downtown"},
  { title: "Workday 21", workday_type: "Downtown"},
  { title: "Workday 22", workday_type: "Downtown"}
]

# Workday.all.each do |workday|  
# end

w1s = Workday.find_by(title: "Workday 1", workday_type: "Suburb")
w1s.buildings.create! [
   { building_number: "05551" , building_name: "COMPLETE OBEDIENCE DOG TRAINING", building_address: "5551 State Road, Parma OH 44134", active_yn: "0" },
   { building_number: "08151" , building_name: "CROWN CENTER - GAS METERS", building_address: "5005 Rockside Road, Independence OH 44131", active_yn: "1" },
   { building_number: "11001" , building_name: "REALTY ONE", building_address: "34125 Solon Road, Solon OH 44139", active_yn: "1", jajo:"1" },
   { building_number: "11003" , building_name: "6200", building_address: "6200 Enterprise Pkwy, Solon OH 44139", active_yn: "1", jajo:"1" },
   { building_number: "11004" , building_name:"RETAIL BUILDING", building_address:"6050 ENTERPRISE PKWY 44139", active_yn:"1", jajo:"1" },
   { building_number: "11033" , building_name:"SOLON MEDICAL CAMPUS", building_address:"33001 SOLON RD.   44139", active_yn:"1" },
   { building_number: "11040" , building_name:"SOLON EXEC.", building_address:"32333 AURORA ROAD   44139", active_yn:"1" },
   { building_number: "11042" , building_name:"CENTRE POINTE", building_address:"34055 SOLON RD.   44139", active_yn:"1" },
   { building_number: "11050" , building_name:"WRAP TITE, SITE 2", building_address:"6075 COCHRAN ROAD   44139", active_yn:"1" },
   { building_number: "11052" , building_name:"BENCHMARK OFFICE CENTER I", building_address:"5910 HARPER ROAD SOLON OH   44139", active_yn:"1" },
   { building_number: "11053" , building_name:"BENCHMARK OFFICE CENTER II", building_address:"5900 HARPER ROAD SOLON OH   44139", active_yn:"1" },
   { building_number: "11060", building_name:"AURORA ROAD REALTY", building_address:"31000 AURORA RD.   44139", active_yn:"1" },
   { building_number: "11067", building_name:"LDI CENTER", building_address:"30700 CARTER STREET   44139", active_yn:"1" },
   { building_number: "11082", building_name:"PIONEER BUILDING", building_address:"4800 EAST 131ST STREET   44105", active_yn:"1" },
   { building_number: "11095", building_name:"32000 AURORA ROAD", building_address:"32000 AURORA ROAD   44139", active_yn:"1" },
   { building_number: "11300", building_name:"CARNEGIE CORPORATE PLAZA", building_address:"6190 COCHRAN ROAD", active_yn:"1", jajo:"1" },
   { building_number: "11400", building_name:"6440 SOM CENTER ROAD", building_address:"6440 SOM CENTER ROAD, SOLON OH 44139", active_yn:"1", jajo:"1" },
   { building_number: "11900", building_name:"4115/4117 GIFFORD", building_address:"CLEVELAND OH 44109", active_yn:"1" }
]

w1d = Workday.find_by(title: "Workday 1", workday_type: "Downtown")
w1d.buildings.create! [
   { building_number: "99018", building_name:"6700 EUCLID GAS/WATER METERS", building_address:"6700 EUCLID CLEVELAND 44103", active_yn:"1" },
   { building_number: "99020", building_name:"ILLUMINATING BUILDING", building_address:"55 PUBLIC SQUARE", active_yn:"1" },
   { building_number: "99023", building_name:"THE BLOCH BUILDING", building_address:"2310 SUPERIOR AVE", active_yn:"1" },
   { building_number: "99030", building_name:"DOUBLETREE", building_address:"1111 LAKESIDE AVE", active_yn:"1" },
   { building_number: "99040", building_name:"ROCK & ROLL HALL OF FAME", building_address:"CELL SITE: CL34XC363", active_yn:"1" },
   { building_number: "99050", building_name:"KIRKWOOD INDUSTRIES, INC.", building_address:"4855 WEST 130TH STREET", active_yn:"1" },
   { building_number: "99060", building_name:"4855", building_address:"4855 WEST 130TH STREET", active_yn:"1" },
   { building_number: "99065", building_name:"MURAL PROPERTIES", building_address:"11340 BROOKPARK ROAD", active_yn:"1" },
   { building_number: "99123", building_name:"2320 LOFTS", building_address:"2320 SUPERIOR AVE", active_yn:"1" },
   { building_number: "99330", building_name:"CHURCH SQUARE HOLDINGS, LLC", building_address:"7901-8101 EUCLID AVE CLEVELAND OH 44108", active_yn:"1" }
]

w2s = Workday.find_by(title: "Workday 2", workday_type: "Suburb")
w2s.buildings.create! [
  { building_number: "00005", building_name: "FENCORP BUILDING", building_address: "26202 DETROIT RD 44145", active_yn:"1" },
  { building_number: "00010", building_name: "CLEVELAND WELDING", building_address: "2180 W 114TH ST 44102", active_yn:"1" },
  { building_number: "00012", building_name: "4820 VALLEY PARKWAY", building_address:" 4820 VALLEY PKWY 44126", active_yn:"1" },
  { building_number: "00014", building_name: "PARK WEST", building_address: "20545 CENTER RIDGE RD 44116", active_yn:"1" },
  { building_number: "00015", building_name: "WESTGATE TOWER", building_address: "20525 CENTER RIDGE RD 44116", active_yn:"1" },
  { building_number: "00019", building_name: "PLAZA WEST", building_address: "20200 CENTER RIDGE RD 44116", active_yn:"1" },
  { building_number: "00040", building_name: "ROCKY RIVER PROFESSIONAL ARTS BUILDING", building_address: "21851 CENTER RIDGE RD 44116", active_yn:"1" },
  { building_number: "00047", building_name: "FAIRVIEW MEDICAL OFFICE BUILDING", building_address: "18099 LORAIN AVE 44126", active_yn:"1" },
  { building_number: "00053", building_name: "NEW YORK COMMUNITY BANK", building_address: "22255 CENTER RIDGE RD 44116", active_yn:"1" },
  { building_number: "00060", building_name: "WESTGATE PROFESSIONAL CENTER", building_address: "20800 WESTGATE MEDICAL ARTS BUILDING 44126", active_yn:"1" },
  { building_number: "00080", building_name: "SHOREWEST OFFICE BUILDING", building_address: "20575 CENTER RIDGE RD 44116", active_yn:"1" },
  { building_number: "00090", building_name: "830 CANTERBURY RD", building_address: "830 CANTERBURY RD 44145", active_yn:"1" },
  { building_number: "00500", building_name: "HEADLEY AVE", building_address: "W 117TH CLEVELAND, OH 44111", active_yn:"1", fman:"1" },
  { building_number: "99350", building_name: "54 CHEVY LLC", building_address: "5400 CHEVROLET BLVD, PARMA 44130", active_yn:"1" }
]

w2d = Workday.find_by(title: "Workday 2", workday_type: "Downtown")
w2d.buildings.create! [
  { building_number: "09020" , building_name: "SUPERIOR BUILDING" , building_address: "815 SUPERIOR AVE." , active_yn: "1" },
  { building_number: "09060" , building_name: "CITY CLUB BUILDING" , building_address: "850 EUCLID AVENUE" , active_yn: "1" },
  { building_number: "93020" , building_name: "ONE CLEVELAND CENTER" , building_address: "1375 EAST NINTH STREET 2968" , active_yn: "1" },
  { building_number: "93045" , building_name: "PNC CENTER" , building_address: "E 9TH & EUCLID AVE", active_yn:"1" },
  { building_number: "93070" , building_name: "CATHEDRAL PLAZA" , building_address: "EAST 9TH", active_yn: "1" , jajo: "1" }
]  

#3KD{ building_number:"17051", building_name:"TERMINAL TOWER - WATER", building_address:"50 PUBLIC SQUARE", active_yn:"1" },

w3d = Workday.find_by(title: "Workday 3", workday_type: "Downtown")
w3d.buildings.create! [
   { building_number: "02055" , building_name: "THE GALLERIA AT ERIEVIEW" , building_address: "1301 E 9TH ST" , active_yn: "1" },
   { building_number: "02080" , building_name: "TOWER @ ERIEVIEW" , building_address: "1301 E 9TH ST" , active_yn: "1" },
   { building_number: "03017" , building_name: "LINCOLN BUILDING" , building_address: "1367 E 6 ST" , active_yn: "1" },
   { building_number: "03019" , building_name: "IMG CENTER" , building_address: "1360 EAST 9TH STREET", active_yn: "1" },
   { building_number: "13077" , building_name: "KIA PARKING CENTER" , building_address: "1277 E 12TH ST. 44114", active_yn: "1" }
]

w3s = Workday.find_by(title: "Workday 3", workday_type: "Suburb")
w3s.buildings.create! [
  { building_number: "25010", building_name: "TYLER VILLAGE EAST", building_address: "3615 SUPERIOR E. AVE. 44114", active_yn: "1" },
  { building_number: "25012", building_name: "TYLER VILLAGE WEST", building_address: "3615 SUPERIOR W. AVENUE 44114", active_yn: "1" },
  { building_number: "25080", building_name: "PHUSION CAFÉ", building_address: "3030 SUPERIOR AVE EAST 44114", active_yn: "1" },
  { building_number: "93010", building_name: "AECOM BUILDING", building_address: "1300 E 9TH ST CLEVELAND 44114", active_yn: "1" }
]

w4s = Workday.find_by(title: "Workday 4", workday_type: "Suburb")
w4s.buildings.create! [
  { building_number: "01013", building_name: "HORIZON BUILDING", building_address: "26301 CURTISS WRIGHT PKWY 44143", active_yn: "1" },
  { building_number: "01020", building_name: "EUCLID OFFICE PLAZA", building_address: "26250 EUCLID AVE 44132", active_yn: "1" },
  { building_number: "01040", building_name: "PARAGON CENTER", building_address: "6150 PARKLAND BLVD 44124", active_yn: "1" },
  { building_number: "01043", building_name: "MONARCH CENTRE", building_address: "5885 LANDERBROOK DR 44124", active_yn:"1" },
  { building_number: "01047", building_name: "LANDERBROOK DENTAL BUILDING", building_address: "5825 LANDERBROOK DR MAYFIELD HTS, OH 44124", active_yn:"1" },
  { building_number: "01070", building_name: "URSULINE COLLEGE", building_address: "2550 LANDER RD 44124", active_yn:"1" },
  { building_number: "01072", building_name: "HILLCREST MOB 1", building_address: "6803 MAYFIELD RD 44124", active_yn:"1" },
  { building_number: "01075", building_name: "JEFFERSON CENTER", building_address: "5001 MAYFIELD RD 44124", active_yn:"1" },
  { building_number: "01080", building_name: "HILLTOP BUILDING", building_address: "5035 MAYFIELD RD 44124", active_yn:"1" },
  { building_number: "01088", building_name: "CAMBRIDGE SQUARE", building_address: "8251 MAYFIELD RD CHESTERLAND OH 44026", active_yn:"1" },
  { building_number: "01090", building_name: "LANDERBROOK I", building_address: "5900 LANDERBROOK DR 44124", active_yn:"1" },
  { building_number: "01095" , building_name: "LANDERBROOK II", building_address: "5910 LANDERBROOK DR 44124", active_yn:"1" },
  { building_number: "01097" , building_name: "HIGHLAND PLACE", building_address: "6151 WILSON MILLS RD 44143", active_yn:"1" },
  { building_number: "01099" , building_name: "FR BETA, LLC", building_address: "700 BETA DR 44143", active_yn:"1" },
  { building_number: "01100" , building_name: "RIC & ROY PROPERTIES LLC", building_address: "5545 WILSON MILLS RD MAYFIELD 44113", active_yn:"1", jajo:"1" },
  { building_number: "31060" , building_name: "MANAKIKI GOLF COURSE CLUB HOUSE", building_address: "35501 EDDY RD 44094", active_yn:"1" }
]

# 5KD{ building_number:"09100", building_name:"LEADER BUILDING", building_address:"526 SUPERIOR AVE", active_yn:"1" },

w5d = Workday.find_by(title: "Workday 5", workday_type: "Downtown")
w5d.buildings.create! [
  { building_number:"36850", building_name:"LAUREL SQ", building_address:"1733 PEARL ROAD, BRUNSWICK OH 44212", active_yn:"1", fman:"1" },
  { building_number:"42046", building_name:"INTERSTATE PLAZA", building_address:"16600 SPRAGUE ROAD 44130", active_yn:"1" },
  { building_number:"42062", building_name:"BEREA COMMONS", building_address:"BEREA OHIO 44017", active_yn:"1" },
  { building_number:"42094", building_name:"K-2 MEDINA PROPERTIES, LLC", building_address:"2968 NATIONWIDE PARKWAY BRUNSWICK 44212", active_yn:"1" },
  { building_number:"42095", building_name:"E. BRUNSWICK PROFESSIONAL CTR.", building_address:"3864 CENTER ROAD 44212", active_yn:"1", mjsd:"1" },
  { building_number:"42097", building_name:"NORTH POINT", building_address:"980 NORTH COURT STREET 44256", active_yn:"1" },
  { building_number:"42100", building_name:"MEDINA MOB NORTH", building_address:"970 EAST WASHINGTON ST, MEDINA OH 44256", active_yn:"1" },
  { building_number:"42130", building_name:"20102 PROGRESS DRIVE", building_address:"20102 PROGRESS DR STRONGSVILLE 44136", active_yn:"1", fman:"1" },
  { building_number:"42250", building_name:"HINCKLEY PARK CONDO", building_address:"2575-2597 CTR RD HINCKLEY 44233", active_yn:"1" },
  { building_number:"42300", building_name:"CENTER MARKS SELF STORAGE", building_address:"5317-5333 CENTER BRUNSWICK 44212", active_yn:"1" },
  { building_number:"42351", building_name:"KV BUILDERS", building_address:"12351 PROSPECT ROAD, STRONGSVILLE, OHIO 44136", active_yn:"1" },
  { building_number:"42250", building_name:"HINCKLEY PARK CONDO", building_address:"2575-2597 CTR RD/HINCKLEY 44233", active_yn:"1" },
  { building_number:"42300", building_name:"CENTER MARKS SELF STORAGE", building_address:"5317-5333 CENTER/BRUNSWICK 44212", active_yn:"1" },
  { building_number:"42351", building_name:"KV BUILDERS", building_address:"12351 PROSPECT ROAD, STRONGSVILLE, OHIO 44136", active_yn:"1" },
  { building_number:"42510", building_name:"FAMILY VIDEO", building_address:"17578-17780 PEARL STRONGSVILLE 44136", active_yn:"1", fman:"1" },
  { building_number:"42520", building_name:"FAMILY VIDEO", building_address:"17792-17900 PEARL STRONGSVILLE 44136", active_yn:"1", fman:"1" },
  { building_number:"42600", building_name:"PLAZA AT SOUTHPARK", building_address:"16630 ROYALTON RD STRONGSVILLE OHIO 44136", active_yn:"1", fman:"1" },
  { building_number:"42610", building_name:"PLAZA DI ANGELO", building_address:"5600-5780 WALLINGS RD N ROYALTON 44133", active_yn:"1", mjsd:"1" },
  { building_number:"42950", building_name:"CHAPMAN GROVE", building_address:"1210-1222 CHAPMAN LANE", active_yn:"1" }
]

w5s = Workday.find_by(title: "Workday 5", workday_type: "Suburb")
w5s.buildings.create! [
  { building_number:"42110", building_name:"BOSTON SQ I", building_address:"19600-19654 W 130TH 44136", active_yn:"1" },
  { building_number:"42120", building_name:"BOSTON SQ II", building_address:"19712-19880 W 130TH/STRONGSVILLE 44136", active_yn:"1" },
  { building_number:"42200", building_name:"PEETS COFFEE & TEA", building_address:"17999 BAGLEY ROAD 44130", active_yn:"1" },
  { building_number:"42500", building_name:"1270-1330 W. BAGLEY ROAD", building_address:"1270-1330 W. BAGLEY RD. BEREA OH 44017", active_yn:"1" },
  { building_number:"77001", building_name:"ISLANDER PARK ONE", building_address:"7550 LUCERNE DR, MIDDLEBURG HTS", active_yn:"1" },
  { building_number:"77002", building_name:"ISLANDER PARK TWO", building_address:"7530 LUCERNE DR, MIDDLEBURG HTS", active_yn:"1" },
  { building_number:"77011", building_name:"PLAZA SOUTH ONE", building_address:"7251 ENGLE RD, MIDDLEBURG HTS", active_yn:"1" },
  { building_number:"77012", building_name:"PLAZA SOUTH TWO", building_address:"7261 ENGLE RD, MIDDLEBURG HTS", active_yn:"1" },
  { building_number:"77013", building_name:"PLAZA SOUTH THREE", building_address:"7271 ENGLE RD, MIDDLEBURG HTS", active_yn:"1" },
  { building_number:"77020", building_name:"MIDDLEBURG HEIGHTS MEDICAL ARTS BUILDING", building_address:"18660 BAGLEY ROAD, MIDDLEBURG HTS, OHIO", active_yn:"1" },
  { building_number:"77021", building_name:"SOUTHWEST GENERAL MIDDLEBURG HTS MEDICAL CTR", building_address:"18780 BAGLEY RD, MIDDLEBURG HTS 44130", active_yn:"1" },
  { building_number:"77130", building_name:"CORPORATE CENTER OF MIDDLEBURG", building_address:"17535 ROSBOUGH", active_yn:"1" }
]  

w6d = Workday.find_by(title: "Workday 6", workday_type: "Downtown")
w6d.buildings.create! [
  { building_number:"03008", building_name:"SUPERIOR LOFTS BUILDING", building_address:"1729 SUPERIOR", active_yn:"1" },
  { building_number:"03070", building_name:"BROWNELL LTD.", building_address:"1240 SUMNER CT.", active_yn:"1" },
  { building_number:"77610", building_name:"2530 SUPERIOR", building_address:"2530 SUPERIOR AVE", active_yn:"1" },
  { building_number:"77630", building_name:"2230 SUPERIOR", building_address:"2230 SUPERIOR AVE", active_yn:"1" },
  { building_number:"77650", building_name:"2435 SUPERIOR", building_address:"2435 SUPERIOR AVE", active_yn:"1" },
  { building_number:"77670", building_name:"2331 SUPERIOR", building_address:"2331 SUPERIOR AVE", active_yn:"1" },
  { building_number:"77690", building_name:"2130-2110 SUPERIOR", building_address:"2130-2110 SUPERIOR AVE", active_yn:"1" }
]  

w6s = Workday.find_by(title: "Workday 6", workday_type: "Suburb")
w6s.buildings.create! [
  { building_number:"04010", building_name:"CHAGRIN CORPORATE CENTER", building_address:"20820 CHAGRIN BLVD SHAKER HTS., OHIO 44122", active_yn:"1" },
  { building_number:"06020", building_name:"COMMERCE PARK PLAZA", building_address:"24700 CHAGRIN BLVD 44122    1480", active_yn:"1" },
  { building_number:"06024", building_name:"CHAGRIN RICHMOND PLAZA", building_address:"25550 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"06052", building_name:"TOWER EAST", building_address:"20600 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"06058", building_name:"WATER TOWER PLACE", building_address:"25200 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"06060", building_name:"THE OFFICE PLACE BUILDING", building_address:"24200 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"06072", building_name:"REFLECTIONS", building_address:"24400 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"06080", building_name:"ENTERPRISE PLACE", building_address:"3401 ENTERPRISE PKWY 44122", active_yn:"1" },
  { building_number:"06082", building_name:"LAKEPOINT OFFICE PARK", building_address:"3201 ENTERPRISE PKWY 44122", active_yn:"1" },
  { building_number:"06090", building_name:"LANDMARK CENTRE", building_address:"25700 SCIENCE PARK DR 44122", active_yn:"1" },
  { building_number:"06092", building_name:"CORP. PLACE", building_address:"25800 SCIENCE PARK DR 44122", active_yn:"1" },
  { building_number:"06093", building_name:"SHELBOURNE ONE CORPORATE LLC", building_address:"25825 SCIENCE PARK DR 44122", active_yn:"1" },
  { building_number:"89181", building_name:"7181 CHAGRIN RD COMPLEX", building_address:"7181-7227 CHAGRIN RD CHAGRIN FALLS 44023", active_yn:"1", fman:"1" }
]  

w7d = Workday.find_by(title: "Workday 7", workday_type: "Downtown")
w7d.buildings.create! [
  { building_number:"03010", building_name:"CLEVELAND PRODUCE TERMINAL, INC.", building_address:"3800 ORANGE AVE", active_yn:"1" },
  { building_number:"03040", building_name:"DALLAS BUILDING", building_address:"2217 EAST 9TH. STREET", active_yn:"1" },
  { building_number:"03050", building_name:"ST. VINCENT MEDICAL OFFICE BUILDING", building_address:"2322 EAST 22ND STREET", active_yn:"1" },
  { building_number:"09017", building_name:"BAKER BUILDING", building_address:"1940 E 6 ST", active_yn:"1" },
  { building_number:"09050", building_name:"HURON 9TH BUILDING", building_address:"HURON & 9TH            1000", active_yn:"1" },
  { building_number:"09070", building_name:"RADISSON HOTEL CLEVELAND-GATEWAY", building_address:"651 HURON RD.", active_yn:"1" },
  { building_number:"09088", building_name:"LAKEWOOD CENTER NORTH", building_address:"14600 DETROIT", active_yn:"1" },
  { building_number:"09220", building_name:"STONEBRIDGE OFFICE CENTER", building_address:"2019 CENTER STREET", active_yn:"1" },
  { building_number:"12070", building_name:"1111 SUPERIOR", building_address:"1111 SUPERIOR AVE", active_yn:"1" },
  { building_number:"91811", building_name:"STONEBRIDGE PLAZA - CANTINA", building_address:"1237 WASHINGTON ST. CLEVELAND, 44113", active_yn:"1" }
]  

w7s = Workday.find_by(title: "Workday 7", workday_type: "Suburb")
w7s.buildings.create! [
  { building_number:"06010", building_name:"PARKWAY MEDICAL-NORTH", building_address:"3609 PARK EAST DR 44122", active_yn:"1" },
  { building_number:"06015", building_name:"PARKWAY MEDICAL-SOUTH", building_address:"3619 PARK EAST DR 44122", active_yn:"1" },
  { building_number:"06021", building_name:"PARK EAST OFFICE PARK", building_address:"3733-3737 PARK EAST 44122", active_yn:"1" },
  { building_number:"06022", building_name:"BUSHWOOD", building_address:"3700 PARK EAST DR 44122", active_yn:"1" },
  { building_number:"06073", building_name:"CHAGRIN PROFESSIONAL PLAZA", building_address:"24755 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"06077", building_name:"CHAGRIN PLAZA WEST", building_address:"23611,23711,23811 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"06095", building_name:"SIGNATURE SQUARE", building_address:"25201 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"31020", building_name:"ETON", building_address:"28601 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"31021", building_name:"ETON-WATER", building_address:"28601 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"31022", building_name:"WEST END ETON", building_address:"28601 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"31048", building_name:"MAX WELLNESS", building_address:"27730 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"31080", building_name:"ZEPPE'S PLAZA", building_address:"25780 MILES RD 44146", active_yn:"1" },
  { building_number:"31085", building_name:"STAG BEDFORD HEIGHTS", building_address:"26801 FARGO AVE 44146", active_yn:"1" },
  { building_number:"31095", building_name:"ANCHOR FASTENERS", building_address:"26101 FARGO AVE 44146", active_yn:"1" },
  { building_number:"31580", building_name:"LANDER CENTER", building_address:"3550 LANDER RD 44124", active_yn:"1" }
]  

w8s = Workday.find_by(title: "Workday 8", workday_type: "Suburb")
w8s.buildings.create! [
  { building_number:"06007", building_name:"ORANGEWOOD PLACE", building_address:"3690 ORANGE PLACE 44122", active_yn:"1" },
  { building_number:"24005", building_name:"PROFESSIONAL PLAZA", building_address:"7057 W. 130 ST. 44130", active_yn:"1" },
  { building_number:"24029", building_name:"COMMERCE PLACE", building_address:"7123 PEARL RD. 44130", active_yn:"1" },
  { building_number:"31000", building_name:"CORPORATE CIRCLE", building_address:"30050 CHAGRIN BLVD 44124", active_yn:"1" },
  { building_number:"31001", building_name:"30100 CORPORATE CIRCLE", building_address:"30100 CHAGRIN BLVD 44124", active_yn:"1" },
  { building_number:"31010", building_name:"EXECUTIVE COMMONS I", building_address:"29425 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"31015", building_name:"EXECUTIVE COMMONS II", building_address:"29525 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"31025", building_name:"DOLLAR BANK", building_address:"26949 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"31030", building_name:"COURTLAND HALL", building_address:"29125 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"31035", building_name:"PEPPER PIKE PLACE", building_address:"30195 CHAGRIN BLVD 44124", active_yn:"1" },
  { building_number:"31040", building_name:"OMNI CHAGRIN", building_address:"29225 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"31049", building_name:"VANTAGE POINT", building_address:"27600 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"31100", building_name:"MORELAND HILLS TOWNE CENTRE", building_address:"34105 CHAGRIN BLVD 44022", active_yn:"1", jajo:"1" }
]  

w8d = Workday.find_by(title: "Workday 8", workday_type: "Downtown")
w8d.buildings.create! [
  { building_number:"13060", building_name:"200 PUBLIC SQUARE", building_address:"200 PUBLIC SQUARE", active_yn:"1" },
  { building_number:"13070", building_name:"PUBLIC SQUARE TECH CENTER", building_address:"158 EUCLID AVE", active_yn:"1" },
  { building_number:"17050", building_name:"TERMINAL TOWER - ELECTRIC", building_address:"50 PUBLIC SQUARE", active_yn:"1" },
  { building_number:"77510", building_name:"HALLE BUILDING", building_address:"1212 HURON RD EAST 44115", active_yn:"1" }
]  

w9s = Workday.find_by(title: "Workday 9", workday_type: "Suburb")
w9s.buildings.create! [
  { building_number:"04006", building_name:"HANCOCK CENTER", building_address:"5333 NORTHFIELD RD 44146", active_yn:"1" },
  { building_number:"04009", building_name:"ARISTOCRAT APARTMENTS", building_address:"3311 WARRENSVILLE", active_yn:"1" },
  { building_number:"04018", building_name:"25 PARK BUILDING", building_address:"23625 COMMERCE PARK 44122", active_yn:"1" },
  { building_number:"04022", building_name:"THE RAINBOW BUILDING", building_address:"23880 COMMERCE PARK 44122    1770", active_yn:"1" },
  { building_number:"04055", building_name:"SHAKER MEDICAL BUILDING", building_address:"3461 WARRENSVILLE CENTER RD 44122", active_yn:"1" },
  { building_number:"04078", building_name:"FOUR COMMERCE PARK SQUARE", building_address:"23240 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"04079", building_name:"FIVE COMMERCE PARK SQUARE", building_address:"23250 CHAGRIN BLVD 44122", active_yn:"1" },
  { building_number:"04260", building_name:"EYE PLAZA", building_address:"4834-4838 NORTHFIELD ROAD N RANDALL OH 44128", active_yn:"1" },
  { building_number:"06030", building_name:"00 MILES", building_address:"21930 MILES ROAD", active_yn:"1" },
  { building_number:"27286", building_name:"1620-3090", building_address:"1620-3090 LEE & MAYFIELD ROAD CLEVELAND HTS. 44121", active_yn:"1" },
  { building_number:"27394", building_name:"3938-3956", building_address:"3938-3956 MAYFIELD ROAD CLEVELAND HTS. 44121", active_yn:"1" },
  { building_number:"34010", building_name:"THE PDC BUILDING", building_address:"3659 GREEN RD 44122", active_yn:"1" },
  { building_number:"34011", building_name:"THE FAIRWAYS", building_address:"3601 GREEN RD 44122", active_yn:"1" }
]


w9d = Workday.find_by(title: "Workday 9", workday_type: "Downtown")
w9d.buildings.create! [
  { building_number:"04091", building_name:"PROPERTY: BROADWAY", building_address:"2936 BROADWAY AVE & E 34TH 44115", active_yn:"1" },
  { building_number:"05036", building_name:"3636 EUCLID, LLC", building_address:"3636 EUCLID AVE CLEVELAND OH", active_yn:"1" },
  { building_number:"12038", building_name:"ASIAN TOWN CENTER", building_address:"3820 SUPERIOR AVE", active_yn:"1" },
  { building_number:"18124", building_name:"PROPERTY OPERATIONS, LLC", building_address:"812 HURON", active_yn:"1" },
  { building_number:"77059", building_name:"CLEVELAND MIDTOWN INNOVATION CENTER", building_address:"4415 EUCLID AVE", active_yn:"1" },
  { building_number:"77060", building_name:"AGORA", building_address:"5000 EUCLID AVENUE", active_yn:"1" },
  { building_number:"77095", building_name:"PROSPECT PARK BUILDING", building_address:"4614 PROSPECT AVENUE", active_yn:"1" }
]

w10s = Workday.find_by(title: "Workday 10", workday_type: "Suburb")
w10s.buildings.create! [
  { building_number:"04001", building_name:"THE LOFTS AT AVALON STATION", building_address:"16800 VAN AKEN BLVD 44120", active_yn:"1" },
  { building_number:"04015", building_name:"UNIVERSITY MEDICAL BLDG", building_address:"2245 WARRENSVILLE CENTER RD 44118", active_yn:"1" },
  { building_number:"04038", building_name:"WATERSTONE MEDICAL CENTER", building_address:"14100 CEDAR RD 44121", active_yn:"1" },
  { building_number:"04045", building_name:"2260", building_address:"2260 WARRENSVILLE CENTER RD 44118", active_yn:"1" },
  { building_number:"15120", building_name:"Gas/Water Meters", building_address:"1455 E. 185TH ST 44110", active_yn:"1" },
  { building_number:"15121", building_name:"Electric Meters", building_address:"1455 E. 185TH ST 44110", active_yn:"1" },
  { building_number:"15161", building_name:"EUCLID BEACH PLAZA, LLC", building_address:"16122 LAKESHORE BLVD.    CLEVELAND 44110", active_yn:"1" },
  { building_number:"15200", building_name:"BUCKEYE PLAZA", building_address:"11301-11501 BUCKEYE RD CLEVELAND OH", active_yn:"1" },
  { building_number:"15300", building_name:"UNIVERSITY SQUARE", building_address:"14060 CEDAR RD., CLEVELAND OH 44118", active_yn:"1", jajo:"1" },
  { building_number:"15400", building_name:"GLENVILLE PLAZA", building_address:"10340 ST. CLAIR AVE.", active_yn:"1" },
  { building_number:"27036", building_name:"HEIGHTS MEDICAL", building_address:"2460 CEDAR & FAIRMOUNT BLVD 44106", active_yn:"1" },
  { building_number:"27038", building_name:"COVENTRY MALL", building_address:"2785 EUCLID HTS BLVD 44106", active_yn:"1" },
  { building_number:"27085", building_name:"KEMPER HOUSE CO.", building_address:"2555 KEMPER RD 44120", active_yn:"1" },
  { building_number:"27097", building_name:"HURON COMMUNITY HEALTH CENTER", building_address:"13944 EUCLID AVENUE", active_yn:"1" }
]

w10d = Workday.find_by(title: "Workday 10", workday_type: "Downtown")
w10d.buildings.create! [
  { building_number:"05020", building_name:"BULKLEY BUILDING", building_address:"1501 EUCLID AVE", active_yn:"1" },
  { building_number:"18009", building_name:"COWELL & HUBBARD", building_address:"1305 EUCLID AVE", active_yn:"1" },
  { building_number:"18040", building_name:"EAST 5TH STREET ARCADE", building_address:"530 EUCLID AVE CLEVELAND, OH", active_yn:"1", mjsd:"1" },
  { building_number:"18055", building_name:"STERLING BUILDING", building_address:"1255 EUCLID AVE", active_yn:"1" },
  { building_number:"22010", building_name:"HANNA BUILDING", building_address:"E. 14 & EUCLID", active_yn:"1" },
  { building_number:"20012", building_name:"GCP BUILDING", building_address:"1240 HURON RD EAST. CLEVELAND, OH 44115", active_yn:"1" },
  { building_number:"22050", building_name:"US BANK CENTRE ON PLAYHOUSE SQ.", building_address:"1350 EUCLID AVE", active_yn:"1" }
]

w11s = Workday.find_by(title: "Workday 11", workday_type: "Suburb")
w11s.buildings.create! [
  { building_number:"33001", building_name:"HERITAGE CORPORATE CENTER", building_address:"6001 E ROYALTON RD 44147", active_yn:"1" },
  { building_number:"33005", building_name:"INDEPENDENCE CORP. CTR.", building_address:"7100 E PLEASANT VALLEY 44131", active_yn:"1" },
  { building_number:"33035", building_name:"BRECKSVILLE COMMONS", building_address:"8221 BRECKSVILLE RD 44141", active_yn:"1" },
  { building_number:"33041", building_name:"SOUTHPOINTE BUILDING 2", building_address:"6802 W SNOWVILLE RD 44141", active_yn:"1" },
  { building_number:"33043", building_name:"SOUTHPOINT BUILDING 3", building_address:"6770 SNOWVILLE RD 44141", active_yn:"1" },
  { building_number:"33071", building_name:"SOUTHPOINTE BUILDING 1", building_address:"6800 W SNOWVILLE RD 44141", active_yn:"1" },
  { building_number:"33095", building_name:"KICHLER LIGHTING", building_address:"7711 E PLEASANT VALLEY RD 44131", active_yn:"1" },
  { building_number:"33098", building_name:"INDEPENDENCE TECHNOLOGY CENTER", building_address:"6801 BRECKSVILLE RD 44131", active_yn:"1" }
]

w12s = Workday.find_by(title: "Workday 12", workday_type: "Suburb")
w12s.buildings.create! [
  { building_number:"33037", building_name:"TRIONIX", building_address:"8037 BAVARIA ROAD", active_yn:"1" },
  { building_number:"33074", building_name:"GILCHRIST", building_address:"3400 GILCHRIST RD, MOGADORE 44260", active_yn:"1" },
  { building_number:"33100", building_name:"AETNA BUILDING", building_address:"4059 KINROSS LAKES PKWY  RICHFIELD 44286", active_yn:"1" },
  { building_number:"33200", building_name:"5700 DARROW RD", building_address:"5700 DARROW RD 44236", active_yn:"1", jajo:"1" },
  { building_number:"33250", building_name:"1340 CORPORATE DRIVE", building_address:"1340 CORPORATE DRIVE HUDSON OH 44236", active_yn:"1" },
  { building_number:"33400", building_name:"CASCADES CORNERS", building_address:"4050 CASCADES BLVD KENT, OH 44240", active_yn:"1", fman:"1" },
  { building_number:"33450", building_name:"1261", building_address:"1261 EAST HIGHLAND MACEDONIA 44056", active_yn:"1", jajo:"1" },
  { building_number:"33500", building_name:"CASCADES VILLAGE", building_address:"3975 CASCADES BLVD 44240 KENT, OH 44240", active_yn:"1" },
  { building_number:"33600", building_name:"PLAZA CHAPEL HILL CO.", building_address:"258-490 HOWE AVE 44221", active_yn:"1", jajo:"1" },
  { building_number:"33700", building_name:"MACEDONIA", building_address:"663 AURORA RD 44056", active_yn:"1", jajo:"1" },
  { building_number:"33800", building_name:"CREEKVIEW COMMONS", building_address:"8121-8495 CHIPPEWA RD 44141", active_yn:"1" },
  { building_number:"33900", building_name:"TWINSBURG TOWN CENTER", building_address:"8960 DARROW ROAD TWINSBURG 44087", active_yn:"1", mjsd:"1" }
]

w12d = Workday.find_by(title: "Workday 12", workday_type: "Downtown")
w12d.buildings.create! [
  { building_number:"02060", building_name:"65-75 ERIEVIEW PLAZA", building_address:"65-75 ERIEVIEW PLAZA", active_yn:"1" },
  { building_number:"05075", building_name:"TWIST DRILL INDUSTRIAL PARK", building_address:"1280 EAST 49TH ST CLEVELAND OH 44114", active_yn:"1" },
  { building_number:"12040", building_name:"1215 SUPERIOR LLC", building_address:"EAST 12TH. & SUPERIOR", active_yn:"1" },
  { building_number:"17501", building_name:"OSWALD CENTRE AT 1100 SUPERIOR", building_address:"1100 SUPERIOR AVE", active_yn:"1" },
  { building_number:"18080", building_name:"NAJM SQUARE I", building_address:"3030 EUCLID AVE.", active_yn:"1" },
  { building_number:"18095", building_name:"INNERBELT BUILDING", building_address:"2800 EUCLID AVENUE", active_yn:"1" }
]

w13d = Workday.find_by(title: "Workday 13", workday_type: "Downtown")
w13d.buildings.create! [
  { building_number:"12090", building_name:"CATHEDRAL SQUARE PLAZA", building_address:"1404 EAST 9TH STREET", active_yn:"1" },
  { building_number:"17045", building_name:"FIFTH THIRD CENTER", building_address:"600 SUPERIOR AVENUE", active_yn:"1" },
  { building_number:"17800", building_name:"KEYBANK CENTER", building_address:"800 SUPERIOR", active_yn:"1" },
  { building_number:"18005", building_name:"515 EUCLID", building_address:"515 EUCLID AVE", active_yn:"1" },
  { building_number:"18016", building_name:"PARK PLAZA", building_address:"1111 CHESTER AVENUE", active_yn:"1" },
  { building_number:"18030", building_name:"OHIO SAVINGS PLAZA", building_address:"NINTH & CHESTER", active_yn:"1" },
  { building_number:"18070", building_name:"THE IVORY", building_address:"1030 EUCLID AVENUE", active_yn:"1" },
  { building_number:"18090", building_name:"THE SEASONS AT PERK PARK", building_address:"0797 CHESTER & 12TH STREET ", active_yn:"1" },
  { building_number:"18091", building_name:"THE SEASONS AT PERK PARK RESIDENTIAL", building_address:"CHESTER & 12TH STREET", active_yn:"1" },
  { building_number:"18175", building_name:"THE SCHOFIELD RESIDENCES", building_address:"2000 E. 9TH ST., CLEVELAND OH 44115", active_yn:"1" }
]

w13s = Workday.find_by(title: "Workday 13", workday_type: "Suburb")
w13s.buildings.create! [
  { building_number:"08040", building_name:"4141 ROCKSIDE ROAD", building_address:"SEVEN HILLS 44131", active_yn:"1" },
  { building_number:"08090", building_name:"6200 ROCKSIDE LLC", building_address:"6200 ROCKSIDE RD. 44131", active_yn:"1" },
  { building_number:"14010", building_name:"NORTHPOINT CENTER", building_address:"6505 ROCKSIDE ROAD 44131", active_yn:"1" },
  { building_number:"14020", building_name:"INDEPENDENCE TOWER", building_address:"5755 GRANGER ROAD 44131", active_yn:"1" },
  { building_number:"14022", building_name:"DERBY PROFESSIONAL BUILDING", building_address:"5706 TURNEY RD 44125", active_yn:"1" },
  { building_number:"14030", building_name:"6100 ROCKSIDE WOODS", building_address:"6100 ROCKSIDE WOODS DR.", active_yn:"1" },
  { building_number:"14034", building_name:"GOLD BUILDING", building_address:"6200 ROCKSIDE WOODS BLVD. 44131", active_yn:"1" },
  { building_number:"14038", building_name:"SPECTRUM BUILDING", building_address:"6060 ROCKSIDE WOODS BLVD 44131", active_yn:"1" },
  { building_number:"14041", building_name:"ROCKSIDE SQUARE TWO", building_address:"6133 ROCKSIDE ROAD     4000 44131", active_yn:"1" },
  { building_number:"14042", building_name:"SPECTRUM BUILDING", building_address:"6060 ROCKSIDE WOODS BLVD 44131", active_yn:"1" },
  { building_number:"14048", building_name:"ROCKSIDE SQUARE", building_address:"6155 ROCKSIDE RD.      2900 44131", active_yn:"1" },
  { building_number:"14070", building_name:"BEACON PLACE", building_address:"6055 ROCKSIDE WOODS BLVD, INDEPENDENCE 44131", active_yn:"1" },
  { building_number:"14075", building_name:"SOUTHPORT CENTER LLC", building_address:"8333 ROCKSIDE ROAD 44125", active_yn:"1" },
  { building_number:"14085", building_name:"9450 ALLEN DRIVE", building_address:"VALLEY VIEW, OHIO 44125", active_yn:"1" },
  { building_number:"14090", building_name:"CORPORATE PLAZA", building_address:"6450 ROCKSIDE WOODS BLVD. SOUTH 44131", active_yn:"1" },
  { building_number:"14100", building_name:"CORPORATE PLAZA II", building_address:"6480 ROCKSIDE WOODS BLVD. SQ SOUTH 44131", active_yn:"1" },
  { building_number:"14160", building_name:"F.C.S.U. CORP. CENTER", building_address:"6611 ROCKSIDE ROAD 44131", active_yn:"1" },
  { building_number:"14800", building_name:"SOUTHSIDE CORPORATE CENTER", building_address:"5595 TRANSPORTATION BLVD GARFIELD HTS., OH 44125", active_yn:"1" },
  { building_number:"33042", building_name:"SNOWVILLE II", building_address:"6900 SOUTHPOINTE PKWY 44141", active_yn:"1" }
]

w14d = Workday.find_by(title: "Workday 14", workday_type: "Downtown")
w14d.buildings.create! [
  { building_number:"20015", building_name:"1370", building_address:"1370 WEST 6TH. STREET", active_yn:"1" },
  { building_number:"20020", building_name:"SETTLERS POINT ASSO, LLC", building_address:"1400 WEST 10TH STREET CLEVELAND OH 44113-1215", active_yn:"1" },
  { building_number:"20040", building_name:"CRITTENDEN BUILDING", building_address:"1382 WEST 9TH STREET", active_yn:"1" },
  { building_number:"20050", building_name:"GRAND ARCADE", building_address:"408 WEST ST. CLAIR AVENUE", active_yn:"1" },
  { building_number:"20054", building_name:"JUSTICE CENTER", building_address:"Hello Melinda,", active_yn:"1" },
  { building_number:"20070", building_name:"BRADLEY BUILDING", building_address:"1220 WEST 6TH STREET CLEVELAND 44113", active_yn:"1" },
  { building_number:"20080", building_name:"WESTERN RESERVE BUILDING", building_address:"1468 WEST 9TH STREET", active_yn:"1" },
  { building_number:"20090", building_name:"LORENZO CARTER BUILDING", building_address:"1360 WEST 9TH. STREET", active_yn:"1" },
  { building_number:"20505", building_name:"VZT VERIZON BUILDING", building_address:"1150 WEST 3RD STREET", active_yn:"1" }
]

w14s = Workday.find_by(title: "Workday 14", workday_type: "Suburb")
w14s.buildings.create! [
  { building_number:"08030", building_name:"HARTFORD BUILDING", building_address:"6161 OAKTREE BLVD. S 44131", active_yn:"1" },
  { building_number:"08043", building_name:"GARLAND REAL PROPERTIES", building_address:"4500 ROCKSIDE RD 44131", active_yn:"1" },
  { building_number:"08050", building_name:"FREEDOM SQUARE III", building_address:"4511 ROCKSIDE RD 44131", active_yn:"1" },
  { building_number:"08060", building_name:"FREEDOM SQUARE II", building_address:"6000 FREEDOM SQUARE DRIVE 44131", active_yn:"1" },
  { building_number:"08071", building_name:"OAKTREE", building_address:"6111 OAKTREE BLVD. S 44131", active_yn:"1" },
  { building_number:"08080", building_name:"FREEDOM SQUARE I", building_address:"4401 ROCKSIDE ROAD 44131", active_yn:"1" },
  { building_number:"08098", building_name:"ROCKSIDE PLAZA", building_address:"1440 SNOW RD. 44134", active_yn:"1" },
  { building_number:"08110", building_name:"ROCK RUN SOUTH", building_address:"5800 LOMBARDO CENTER 44131", active_yn:"1" },
  { building_number:"08120", building_name:"ROCK RUN CENTER", building_address:"5700 LOMBARDO CENTER 44131", active_yn:"1" },
  { building_number:"08130", building_name:"ROCK RUN NORTH", building_address:"5700 LOMBARDO CENTER 44131", active_yn:"1" },
  { building_number:"08140", building_name:"GENESIS BUILDING", building_address:"6000 LOMBARDO CENTER 44131", active_yn:"1" },
  { building_number:"08150", building_name:"CROWN CENTER", building_address:"5005 ROCKSIDE ROAD 44131", active_yn:"1" },
  { building_number:"08190", building_name:"PARK CENTER I", building_address:"6100 OAK TREE BLVD. S 44131", active_yn:"1" },
  { building_number:"08200", building_name:"PARK CENTER II", building_address:"6150 OAK TREE BLVD. S 44131", active_yn:"1" },
  { building_number:"08210", building_name:"PARK CENTER III", building_address:"6050 OAK TREE BLVD. S 44131", active_yn:"1" },
  { building_number:"08310", building_name:"MO IV", building_address:"7500 WALL STREET VALLEY VIEW, OHIO 44125", active_yn:"1" },
  { building_number:"08320", building_name:"MO III", building_address:"7600 WALL STREET VALLEY VIEW, OHIO 44125", active_yn:"1" },
  { building_number:"08330", building_name:"MO II", building_address:"7777 WALL STREET VALLEY VIEW, OHIO 44125", active_yn:"1" },
  { building_number:"14050", building_name:"ROCKSIDE CENTER", building_address:"5990 WEST CREEK DR. 44131", active_yn:"1" },
  { building_number:"24045", building_name:"MEDICAL ARTS CENTER", building_address:"6681 RIDGE ROAD 44129", active_yn:"1" }
]

w15d = Workday.find_by(title: "Workday 15", workday_type: "Downtown")
w15d.buildings.create! [
  { building_number:"20030", building_name:"THE ROCKEFELLER BUILDING", building_address:"614 WEST SUPERIOR AVE.", active_yn:"1" },
  { building_number:"20055", building_name:"GALLERIA", building_address:"1301 E 9TH ST 44114", active_yn:"1" },
  { building_number:"20058", building_name:"THE 820 BUILDING", building_address:"820 WEST SUPERIOR", active_yn:"1" },
  { building_number:"20060", building_name:"ERIE BUILDING CONDO", building_address:"1260 WEST 4TH ST. CLEVELAND, OH 44113", active_yn:"1", fman:"1" },
  { building_number:"20085", building_name:"75 PUBLIC SQUARE BUILDING", building_address:"75  PUBLIC SQUARE", active_yn:"1" },
  { building_number:"21005", building_name:"CLEVELAND URBAN PROPERTIES", building_address:"1958 W 25TH ST 44113", active_yn:"1" }
]

w15s = Workday.find_by(title: "Workday 15", workday_type: "Suburb")
w15s.buildings.create! [
  { building_number:"21012", building_name:"ST. JOHN MEDICAL OFFICE BUILDING", building_address:"7901 DETROIT AVENUE 44102", active_yn:"1" },
  { building_number:"21020", building_name:"LAKE SHORE TOWERS", building_address:"12506 EDGEWATER DRIVE 44107", active_yn:"1" },
  { building_number:"21030", building_name:"BAILEY BUILDING", building_address:"14725 DETROIT AVE 44107", active_yn:"1" },
  { building_number:"21050", building_name:"WEST TERRACE APARTMENTS", building_address:"14305 LORAIN AVE. 44111", active_yn:"1" },
  { building_number:"21086", building_name:"LAKEWOOD CENTER WEST BUILDING", building_address:"14650 DETROIT AVE. 44107", active_yn:"1" },
  { building_number:"21090", building_name:"DETROIT/WARREN", building_address:"14805 DETROIT AVE 44107", active_yn:"1" },
  { building_number:"21100", building_name:"RIDGEWAY PLAZA", building_address:"3545 RIDGE ROAD", active_yn:"1", jajo:"1" },
  { building_number:"21200", building_name:"RIDGE PARK SQUARE I", building_address:"4730-4798 RIDGE RD", active_yn:"1", fman:"1" },
  { building_number:"21300", building_name:"RIDGE PARK SQUARE II", building_address:"4800-4832 RIDGE RD & 7305-7351 NORTHCLIFF AVE", active_yn:"1", fman:"1" },
  { building_number:"21400", building_name:"3600 RIDGE ROAD", building_address:"3600 RIDGE ROAD,BROOKLYN 44102", active_yn:"1", fman:"1" },
  { building_number:"77260", building_name:"BEREA PROPERTIES", building_address:"210-250 SHELDON ROAD, BEREA OH 44017", active_yn:"1" }
]

w16s = Workday.find_by(title: "Workday 16", workday_type: "Suburb")
w16s.buildings.create! [
  { building_number:"24019", building_name:"PARMA MEDICAL CTR", building_address:"5500 RIDGE RD 44129", active_yn:"1", mjsd:"1" },
  { building_number:"24040", building_name:"PHOENIX MEDICAL CENTER", building_address:"6820 RIDGE ROAD 44129", active_yn:"1" },
  { building_number:"24042", building_name:"SOUTHLAND PLAZA", building_address:"6929 WEST 130TH STREET 44130", active_yn:"1" },
  { building_number:"24050", building_name:"YORK HEALTH SERVICES BUILDING", building_address:"6363 YORK RD 44130", active_yn:"1" },
  { building_number:"24055", building_name:"YORKTOWN PLAZA", building_address:"6177 PEARL ROAD 44130", active_yn:"1", jajo:"1" },
  { building_number:"24060", building_name:"MEMPHIS-RIDGE BUILDING", building_address:"7405-7419 MEMPHIS 44144", active_yn:"1", mjsd:"1" },
  { building_number:"24090", building_name:"SOUTHLAND CENTER", building_address:"6902 PEARL ROAD 44130", active_yn:"1" },
  { building_number:"24110", building_name:"ALLIED BUILDING PRODUCTS", building_address:"12800 BROOKPARK ROAD 44130", active_yn:"1" },
  { building_number:"24198", building_name:"SOUTHLAND CENTER", building_address:"13367 SMITH RD", active_yn:"1", mjsd:"1" },
  { building_number:"24300", building_name:"PLEASANT VALLEY SHOPPING CENTER", building_address:"951 W PLEASANT VALLEY RD PARMA 44134", active_yn:"1", mjsd:"1" },
  { building_number:"24400", building_name:"PEARL BROOK SHOPPING CENTER", building_address:"PEARL RD & BROOKPARK RD 44129", active_yn:"1", fman:"1" },
  { building_number:"24600", building_name:"BROOKVIEW PLAZA", building_address:"2186 BROOKPARK ROAD, CLEVELAND OH 44134", active_yn:"1" },
  { building_number:"24610", building_name:"5900", building_address:"5900 RIDGE ROAD", active_yn:"1", jajo:"1" }
]

w16d = Workday.find_by(title: "Workday 16", workday_type: "Downtown")
w16d.buildings.create! [
  { building_number:"19015", building_name:"UNITED CONSUMER FINANCIAL SERVIC", building_address:"865 BASSETT RD. 44145", active_yn:"1" },
  { building_number:"19020", building_name:"TECH PARK LTD PARTNERSHIP", building_address:"2001 AEROSPACE PARKWAY 44142", active_yn:"1" },
  { building_number:"19023", building_name:"BAY VILLAGE SQUARE", building_address:"WOLF & DOVER CNTR", active_yn:"1", jajo:"1" },
  { building_number:"19024", building_name:"NORTH OLMSTED PHYSICIAN CENTER", building_address:"24700 LORAIN  RD  44070", active_yn:"1" },
  { building_number:"19025", building_name:"WESTLAKE PHYSICIANS CENTER", building_address:"805 COLUMBIA RD  44145", active_yn:"1" },
  { building_number:"19050", building_name:"FAIRVIEW CORPORATE CENTER", building_address:"22730 FAIRVIEW CENTER DR  44126", active_yn:"1" },
  { building_number:"19070", building_name:"TECH PARK I", building_address:"25111 COUNTRY CLUB BLVD  44070", active_yn:"1" },
  { building_number:"19071", building_name:"TECH PARK II", building_address:"25249 COUNTRY CLUB BLVD  44070", active_yn:"1" },
  { building_number:"19090", building_name:"CLEVELAND BUSINESS PARK FLEX I", building_address:"18013 CLEVELAND PARKWAY DR SW  44135", active_yn:"1" },
  { building_number:"19123", building_name:"GREAT NORTHERN CORP. CENTER I, II & III", building_address:"25000 COUNTRY CLUB BLVD  44070", active_yn:"1" },
  { building_number:"19400", building_name:"WESTWOOD TOWN CENTER", building_address:"21611 CENTER RIDGE RD  44116", active_yn:"1", fman:"1" },
  { building_number:"19700", building_name:"NC PROPERTIES", building_address:"15700 BROOKPARK RD BROOKPARK 44142", active_yn:"1", mjsd:"1" },
  { building_number:"19858", building_name:"LA CENTRE 1", building_address:"25651 DETROIT RD WESTLAKE 44145", active_yn:"1" },  
  { building_number:"42011", building_name:"BEREA FAIRGROUNDS", building_address:"164 EASTLAND RD, BEREA 44017", active_yn:"1" },
  { building_number:"42800", building_name:"729 ", building_address:"729 PROSPECT RD BEREA 44017", active_yn:"1", fman:"1" },
  { building_number:"69216", building_name:"POINT 6", building_address:"24651 CENTER RIDGE", active_yn:"1" }
]

w17d = Workday.find_by(title: "Workday 17", workday_type: "Downtown")
w17d.buildings.create! [
  { building_number:"69760", building_name:"TOWER CITY", building_address:"1660 WEST 2ND STREET  CLEVELAND  OH   44113", active_yn:"1" },
  { building_number:"69761", building_name:"TOWER CITY - MANUAL ELECTRICS", building_address:"1660 WEST 2ND STREET  CLEVELAND  OH   44113", active_yn:"1" }
]

w17s = Workday.find_by(title: "Workday 17", workday_type: "Suburb")
w17s.buildings.create! [
  { building_number:"21010", building_name:"8500 CLINTON", building_address:"8500 CLINTON RD 44144", active_yn:"1" },
  { building_number:"27200", building_name:"WILLOUGHBY CROSSINGS CONDOS", building_address:"WILLOUGHBY, OHIO 44094", active_yn:"1", mjsd:"1" },
  { building_number:"36029", building_name:"GOULD BUILDING", building_address:"34929 CURTIS BLVD  44095", active_yn:"1" },
  { building_number:"36050", building_name:"WILLO MEDICAL BUILDING", building_address:"36001 EUCLID AVE, WILLOUGHBY", active_yn:"1" },
  { building_number:"36060", building_name:"MENTOR INDUSTRIAL PARK", building_address:"8200 TYLER BLVD  44060", active_yn:"1" },
  { building_number:"36070", building_name:"TYPRO LIMITED", building_address:"8100 TYLER BLVD  44060", active_yn:"1" },
  { building_number:"36090", building_name:"Mentor Medical I, LLC", building_address:"8300 Tyler Blvd  44060", active_yn:"1" },
  { building_number:"36201", building_name:"22451-22465 SHORE CENTER DRIVE", building_address:"22451-22465 SHORE CENTER DRIVE", active_yn:"1" },
  { building_number:"36230", building_name:"NORTHGATE-250", building_address:"9201-9231 MENTOR AVE., MENTOR OH 44060", active_yn:"1", mjsd:"1" },
  { building_number:"36300", building_name:"Mentor Retail I, LLC", building_address:"8310-8358 Tyler Blvd 44060", active_yn:"1", jajo:"1" },
  { building_number:"36301", building_name:"22600-22686 SHORE CENTER DRIVE", building_address:"22600-22686 SHORE CENTER DRIVE", active_yn:"1" },
  { building_number:"36400", building_name:"REALTY ONE PLAZA", building_address:"8376-8396 MENTOR AVE., MENTOR OH 44060", active_yn:"1", fman:"1" },
  { building_number:"36501", building_name:"INTERSTATE SQUARE I", building_address:"4230 STATE ROUTE 306  44094", active_yn:"1" },
  { building_number:"36502", building_name:"INTERSTATE SQUARE II", building_address:"4212 STATE ROUTE 306  44094", active_yn:"1" },
  { building_number:"36510", building_name:"MENTOR PLAZA", building_address:"8485-8489 MARKET ST MENTOR, OH 44060", active_yn:"1", jajo:"1" },
  { building_number:"36520", building_name:"ARMPIT WEST LTD PARTNERSHIP", building_address:"34840-50 VINE ST, EASTLAKE OH 44", active_yn:"1", fman:"1" },
  { building_number:"36800", building_name:"KIRTLAND CENTER, LLC", building_address:"9177 CHILLICOTHE RD KIRTLAND OH 44094", active_yn:"1", fman:"1" }
]  

w18s = Workday.find_by(title: "Workday 18", workday_type: "Suburb")
w18s.buildings.create! [
  { building_number:"36350", building_name:"34302 EUCLID AVE", building_address:"34302 EUCLID AVE, WILLOUGHBY OH 44094", active_yn:"1", fman:"1" },
  { building_number:"36450", building_name:"INDUSTRIAL PARK BLVD", building_address:"7350 INDUSTRIAL PARK BLVD", active_yn:"1", fman:"1"  },
  { building_number:"36500", building_name:"MENTOR CITY CENTER", building_address:"7633-7673 MENTOR AVE, MENTOR OH 44060", active_yn:"1", fman:"1" },
  { building_number:"36550", building_name:"LAKESIDE SHOPPING CENTER", building_address:"5929 ANDREWS", active_yn:"1", fman:"1" },
  { building_number:"36600", building_name:"JMA/SMA PARTNERSHIP", building_address:"35475 VINE ST, EASTLAKE OH 44", active_yn:"1", fman:"1" },
  { building_number:"36650", building_name:"5961 ANDREWS", building_address:"5961 ANDREWS", active_yn:"1", fman:"1" },
  { building_number:"36700", building_name:"WEST POINT PLAZA", building_address:"35101 EUCLID AVE.,", active_yn:"1", fman:"1" },
  { building_number:"36750", building_name:"HOLLYWOOD BEIDLER", building_address:"36099 EUCLID AVE, WILLOUGHBY OH 44094", active_yn:"1", fman:"1" },
  { building_number:"36900", building_name:"35160 TOPPS INDUSTRIAL", building_address:"35160 TOPPS INDUSTRIAL, WILLOUGHBY OH 44", active_yn:"1", fman:"1" },
  { building_number:"36950", building_name:"USA BUILDING", building_address:"35110 EUCLID AVE.", active_yn:"1", fman:"1" },
  { building_number:"36990", building_name:"COLONIAL PLAZA GENERAL PARTNERSHIP", building_address:"7501-7537 MENTOR AVE.", active_yn:"1", fman:"1" }
]  

# 20KD{ building_number:"05501", building_name:"KEITH BUILDING", building_address:"1621 EUCLID AVE", active_yn:"1" },
# 20KD{ building_number:"12060", building_name:"RESERVE SQUARE", building_address:"1701 E. 12TH. STREET", active_yn:"1" },

w21d = Workday.find_by(title: "Workday 21", workday_type: "Downtown")
w21d.buildings.create! [
  { building_number:"11071", building_name:"WEST MARKET PLAZA", building_address:"3863-3899 MEDINA ROAD 44333", active_yn:"1" },
  { building_number:"11085", building_name:"CROWN POINTE", building_address:"175 MONTROSE WEST,  AKRON 44321", active_yn:"1" },
  { building_number:"11500", building_name:"ROSEMONT COMMONS", building_address:"3750 WEST MARKET 44333", active_yn:"1", mjsd:"1" },
  { building_number:"11600", building_name:"SHOPS OF FAIRLAWN", building_address:"3737 WEST MARKET 44333", active_yn:"1", mjsd:"1" },
  { building_number:"11800", building_name:"WEST MARKET PLAZA", building_address:"3879 MEDINA ROAD 44333", active_yn:"1", mjsd:"1" },
  { building_number:"33002", building_name:"PEAK PERFORMANCE CENTER", building_address:"1 EAGLE VALLEY 44147", active_yn:"1" },
  { building_number:"33025", building_name:"SOUTH HILLS OFFICE PARK", building_address:"9150 SOUTH HILLS BLVD. 44147", active_yn:"1" },
  { building_number:"33026", building_name:"SOUTH HILLS OFFICE PARK", building_address:"9100 SOUTH HILLS BLVD 44147", active_yn:"1" },
  { building_number:"33027", building_name:"SOUTH HILLS III", building_address:"9200 SOUTH HILLS BLVD 44147", active_yn:"1" },
  { building_number:"33300", building_name:"THE CROSSROADS AT FISHCREEK", building_address:"3029-3093 GRAHAM RD STOW 44224", active_yn:"1" },
  { building_number:"33301", building_name:"GROW WITH ME YOGA", building_address:"3087 GRAHAM RD", active_yn:"1" },
  { building_number:"55014", building_name:"PLEASANT VALLEY PROFESSIONAL CENTER", building_address:"1400-1420 PLEASANT VALLEY RD, PARMA 44134", active_yn:"1", jajo:"1" },
  { building_number:"55073", building_name:"TOWN CENTER PLAZA", building_address:"7305 BROADVIEW RD, SEVEN HILLS OH 44131", active_yn:"1" },
  { building_number:"55800", building_name:"BROADVIEW ROAD PLAZA", building_address:"7402-7408 BROADVIEW RD, PARMA 44134", active_yn:"1" }
]

w21s = Workday.find_by(title: "Workday 21", workday_type: "Suburb")
w21s.buildings.create! [
  { building_number:"61248", building_name:"PROMENADE", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61271", building_name:"AW GRANTLAND COMMERCIAL", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61272", building_name:"BE WHITLOCK COMMERCIAL", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61273", building_name:"DNE GORDON COMMERCIAL", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61274", building_name:"DNW MORGAN COMMERCIAL", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61275", building_name:"DSW CLAYBORNE BUILDING", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61276", building_name:"ENE HAYMARKET COMMERCIAL", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61277", building_name:"ESE MARIETTA COMMERCIAL", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61278", building_name:"F. VICTOR", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61279", building_name:"GE ARGUS (TRADER JOE'S) COMMERCIAL", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61280", building_name:"EAST PARK COMMERCIAL", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61370", building_name:"GES", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61379", building_name:"GEW", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61465", building_name:"CROCKER DETROIT", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61467", building_name:"ENW EXCELSIOR SOUTH", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61468", building_name:"BW EXCELSIOR NORTH COMMERCIAL", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61479", building_name:"GWN", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61492", building_name:"JW BUILDING", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61493", building_name:"CROCKER PARK - CONSTRUCTION METERS", building_address:"CROCKER PARK", active_yn:"1" },
  { building_number:"61494", building_name:"BLOCK K", building_address:"CROCKER PARK", active_yn:"1" }
]  

w22s = Workday.find_by(title: "Workday 22", workday_type: "Suburb")
w22s.buildings.create! [
  { building_number:"88002", building_name:"STEAM METERS", building_address:"ROUTE II - DOWNTOWN", active_yn:"1" }
]

w22d = Workday.find_by(title: "Workday 10", workday_type: "Downtown")
w22d.buildings.create! [
  { building_number:"88003", building_name:"STEAM METERS", building_address:"ROUTE III - SUPERIOR", active_yn:"1" }
]

b11033 = Building.find_by(building_number: "11033" ) 
b11033.meters.create! [
 { meter_number: "69093550", sequence_number: 22600, previous_read: 59352, currenr_read: 60003, unit: 651.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "69093529", sequence_number: 22602, previous_read: 90727, currenr_read: 90727, unit: 0.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "29117806", sequence_number: 22601, previous_read: 21034, currenr_read: 22196, unit: 1162.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "70174861", sequence_number: 22589, previous_read: 52473, currenr_read: 54884, unit: 2411.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "69093574", sequence_number: 22595, previous_read: 44780, currenr_read: 44780, unit: 0.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "69096540", sequence_number: 22593, previous_read: 47887, currenr_read: 47896, unit: 9.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "69093552", sequence_number: 22592, previous_read: 50357, currenr_read: 50395, unit: 38.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "70174838", sequence_number: 22590, previous_read: 81626, currenr_read: 81723, unit: 48.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "70174838", sequence_number: 760, previous_read: 81626, currenr_read: 81723, unit: 48.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "69093554", sequence_number: 22603, previous_read: 17518, currenr_read: 17679, unit: 161.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "72637415", sequence_number: 22594, previous_read: 3291, currenr_read: 3326, unit: 35.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "70334361", sequence_number: 22612, previous_read: 0, currenr_read: 0, unit: 0.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "70407908", sequence_number: 22608, previous_read: 49992, currenr_read: 56163, unit: 6171.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "70407907", sequence_number: 22609, previous_read: 49115, currenr_read: 49550, unit: 435.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "70325022", sequence_number: 22610, previous_read: 5773, currenr_read: 5896, unit: 9840.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "70603320", sequence_number: 22604, previous_read: 2829, currenr_read: 2834, unit: 5.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "29119892", sequence_number: 22605, previous_read: 66116, currenr_read: 66904, unit: 788.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "70360321", sequence_number: 22606, previous_read: 5258, currenr_read: 5306, unit: 48.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "24681012", sequence_number: 22607, previous_read: 82670, currenr_read: 82706, unit: 36.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "61291652", sequence_number: 22611, previous_read: 82848, currenr_read: 82870, unit: 22.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "72867089", sequence_number: 22597, previous_read: 96640, currenr_read: 96640, unit: 0.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "75218776", sequence_number: 22599, previous_read: 2858, currenr_read: 2865, unit: 7.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "37007258", sequence_number: 22596, previous_read: 97425, currenr_read: 97428, unit: 3.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "46388968", sequence_number: 22591, previous_read: 53648, currenr_read: 53785, unit: 137.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "58156109", sequence_number: 22598, previous_read: 17078, currenr_read: 17127, unit: 49.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "59786431", sequence_number: 22613, previous_read: 51629, currenr_read: 51954, unit: 325.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "50925900", sequence_number: 22614, previous_read: 82318, currenr_read: 82731, unit: 413.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "50926519", sequence_number: 22615, previous_read: 80547, currenr_read: 80549, unit: 2.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "35850989", sequence_number: 22616, previous_read: 23597, currenr_read: 23597, unit: 0.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },
 { meter_number: "86437075", sequence_number: 22588, previous_read: 74232, currenr_read: 74524, unit: 292.00, current_read_demand: 0, previous_read_date: "10-02-2017", current_read_date: "11-01-2017" },

]	
