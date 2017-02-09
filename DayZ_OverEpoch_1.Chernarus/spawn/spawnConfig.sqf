/*  

Spawn Configuration:

1. These spawns are just examples to show what this mod can do. You can add or delete
any spawn in the _spawnPoints list. Don't forget to leave off the last comma for the last
element in the array.

2. Spawn format: 
	[Name, Pos, VIP Level, Humanity Level]
	Name - Each spawn must have a unique name. Can be anything. Do not use double quotes " inside.
	Pos - Coordinates in AboveTerrainLevel Format [x,y,z]
	VIP Level -
		0 - Anyone can pick this spawn
		1 - Only players with UIDs in _spawnLevel1 can pick this spawn
		2 - Only players with UIDs in _spawnLevel2 can pick this spawn
		3 - Only players with UIDs in _spawnLevel3 can pick this spawn​
	Humanity Level -
		0 - Anyone can pick this spawn
		Negative # - Only players with humanity less than this number can pick this spawn
		Positive # - Only players with humanity greater than this number can pick this spawn​

3. _customBase - List of UIDs that own custom bases.
   _customBases - List of custom bases in this format: ["Name",[Pos]]
   Name - Each base must have a unique name. Can be anything. Do not use double quotes " inside.
   Pos - In AboveTerrainLevel [x,y,z] format
   These must match the order of the first list. The first UID in _customBase corresponds with the first base in _customBases and so on. 
   These will only show in the spawn list for the player who owns them. If multiple UIDs share the same base then add the same base multiple times to maintain order, 
   or consider making it a VIP spawn in _spawnPoints instead. Pos is exactly where you will spawn, does not run through findSafePos. These override body check.

*/

_bodyCheck = 1200; // If a player has a body within this distance of a spawn that spawn will be blocked. Set to -1 to disable.
_mapRadius = 12000; // Distance from center to farthest edge of map. Only used when spawnNearPlot is enabled.
_spawnNearGroup = true; // Allow players to spawn near their group. Blocked if the player has a body within bodyCheck distance of the leader. Requires DZGM to work.
_spawnNearPlot = true; // Allow players to spawn near their plot. Blocked if the player has a body within bodyCheck distance of their plot. Requires Plot4Life to work. 
_spawnRadius = 1000; // Distance around spawn to find a safe pos. Lower is closer to exact coordinates. Do not set too low or BIS_fnc_findSafePos may fail.
_customBase = [
	"76561197987495141", // ebay
	"0",
	"0"
];
_customBases = [ // Do not use a z (height) higher than _autoOpenHeight in haloConfig.sqf if using halo
	["Mike's Base",[3965.01,11251.1,0]],
	[],
	[]
];

_spawnLevel1 = ["76561197987495141","0","0"];
_spawnLevel2 = ["76561197987495141","0","0"];
_spawnLevel3 = ["76561197987495141","0","0"];
// To give higher level VIPs access to lower level VIP spawns uncomment the two lines below:
_spawnLevel1 = _spawnLevel1 + _spawnLevel2 + _spawnLevel3;
_spawnLevel2 = _spawnLevel2 + _spawnLevel3;

