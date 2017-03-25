class Office : Residential
{
	maxRoaming = 3;
	lootChance = 0.2;
	zombieClass[] = {"z_suit1","z_suit2"};
	lootGroup = Office;
};

class Land_HouseB_Tenement : Office
{
	//lootPos[] = {{5.40576,9.89453,-20.7845},{5.98975,14.168,-20.7845},{12.9604,14.0723,-20.7845},{14.6064,8.92383,-20.7845},{-12.0771,0.645508,-20.7845},{-0.924805,5.26563,-20.7845}};
	lootPos[] = {
		//{5.41,9.89,-20.78},{5.99,14.17,-20.78},{12.96,14.07,-20.78},{14.61,8.92,-20.78},{-12.08,0.65,-20.78},{-0.92,5.27,-20.78},{1.27,-0.62,-20.78},{-2.28,2.08,-20.78},{-10.07,4.64,-20.78},{5.35,3.42,-20.78},{13.35,3.37,-20.78},{2.53,-5.75,-20.78},
		{2.39063,4.80322,-19.8245},{-10.2041,-0.48877,-20.3445},{4.65625,-2.125,-20.3445},{7.27734,11.5957,-20.8045},{-4.50854,5.10645,-19.8245},{5.11865,12.0298,-20.8045},{13.5625,12.1631,-20.8045}
	};
	lootPosSmall[] = {
		{-1.7771,4.57861,-19.8245},{-0.338623,4.80322,-19.8245},{-11.0986,-0.365234,-20.3445},{2.38574,5.15869,-20.2245},{14.2202,4.91895,-20.3945},{6.7251,11.6895,-20.3445},{3.2915,-1.90088,-20.3445},{12.9602,10.0479,-20.8045},{13.3726,0.939453,-20.8045}
	};
	zedPos[] = {{-0.924805,5.26563,-20.7845},{-12.0771,0.645508,-20.7845},{12.9604,14.0723,-20.7845},{14.6064,8.92383,-20.7845},{5.40576,9.89453,-20.7845},{5.98975,14.168,-20.7845}};
};

class Land_Panelak : Office
{
	lootPos[] = {
		//{-2.76855,-6.26563,0.0714111},{-2.93848,-1.3916,0.0714111},{-5.4209,-3.13184,0.0814209},{-6.81152,-6.15527,0.0714111},{-4.00879,2.53027,0.0714111},{-0.730469,-3.20117,2.77145},{3.97852,-7.08936,2.77145},{2.49609,2.93701,2.77145},{6.78906,1.55273,2.77145},{6.38477,-2.3916,2.77145},{6.80566,-5.77295,2.77145},{4.59863,-1.36328,2.77145},{-0.824219,1.86914,1.32864},
		{-3.76709,-5.5791,0.0714226},{-6,-5.1709,0.0714226},{-4.86719,-3.30518,0.0714226},{-5.75098,1.51172,0.0714226},{3.95483,-4.83008,2.77144},{4.8728,1.51855,2.77144},{6.07324,-5.4668,2.77144}
	};
	lootPosSmall[] = {
		{-4.05713,-4.55469,1.21142},{-4.03857,-4.71094,0.0714211},{-5.52002,-6.45508,0.0714211},{-3.9873,-3.06934,0.761421},{-3.99072,-3.84375,1.29142},{-4.09497,-2.15625,0.0714211},{-5.01172,1.91406,0.0714211},{-4.146,1.42871,0.391421},{1.37354,-5.00684,2.77144},{4.1167,-7.4834,2.77144},{4.2417,-3.69287,3.00144},{5.16602,-3.7334,3.40144},{4.15137,1.27051,2.77144},{4.66846,1.74414,3.43144},{5.69775,-6.44727,2.77144}
	};
	zedPos[] = {{-2.76855,-6.26563,0.0714111},{-2.93848,-1.3916,0.0714111},{-4.00879,2.53027,0.0714111},{-6.81152,-6.15527,0.0714111},{-5.4209,-3.13184,0.0814209},{-0.824219,1.86914,1.32864},{-0.730469,-3.20117,2.77145},{2.49609,2.93701,2.77145},{3.97852,-7.08936,2.77145},{4.59863,-1.36328,2.77145},{6.38477,-2.3916,2.77145},{6.78906,1.55273,2.77145},{6.80566,-5.77295,2.77145}};
};

class Land_Panelak2 : Office
{
	lootPos[] = {
		//{-0.729492,-3.00684,-2.62872},{-0.763672,1.36133,-1.3714},{-0.30127,3.64941,1.32861},{0.736328,-3.22266,2.76105},{-0.630859,1.84668,4.05231},{3.68896,-7.33789,5.46661},{2.26807,2.94043,5.46661},{6.70068,2.69043,5.46655},{6.87842,-1.45996,5.47675},{6.39795,-6.02734,5.47662},{4.55371,-1.76758,5.46667},{2.76416,0.446289,5.46661},
		{0.53833,2.0498,-1.29137},{4.87939,1.90234,5.46665},{4.71045,-3.02197,5.46665},{6.01514,-5.86133,5.46665},{3.8833,-4.72314,5.46665}
	};
	lootPosSmall[] = {
		{4.85205,-3.7041,6.69665},{4.38281,-3.68848,6.09665},{5.229,1.64063,6.24665},{4.62354,1.4082,6.24665},{5.41382,-5.54199,5.79665},{1.20215,-4.93652,5.47665}
	};
	zedPos[] = {{-0.729492,-3.00684,-2.62872},{-0.763672,1.36133,-1.3714},{-0.30127,3.64941,1.32861},{0.736328,-3.22266,2.76105},{-0.630859,1.84668,4.05231},{6.70068,2.69043,5.46655},{2.26807,2.94043,5.46661},{2.76416,0.446289,5.46661},{3.68896,-7.33789,5.46661},{4.55371,-1.76758,5.46667},{6.39795,-6.02734,5.47662},{6.87842,-1.45996,5.47675}};
};

class Land_rail_station_big : Office
{
	lootPos[] = {
		//{-4.96924,4.56348,-4.99451},{0.461426,4.86621,-4.9848},{2.46631,2.22656,-4.97443},{-1.31689,-2.5918,-4.98444},{-3.29102,-0.121094,-4.98444},{-1.07373,2.37305,-4.98462},{7.46338,-3.40723,-5.04431},{8.93652,3.12695,-5.04443},{-8.16357,-5.12109,-5.03442},
		{2.11914,-0.13208,-4.98439},{0.712402,0.718994,-4.98439},{2.45654,3.80566,-4.98439},{7.45947,1.49683,-5.04438}
	};
	lootPosSmall[] = {
		{1.81641,0.77417,-4.05439},{2.74609,0.869385,-4.05438},{-5.16943,-3.43555,-4.98439},{9.25,0.421631,-5.04438},{-6.54004,-4.09692,-5.04439}
	};
	zedPos[] = {{8.93652,3.12695,-5.04443},{7.46338,-3.40723,-5.04431},{-8.16357,-5.12109,-5.03442},{-4.96924,4.56348,-4.99451},{0.461426,4.86621,-4.9848},{-1.07373,2.37305,-4.98462},{-1.31689,-2.5918,-4.98444},{-3.29102,-0.121094,-4.98444},{2.46631,2.22656,-4.97443}};
};