_spawnPoints = switch (toLower worldName) do {
	case "chernarus":{
		[
			["Random",[[4523,2444,0],[12037,9100,0],[6723,2562,0],[10417,2120,0],[1896,2242,0],[13470,6306,0]],0,0,1], // Random will never be blocked, so always keep it if using body check.
			["Balota",[4523,2444,0],0,0],
			["Berezino",[12037,9100,0],0,0],
			["Cherno",[6723,2562,0],0,0],
			["Elektro",[10417,2120,0],0,0],
			["Kamenka",[1896,2242,0],0,0],
			["Solnichny",[13470,6306,0],0,0],
			// Above are defaults
			["Devils",[6900,11419,0],0,0],
			["Gorka",[9659,8839,0],0,0],
			["Grishino",[5967,10323,0],0,0],
			["Guglovo",[8472,6754,0],0,0],
			["Gvozdno",[8654,11832,0],0,0],
			["Kabanino",[5346,8630,0],0,0],
			["Kamyshovo",[12073,3490,0],0,0],
			["Komarovo",[3643,2473,0],0,0],
			["Krasnostav",[11342,12232,0],0,0],
			["Krutoy",[13395,4159,0],0,0],
			["Lopatino",[2731,10000,0],0,0],
			["Petrovka",[5035,12459,0],0,0],
			["Pogorevka",[4461,6424,0],0,0],
			["Prigor",[8059,3381,0],0,0],
			["Pusta",[9178,3928,0],0,0],
			["Vybor",[3893,8883,0],0,0],
			["Vyshnoye",[6612,6065,0],0,0],
			["Zelenogorsk",[2858,5313,0],0,0],
			["Bandit Base",[1607,7804,0],0,-2000],
			["Hero Hideout",[12944,12767,0],0,5000]
		]
	};
	case "tavi":{
		[
			["Random",[[9093,2614,0],[17588,4952,0],[15954,15847,0],[16674,13930,0],[11361,6685,0],[17744,10299,0],[18292,7537,0],[13561,19300,0],[15246,17425,0],[12268,9763,0]],0,0,1],
			["Topolka",[9093,2614,0],0,0],
			["Stari Sad",[17588,4952,0],0,0],
			["Sevastopol",[15954,15847,0],0,0],
			["Martin",[16674,13930,0],0,0],
			["Komarovo",[11361,6685,0],0,0],
			["Dubovo",[17744,10299,0],0,0],
			["Byelov",[18292,7537,0],0,0],
			["Khotanovsk",[13561,19300,0],0,0],
			["Dalnogorsk",[15246,17425,0],0,0],
			// Above are defaults
			["Kameni",[8350,18937,0],0,0],
			["Lyepestok",[11238,14413,0],0,0],
			["Marina",[10184,1542,0],0,0],
			["Race Track",[1529,7271,0],0,0],
			["Chernovar",[5904,10519,0],0,0]
		]
	};
	case "napf":{
		[
			["Random",[[5411,16676,0],[1511,11479,0],[12231,16319,0],[6946,17385,0],[12862,14850,0],[4672,14940,0],[2720,12226,0],[4104,13026,0],[1461,10584,0],[10283,18449,0],[10709,17085,0]],0,0,1],
			["Seltishafen",[5411,16676,0],0,0],
			["Hubel",[1511,11479,0],0,0],
			["Lausen",[12231,16319,0],0,0],	
			["Seewen",[6946,17385,0],0,0],
			["Bunig",[12862,14850,0],0,0],	
			["Bubendorf",[4672,14940,0],0,0],
			["Hindelbank",[2720,12226,0],0,0],
			["Huttwil",[4104,13026,0],0,0],
			["Ittingen",[1461,10584,0],0,0],
			["Hordstern",[10283,18449,0],0,0],
			["Magden",[10709,17085,0],0,0],
			// Above are defaults
			["South Airstrip",[18291,1790,0],0,0],
			["Buckten",[5906,5637,0],0,0],
			["Giswil",[17101,5282,0],0,0],
			["Horw",[17262,13502,0],0,0],
			["Romoos",[12694,11878,0],0,0],
			["Sachseln",[15554,10651,0],0,0],
			["Schangen",[9412,5882,0],0,0],
			["Sissach",[11111,8326,0],0,0],
			["Waldegg",[8538,852,0],0,0]
		]
	};
	case "lingor":{
		[
			["Random",[[2085,5501,0],[1355,315,0],[4550,913,0],[8880,1703,0],[580,5547,0],[3250,2556,0],[6143,2753,0],[1269,2858,0],[8295,8667,0],[9072,7323,0],[6899,3971,0]],0,0,1],
			["Vidora",[2085,5501,0],0,0],
			["Alma",[1355,315,0],0,0],
			["Calamar",[4550,913,0],0,0],
			["Pikawas",[8880,1703,0],0,0],
			["Benio",[580,5547,0],0,0],
			["Aguado",[3250,2556,0],0,0],
			["Prospero",[6143,2753,0],0,0],
			["Rago",[1269,2858,0],0,0],
			["Cemarin",[8295,8667,0],0,0],
			["Conoteta",[9072,7323,0],0,0],
			["Sanvigado",[6899,3971,0],0,0]
			// Above are defaults
		]
	};
	case "namalsk":{
		[
			["Random",[[4620,10916,0],[7600,6020,0],[6498,11851,0],[7668,11707,0],[4340,4960,0],[7885,7206,0],[3013,7506,0],[4673,10004,0],[7859,9096,0],[8756,10119,0],[5823,5641,0]],0,0,1],
			["Lubjansk",[4620,10916,0],0,0],
			["Old Sawmill",[7600,6020,0],0,0],
			["West Vorkuta",[6498,11851,0],0,0],
			["East Vorkuta",[7668,11707,0],0,0],
			["Brensk",[4340,4960,0],0,0],
			["Tara Harbor",[7885,7206,0],0,0],
			["Norinsk Tunnel",[3013,7506,0],0,0],
			["Lubjansk Bay",[4673,10004,0],0,0],
			["Nemsk Factory",[7859,9096,0],0,0],
			["Jalovisko",[8756,10119,0],0,0],
			["Brensk Bay",[5823,5641,0],0,0]
			// Above are defaults
		]
	};
	case "sauerland":{
		[
			["Random",[[15448,8466,0],[19488,7462,0],[19478,12440,0],[20210,14501,0],[16453,6895,0],[19666,10377,0],[11000,10157,0],[10669,13320,0],[11349,12225,0],[12104,8936,0],[12879,14983,0]],0,0,1],
			["Buersfeld",[15448,8466,0],0,0],
			["Hoeinghausen",[19488,7462,0],0,0],
			["Berghausen",[19478,12440,0],0,0],
			["Heggen",[20210,14501,0],0,0],
			["Heidermuehle",[16453,6895,0],0,0],
			["Remblinghausen",[19666,10377,0],0,0],
			["Schueren",[11000,10157,0],0,0],
			["Schmallenberg",[10669,13320,0],0,0],
			["Calle",[11349,12225,0],0,0],
			["Oberdorf",[12104,8936,0],0,0],
			["Burg Calle",[12879,14983,0],0,0],
			// Above are defaults
			["Strelingen",[3437,18843,0],0,0],
			["Berghoven",[18734,21955,0],0,0],
			["Oeventrop",[8668,22650,0],0,0],
			["Arnsberg",[1134,24264,0],0,0],
			["Suederbarup",[13260,543,0],0,0],
			["Osterholz",[2580,8344,0],0,0],
			["Uhlenbusch",[4092,12942,0],0,0],
			["Ihrhofen",[9640,19193,0],0,0],
			["Old Airfield",[17253,2167,0],0,0]
		]
	};
	case "panthera2":{
		[
			["Random",[[2354,5213,0],[3281,3348,0],[4793,1862,0],[5969,944,0],[7873,1403,0],[8425,3152,0],[8679,5043,0],[7961,4949,0],[6420,6127,0],[4823,6512,0],[3354,6649,0],[5549,7227,0],[4624,8042,0],[2267,9042,0],[1062,9359,0],[1646,8814,0],[5406,3876,0],[7883,1936,0],[7022,1134,0],[5840,2363,0],[2688,3400,0]],0,0,1],
			["Sella Nevea",[2354,5213,0],0,0],
			["Kobarid",[3281,3348,0],0,0],
			["Taff Grove",[4793,1862,0],0,0],
			["Zappado",[5969,944,0],0,0],
			["New Skooma",[7873,1403,0],0,0],
			["Zelezniki",[8425,3152,0],0,0],
			["Begunje",[8679,5043,0],0,0],
			["Bled",[7961,4949,0],0,0],
			["Mojstrana",[6420,6127,0],0,0],
			["Podkoren",[4823,6512,0],0,0],
			["Tarvisio",[3354,6649,0],0,0],
			// Above are defaults
			["Hoopsberg",[5549,7227,0],0,0],
			["Arnoldstein",[4624,8042,0],0,0],
			["Mello",[2267,9042,0],0,0],
			["Vatra",[1062,9359,0],0,0],
			["Borna",[1646,8814,0],0,0],
			["Ukanc",[5406,3876,0],0,0],
			["Smugglers Den",[7883,1936,0],0,0],
			["Foxhill",[7022,1134,0],0,0],
			["Koritnica",[5840,2363,0],0,0],
			["FOB Boriana",[2688,3400,0],0,0]
		]
	};
	case "smd_sahrani_a2":{
		[
			["Random",[[11369,5348,0],[9343,5953,0],[7645,6408,0],[12369,7108,0],[9131,8319,0],[10697,9490,0],[13197,8848,0],[14307,12496,0],[9763,14424,0],[10690,16186,0],[17314,14304,0],[18952,13913,0],[4541,15297,0],[9691,11021,0],[8311,9058,0],[2106,2679,0],[7767,15806,0],[6222,17336,0],[14230,1691,0]],0,0,1], // Random will never be blocked, so always keep it if using body check.
			["Parato",[11369,5348,0],0,0],
			["Cayo",[9343,5953,0],0,0],
			["Arcadia",[7645,6408,0],0,0],
			["Ortego",[12369,7108,0],0,0],
			["Somato",[9131,8319,0],0,0],
			["Paraiso",[10697,9490,0],0,0],
			["Corazol",[13197,8848,0],0,0],
			["Bagango",[14307,12496,0],0,0],
			["Pacamac",[9763,14424,0],0,0],
			["Mataredo",[10690,16186,0],0,0],
			["Masbete",[17314,14304,0],0,0],
			["Pita",[18952,13913,0],0,0],
			["Isla Del Vassal",[4541,15297,0],0,0],
			["Rashidah",[9691,11021,0],0,0],
			["Chantico",[8311,9058,0],0,0],
			["Rahmadi",[2106,2679,0],0,0],
			["Hunapu",[7767,15806,0],0,0],
			["Cabo Valiente",[6222,17336,0],0,0]
		]
	};
	case "takistan":{ // No time to add. Please post spawn names as pull request or on support thread if you use these
		[
			["Random",[[8604,7735,0],[3899,7279,0],[8615,5291,0],[5650,4254,0],[6212,8806,0],[4486,4622,0],[4802,8408,0],[7622,8554,0],[7424,4389,0],[8740,6432,0],[3731,5860,0]],0,0,1],
			["Unknown1",[8604,7735,0],0,0],
			["Unknown2",[3899,7279,0],0,0],
			["Unknown3",[8615,5291,0],0,0],
			["Unknown4",[5650,4254,0],0,0],
			["Unknown5",[6212,8806,0],0,0],
			["Unknown6",[4486,4622,0],0,0],
			["Unknown7",[4802,8408,0],0,0],
			["Unknown8",[7622,8554,0],0,0],
			["Unknown9",[7424,4389,0],0,0],
			["Unknown10",[8740,6432,0],0,0],
			["Unknown11",[3731,5860,0],0,0]
			// Above are defaults
		]
	};
};