class Land_A_Office01 : Office
{
	lootPos[] = {
		//{-2.5,-2.47,-4.53},{4.11,-0.69,-4.53},{4.11,6.11,-4.53},{0.24,6.06,-4.53},{4.32,3.74,-4.53},{5.09,0.22,-4.53},{11.8,-1.78,-4.53},{14.58,-4.11,-4.53},{13.82,-0.73,-4.53},{-7.76,5.59,-4.53},{1.81,1,-2.03},{4.93,4.32,-2.03},{0.52,6.76,-2.03},{2.23,3.76,-2.03},{-4.89,-2.55,-2},{-14.56,-3.41,-1.99},{-15.27,5.93,-1.95},{-10.91,6.04,0.45},{-6.31,3.3,0.48},{7.64,6.39,0.47},{13.67,6.6,0.45},{13.19,-2.59,0.49},{3.09,2.44,6.2},{-1.46,-2.28,6.19},{-2.29,4.54,0.47},{4.77,-4.56,-2.02},{8.35,-1.11,-2.03},{9.95,-3.74,-2.01},{7.14,-2.51,-2.03},{12.87,4.71,-2.03},{15.37,3.42,-2.03},{-0.74,3.17,-4.53},{15.57,1.33,-2.03},{-0.07,-6.44,-2},{-7.93,3.18,-2.03},{-6.05,6.27,-2.03},{-13.11,1.06,-2.03},{-3.3,4.18,6.2},
		{-7.84912,6.3855,-4.528},{3.84424,3.27051,-4.528},{-0.0383301,3.51733,-4.528},{5.37695,5.63379,-4.528},{15.5393,-1.90015,-4.528},{13.8057,-2.3811,-4.528},{10.114,3.44849,-4.528},{10.3008,6.32495,-4.528},{1.71021,1.66675,-4.528},{1.58032,5.87671,-2.028},{-0.599854,7.08984,-2.028},{3.87769,6.84229,-2.028},{-7.6709,6.72485,-2.038},{-4.729,4.19556,-2.028},{-7.93091,3.2041,-2.038},{10.2354,-1.9187,-2.018},{6.9812,-4.30933,-2.038},{15.4075,6.03198,-2.038},{13.9285,3.40649,-2.038},{0.163086,3.43286,0.472002},{7.13892,3.64844,0.471998},{1.71973,-1.40967,6.72491},{-0.443359,0.61499,-2.028},{-5.22144,-3.69971,-2.028}
	};
	lootPosSmall[] = {
		{3.50342,5.28027,-3.668},{5.68286,4.95898,-4.048},{0.895508,4.98511,-3.288},{2.42017,4.98291,-2.908},{15.8838,-2.62256,-2.908},{4.74072,6.75391,-0.938002},{7.69507,-0.465332,-1.618},{10.7341,-1.90918,-1.158},{6.34229,-2.73242,-0.398003},{-4.86572,7.16187,-0.988003},{-4.27173,4.2207,-0.778002},{-4.56543,5.48193,-1.348},{-8.21387,2.04932,-2.028},{12.6631,2.83398,-1.918},{12.8892,2.82178,-0.778002},{11.5281,7.08887,-1.338},{11.3428,5.02344,-1.158},{11.636,6.34937,-1.338},{-3.802,4.13525,1.71201},{0.720947,3.55957,0.952003},{-3.78076,4.44727,0.952003},{10.7363,3.28833,-3.668},{6.46191,5.13013,-2.908},{7.03906,6.25537,-4.098},{6.68823,5.81177,-3.818},{10.7056,4.13135,-3.288},{2.86792,-0.489014,6.72491}
	};
	zedPos[] = {{0.242188,6.06348,-4.52798},{11.8037,-1.77832,-4.52798},{13.8174,-0.731445,-4.52798},{14.5811,-4.1123,-4.52798},{-2.50391,-2.46875,-4.52798},{4.11133,6.11328,-4.52798},{4.11279,-0.686523,-4.52798},{4.31641,3.74121,-4.52798},{5.08887,0.219727,-4.52798},{-7.76221,5.59082,-4.52798},{1.18945,6.07129,-2.02802},{12.8701,4.70996,-2.02802},{15.3721,3.42383,-2.02802},{1.81152,0.994141,-2.02802},{2.23145,3.76563,-2.02802},{4.93164,4.32031,-2.02802},{7.13867,-2.50684,-2.02802},{8.3457,-1.10645,-2.02802},{4.7666,-4.55859,-2.02487},{9.94727,-3.74023,-2.008},{-4.89111,-2.54785,-1.99799},{-14.5596,-3.40625,-1.98798},{-15.2705,5.92871,-1.94794},{13.6729,6.59668,0.451965},{-10.9063,6.04199,0.451996},{-2.12988,4.5166,0.472015},{7.6416,6.3877,0.472015},{-6.30762,3.30078,0.482025},{13.1924,-2.58594,0.492004},{-1.45654,-2.2832,6.19489},{3.09229,2.4375,6.2049}};
};

class Land_A_Office02 : Office
{
	lootPos[] = {
		//{4.72266,-5.74219,-8.15109},{0.961426,-5.16992,-8.15076},
		{19.8076,3.26123,5.38394},{0.27002,0.0458984,5.38394},{5.0415,-4.854,-8.17109},{-0.263184,-5.15259,-8.17105}
	};
	lootPosSmall[] = {
		{-0.112305,-4.35254,-8.17073},{-0.813965,-4.14355,-7.79043},{4.104,-7.27051,-8.1711},{10.7427,2.16992,5.38394},{21.5991,2.56104,5.42394},{-4.02783,2.4668,5.38394},{-17.3232,1.29028,8.71684},{-18.0732,3.38623,8.71684}
	};
	zedPos[] = {{4.72266,-5.74219,-8.15109},{0.961426,-5.16992,-8.15076}};
};
// ALT-MAP Support 
class Land_aif_hotel : Office //multi-story hotel with balconies
{
	lootPos[] = {{14.0938,-4.38281,6.24485},{4.53711,12.8853,6.24484},{-20.623,-7.3584,2.74056},{-20.9375,-15.0547,-0.759435},{-20.4102,-4.95166,-4.25943},{20.8555,6.60156,-4.25943}};
};
class Land_aif_hotel_bio : Office // multi-story hotel with balconies
{
	zedPos[] = {{-18.5781,4.20801,-8.5215},{-17.8848,-6.33398,-8.52153}};
	lootPos[] = {{-17.8848,-6.33398,-8.52153},{16.8477,-12.5811,-8.52153},{17.8984,12.9102,-8.52153},{-1.51172,11.0117,-8.52153},{-23.4453,-5.7998,-0.835522},
	{-22.4063,-16.8887,3.01448},{-5.8418,5.27832,6.86919},{16.7227,16.8076,6.86919},{18.2676,-14.2627,6.86919},{-16.8984,-16.3701,6.86919}};
};
class land_mbg_apartments_big_04: Office { // multi-story cement, 3 non-enterable garages
	lootPos[] = {
		{10.1953,-2.47656,-3.19898},{3.14453,-0.197266,-3.19898},{0.949219,5.58789,5.94502},{-0.888672,2.47461,2.69382},{3.99414,-0.273438,2.89702},{10.7344,-0.351563,2.89702},{-10.4961,-5.46484,2.89702},{-3.25391,0.669922,2.89702},{10.6816,-2.26367,-0.15098},{-3.48828,0.31543,-0.15098},{-2.97461,-2.35547,-0.15098}
	};
	lootPosSmall[] = {
		{4.52734,1.46289,-3.19898},{2.90234,5.90918,2.89702},{5.46875,-0.703125,2.89702},{-4.46875,-0.686523,2.89702},{5.17383,-1.80566,-0.15098},{-7.44531,5.68359,-0.15098}
	};
	zedPos[] = {{-0.0898438,4.67773,-7.08873},{0.890625,-5.13965,-6.90238}};
};
//land_vysoky2 in Residential.hpp
//land_dlouhy1 in Residential.hpp
class Land_ibrPanelak: Land_Panelak{};
class Land_ibrPanelak2: Land_Panelak2{};
class LAND_konecna : Office
{
	lootPos[] = {{14.8423,-0.987793,-1.59364},
		{16.873,-2.86865,-1.59364},
		{13.3672,-9.11377,-1.59364},
		{5.09497,-9.98682,-1.59364},
		{-24.8281,-1.17871,-1.59364},
		{-14.0747,-7.3042,-1.59364},
		{-19.0789,0.98291,-1.59364},
		{4.67944,0.805176,-1.59364},
		{-11.4639,-10.1475,-1.59364}};
};
// ALT-MAP Tavi
// ALT-MAP SAHRANI
class Land_smd_dum_olez_istan1_open2 : Office // same as Land_Panelak2
{
	zedPos[] = {{-3.77344,1.99414,-1.84398},{1.31641,-2.06934,-1.84399}};
	lootPos[] = {{-5.99023,-5.60449,-1.84398},{6.73145,1.43555,-1.84399},{4.90332,-3.25098,1.37497},{-1.73145,-3.67773,1.37497},{-7.09375,-3.92773,1.37497}};
};
class Land_smd_hotel_riviera2 : Office // 2 story motel blue tiles
{
	zedPos[] = {{-9.32324,-7.52173,-0.321464},{2.03027,-6.70923,-0.321464}};
	lootPos[] = {{-9.32324,-7.52173,-0.321464},{2.03027,-6.70923,-0.321464}};
};
class Land_smd_hotel_riviera1 : Office // 2 story motel blue tiles
{
	zedPos[] = {{-10.7217,-6.02148,-0.322234},{-4.7041,-6.77051,-0.321464},{8.9541,-6.33838,-0.321464}};
	lootPos[] = {{-10.7217,-6.02148,-0.322234},{-4.7041,-6.77051,-0.321464},{8.9541,-6.33838,-0.321464}};
};
class Land_smd_hotel : Office // 4 story apartment building
{
	zedPos[] = {{-16.1006,0.519043,-7.74672},{-0.744141,10.0884,-7.74672}};
	lootPos[] = {{-0.744141,10.0884,-7.74672},{14.6982,-16.9382,-7.74672},{4.86719,14.0911,-7.74672},{-20.9121,-5.11133,-0.759434},{-20.6094,-6.26953,2.74057},{-20.6172,-15.1313,2.74057},
		{-17.0537,17.2102,6.24485},{14.3779,2.7583,6.24485},{20.75,6.71948,-0.759434},{20.9033,14.7278,-4.25943},{20.541,5.12622,-4.25943}};
};
class Land_smd_dum_istan4_detaily1 : Office // 4 story hotel
{
	zedPos[] = {{-2.51367,6.55078,-7.28588},{4.54834,6.33984,-7.28588},{2.58838,-3.21289,-4.33588}};
	lootPos[] = {{2.58838,-3.21289,-4.33588}};
};
//Land_smd_dum_istan4 in Residential.hpp
class Land_smd_hospoda_mesto : Office // pub HOSTINEC
{
	zedPos[] = {{4.85254,-4.82422,-5.17996},{3.28711,6.78125,-1.2485}};
	lootPos[] = {{3.05957,-2.43555,-5.18104},{2.88574,5.32422,-5.19056},{3.27246,1.20703,-5.19001},{1.75098,-1.28906,-5.17993},{-7.48535,-4.07617,-1.2291},{2.63184,-1.78516,-1.2417}};
};
// ALT-MAP Support

//DZE BELOW
class LAND_ibr_bank: Office
{
	lootPos[] = {
		{ 1.44702,-0.9551,-1.60158 },
		{ -7.40649,-4.9482,-1.60158 },
		{ -7.50879,3.1616,-1.60158 },
		{ -13.1931,3.0244,-1.60158 },
		{ -10.6316,-1.4922,-1.60158 },
		{ -10.3481,-5.6631,-1.60158 },
		{ -14.0247,-6.4653,-1.60158 },
		{ -10.1897,-2.6592,-1.60158 }};
};

class land_bunka: Office {
	lootPos[] = {{1.83496,0.451172,-1.51244},{-2.04492,2.11377,-1.51245},{3.07324,2.41675,-1.51245}};
};

class Land_ibr_terminal: Office
{
	lootPos[] = {
		{ 11.1885,-13.0669,-4.04974 },
		{ 4.42383,-9.64746,-4.04974 },
		{ -2.42822,-6.94775,-4.04974 },
		{ -3.00537,-1.25439,-4.04974 },
		{ 0.473145,8.72314,-4.04974 },
		{ 14.8608,12.5249,-4.04974 },
		{ 3.33838,-14.5229,0.581566 },
		{ -3.88428,-17.5376,0.581566 },
		{ -17.3682,0.572266,-4.05001 },
		{ -13.7939,0.576172,-0.231342 },
		{ -2.83545,10.9009,-0.949741 },
		{ -2.27686,-16.4238,3.68157 }};
};
class Land_A_Villa_EP1: Office // takistani villa 2 story multi-wing 
{
	zedPos[] = {{5.5332,2.70361,-5.06721},{13.2578,-14.3623,-5.06719}};
	//lootPos[] = {{-15.002,9.06104,1.97169},{10.3047,10.7178,1.97146},{17.4824,-15.3862,1.99229},{10.1855,-0.722656,-1.4844},{-2.54688,14.5698,-1.4844},{-14.8945,12.7236,-1.4844},{-8.51953,14.1064,-1.4844}};
	lootPos[] = {
		{ -23.3442,1.71484,-3.65929 },
		{ 14.5498,-5.69775,-5.06722 },
		{ 5.8457,-2.09814,-5.06717 },
		{ 9.5249,3.76563,-5.06717 },
		{ 10.0454,11.5093,-5.0734 },
		{ 0.268555,8.64648,-5.06699 },
		{ -0.378906,15.3989,-5.06724 },
		{ -6.68506,14.9448,-5.06722 },
		{ -10.9644,13.0996,-5.06719 },
		{ 11.0571,4.48926,-1.48401 },
		{ 2.85938,9.12939,-1.48407 },
		{ -3.87646,8.01416,-1.4844 },
		{ 0.0537109,10.3984,-1.4844 },
		{ -2.78467,13.5903,-1.4844 },
		{ -0.118652,15.3394,-1.4844 },
		{ -6.73779,15.772,-1.4844 },
		{ -8.39453,13.5249,-1.4844 },
		{ -10.5317,9.75146,-1.4844 },
		{ -11.8062,14.2358,-1.4844 },
		{ -15.5771,14.0396,-1.4844 }};
};
class Land_A_Office01_EP1: Land_A_Office01
{
	lootPos[] = {
		{ -2.50391,-2.46948,-4.728 },
		{ 4.23535,-0.336914,-4.728 },
		{ 4.11133,6.1123,-4.728 },
		{ 0.242188,6.06299,-4.728 },
		{ 4.31641,3.74023,-4.728 },
		{ 5.08887,0.219727,-4.728 },
		{ 11.6504,-1.5647,-4.728 },
		{ 14.5811,-4.1123,-4.728 },
		{ 13.8545,-0.749023,-4.728 },
		{ -7.7627,5.59082,-4.728 },
		{ 1.81152,0.993408,-2.228 },
		{ 4.93164,4.31982,-2.228 },
		{ 1.18945,6.07031,-2.228 },
		{ 2.23145,3.76563,-2.228 },
		{ -4.76367,-2.51221,-2.228 },
		{ -14.5596,-3.40723,-2.228 },
		{ -15.2705,5.92773,-2.228 },
		{ -10.9063,6.04175,0.672008 },
		{ -6.30762,3.30078,0.672006 },
		{ 7.6416,6.38696,0.672001 },
		{ 13.6729,6.5957,0.671999 },
		{ 13.1924,-2.58691,0.671998 },
		{ 3.0918,2.4375,6.20491 },
		{ -1.45703,-2.28369,6.20491 },
		{ -2.12988,4.51587,0.672005 },
		{ 4.74414,-4.60156,-2.21486 },
		{ 8.3457,-1.10718,-2.228 },
		{ 9.94727,-3.74146,-2.228 },
		{ 7.13867,-2.50732,-2.228 },
		{ 12.8701,4.70923,-2.228 },
		{ 15.3721,3.42383,-2.228 }};
};

class Land_MBG_Police_Station: Office
{
	lootPos[] = {
		{ 9.81543,-4.36365,-1.59829 },
		{ 1.01172,-6.02344,-1.59829 },
		{ -5.03369,-5.98376,-1.59829 },
		{ -8.5415,-0.348511,-1.59829 },
		{ -8.88574,-2.93823,-1.59829 },
		{ -5.55518,4.80493,-1.59829 },
		{ -1.77246,5.49365,-1.59829 },
		{ 2.32129,6.33032,-1.59829 },
		{ 3.54492,6.27332,1.68834 },
		{ 9.88916,4.68176,1.68833 },
		{ 10.0566,-1.07727,1.68833 },
		{ 6.6499,1.78296,1.68833 },
		{ -5.30029,-2.68726,1.68833 },
		{ 1.25977,-1.76636,1.68833 },
		{ -6.56689,1.51843,1.68834 },
		{ -5.33887,3.92529,1.68834 },
		{ -2.3125,6.18774,1.68834 }};
};

class land_mbg_ger_estate_2: Office { // 2 stucco red/orange light by door
	//lootPos[]={{5.34766,-0.882813,-2.13187},{2.38281,-1.03418,-2.13187},{2.54688,-4.41602,-2.13187},{-7.71094,-2.73242,-2.13187},{-2.22656,5.91602,-2.13187},{-5.36328,4.46387,-2.13187}};
	lootPos[] = {
		{-0.847656,-5.23291,-2.13187},{-0.615234,3.95996,-1.55187},{8.30859,0.642578,-2.02187},{7.60547,6.6792,-2.13187},{6.38867,-5.31396,-2.13187},{-4.74023,3.71582,-2.13187}
	};
	lootPosSmall[] = {
		{-6.3125,-6.48145,-1.43187},{-4.81445,-2.0293,-1.43187},{-3.47852,4.58789,-2.13187},{0.107422,3.45947,-1.55187},{4.23438,-1.42188,-1.83187},{4.97461,1.09229,-1.30187},{6.53711,-2.07227,-1.29187},{6.35547,-4.70117,-1.65187},{-7.55273,3.99268,-1.65187}
	};
	//zedPos[] = {{2.38281,-1.03418,-2.13187}};
	zedPos[] = {{2.12695,-8.60791,-1.5208},{1.33984,9.18945,-1.25071}};
};
