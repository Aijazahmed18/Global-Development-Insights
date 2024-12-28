CREATE DATABASE analysis;

USE analysis;

CREATE TABLE countries (
    name                    VARCHAR(255) PRIMARY KEY,
    population              INT,
    percent_one_year_change FLOAT,
    population_change       INT,
    density_per_sq_km       INT,
    area_sq_km              INT,
    net_migrants            INT,
    fertility_rate          FLOAT,
    median_age              FLOAT,
    percent_of_world_pop    FLOAT
);

INSERT INTO countries (name, population, percent_one_year_change, population_change, density_per_sq_km, area_sq_km, net_migrants, fertility_rate, median_age, percent_of_world_pop) VALUES
('India', 1450935791, 0.89, 12866195, 488, 2973190, -630830, 2.0, 28, 17.78),
('China', 1419321278, -0.23, -3263655, 151, 9388211, -318992, 1.0, 40, 17.39),
('United States', 345426571, 0.57, 1949236, 38, 9147420, 1286132, 1.6, 38, 4.23),
('Indonesia', 283487931, 0.82, 2297864, 156, 1811570, -38469, 2.1, 30, 3.47),
('Pakistan', 251269164, 1.52, 3764669, 326, 770880, -1401173, 3.5, 20, 3.08),
('Nigeria', 232679478, 2.10, 4796533, 255, 910770, -35202, 4.4, 18, 2.85),
('Brazil', 211998573, 0.41, 857844, 25, 8358140, -225510, 1.6, 34, 2.60),
('Bangladesh', 173562364, 1.22, 2095374, 1333, 130170, -473362, 2.1, 26, 2.13),
('Russia', 144820423, -0.43, -620077, 9, 16376870, -178042, 1.5, 40, 1.77),
('Ethiopia', 132059767, 2.62, 3368075, 132, 1000000, 30069, 3.9, 19, 1.62),
('Mexico', 130861007, 0.86, 1121248, 67, 1943950, -104581, 1.9, 29, 1.60),
('Japan', 123753041, -0.50, -617906, 339, 364555, 153357, 1.2, 49, 1.52),
('Egypt', 116538258, 1.75, 2002486, 117, 995450, 123884, 2.7, 24, 1.43),
('Philippines', 115843670, 0.83, 952471, 389, 298170, -160373, 1.9, 26, 1.42),
('DR Congo', 109276265, 3.30, 3486534, 48, 2267050, -26968, 6.0, 16, 1.34),
('Vietnam', 100987686, 0.63, 635494, 326, 310070, -59645, 1.9, 33, 1.24),
('Iran', 91567738, 1.06, 959031, 56, 1628550, 190156, 1.7, 33, 1.12),
('Turkey', 87473805, 0.23, 203304, 114, 769630, -275952, 1.6, 33, 1.07),
('Germany', 84552242, 0.00, 4011, 243, 348560, 36954, 1.4, 45, 1.04),
('Thailand', 71668011, -0.05, -34424, 140, 510890, 23321, 1.2, 40, 0.88),
('United Kingdom', 69138192, 0.66, 455230, 286, 241930, 417114, 1.6, 40, 0.85),
('Tanzania', 68560157, 2.92, 1942551, 77, 885800, -29865, 4.5, 17, 0.84),
('France', 66548530, 0.17, 109708, 122, 547557, 90527, 1.6, 42, 0.82),
('South Africa', 64007187, 1.26, 794803, 53, 1213090, 166972, 2.2, 28, 0.78),
('Italy', 59342867, -0.26, -156586, 202, 294140, 95246, 1.2, 48, 0.73),
('Kenya', 56432944, 1.98, 1093941, 99, 569140, -19781, 3.2, 20, 0.69),
('Myanmar', 54500091, 0.68, 366293, 83, 653290, -37979, 2.1, 30, 0.67),
('Colombia', 52886363, 1.08, 565211, 48, 1109500, 141643, 1.6, 32, 0.65),
('South Korea', 51717590, -0.06, -31149, 532, 97230, 75963, 0.7, 45, 0.63),
('Sudan', 50448963, 0.81, 406172, 29, 1765048, -544257, 4.3, 18, 0.62),
('Uganda', 50015092, 2.79, 1358491, 250, 199810, -117924, 4.2, 17, 0.61),
('Spain', 47910526, 0.00, -1053, 96, 498800, 111674, 1.2, 45, 0.59),
('Algeria', 46814308, 1.41, 650089, 20, 2381740, -31240, 2.7, 28, 0.57),
('Iraq', 46042015, 2.15, 967966, 106, 434320, -17735, 3.2, 21, 0.56),
('Argentina', 45696159, 0.35, 157758, 17, 2736690, 3454, 1.5, 33, 0.56),
('Afghanistan', 42647492, 2.88, 1192731, 65, 652860, -44089, 4.8, 17, 0.52),
('Yemen', 40583164, 3.03, 1192365, 77, 527970, -10482, 4.5, 18, 0.50),
('Canada', 39742430, 1.13, 443325, 4, 9093510, 368599, 1.3, 40, 0.49),
('Poland', 38539201, -0.58, -223643, 126, 306230, -238062, 1.3, 42, 0.47),
('Morocco', 38081173, 0.98, 368668, 85, 446300, -46802, 2.2, 30, 0.47),
('Angola', 37885849, 3.09, 1135943, 30, 1246700, -2629, 5.0, 17, 0.46),
('Ukraine', 37860221, 0.34, 127385, 65, 579320, 1146012, 1.0, 42, 0.46),
('Uzbekistan', 36361859, 1.99, 709552, 85, 425400, -7066, 3.5, 27, 0.45),
('Malaysia', 35557673, 1.23, 431375, 108, 328550, 174770, 1.5, 31, 0.44),
('Mozambique', 34631766, 2.96, 996606, 44, 786380, -38940, 4.7, 16, 0.42),
('Ghana', 34427414, 1.89, 639500, 151, 227540, -13114, 3.3, 21, 0.42),
('Peru', 34217848, 1.10, 372231, 27, 1280000, 18406, 2.0, 30, 0.42),
('Saudi Arabia', 33962757, 2.10, 698465, 16, 2149690, 122170, 2.3, 30, 0.42),
('Madagascar', 31964956, 2.47, 769024, 55, 581795, -1795, 3.9, 19, 0.39),
('Côte d''Ivoire', 31934230, 2.47, 768576, 100, 318000, 7838, 4.2, 18, 0.39),
('Nepal', 29651054, -0.15, -43560, 207, 143350, -401282, 2.0, 25, 0.36),
('Cameroon', 29123744, 2.65, 751057, 62, 472710, -13892, 4.3, 18, 0.36),
('Venezuela', 28405543, 0.37, 104689, 32, 882050, -105297, 2.1, 29, 0.35),
('Niger', 27032412, 3.34, 872545, 21, 1266700, -4041, 5.9, 15, 0.33),
('Australia', 26713205, 0.99, 262081, 3, 7682300, 138510, 1.6, 38, 0.33),
('North Korea', 26498823, 0.31, 80619, 220, 120410, -2473, 1.8, 36, 0.32),
('Syria', 24672760, 4.57, 1078137, 134, 183630, 546494, 2.7, 23, 0.30),
('Mali', 24478595, 2.98, 709468, 20, 1220190, -46880, 5.5, 16, 0.30),
('Burkina Faso', 23548781, 2.27, 523005, 86, 273600, -25807, 4.1, 17, 0.29),
('Taiwan', 23213962, -0.44, -103183, 656, 35410, -25832, 0.9, 44, 0.28),
('Sri Lanka', 23103565, 0.57, 131948, 368, 62710, -27245, 2.0, 33, 0.28),
('Malawi', 21655286, 2.61, 550804, 230, 94280, -1507, 3.6, 18, 0.27),
('Zambia', 21314956, 2.85, 590991, 29, 743390, 7381, 4.0, 18, 0.26),
('Kazakhstan', 20592571, 1.29, 262467, 8, 2699700, -7368, 3.0, 30, 0.25),
('Chad', 20299123, 5.07, 980059, 16, 1259200, 204040, 6.0, 16, 0.25),
('Chile', 19764771, 0.54, 105936, 27, 743532, 58316, 1.1, 36, 0.24),
('Romania', 19015088, -0.54, -103391, 83, 230170, -28466, 1.7, 43, 0.23),
('Somalia', 19009151, 3.54, 650536, 30, 627340, 26859, 6.0, 16, 0.23),
('Senegal', 18501984, 2.35, 424411, 96, 192530, -10307, 3.8, 19, 0.23),
('Guatemala', 18406359, 1.55, 281521, 172, 107160, -7725, 2.3, 23, 0.23),
('Netherlands', 18228742, 0.75, 136218, 541, 33720, 121628, 1.4, 41, 0.22),
('Ecuador', 18135478, 0.86, 155395, 73, 248360, -19704, 1.8, 29, 0.22),
('Cambodia', 17638801, 1.23, 214921, 100, 176520, -32960, 2.5, 26, 0.22),
('Zimbabwe', 16634373, 1.80, 293551, 43, 386850, -60528, 3.7, 18, 0.20),
('Guinea', 14754785, 2.42, 349317, 60, 245720, -12024, 4.1, 18, 0.18),
('Benin', 14462724, 2.49, 351690, 128, 112760, -7725, 4.5, 18, 0.18),
('Rwanda', 14256567, 2.16, 302096, 578, 24670, -15582, 3.6, 20, 0.17),
('Burundi', 14047786, 2.62, 358336, 547, 25680, -27074, 4.8, 16, 0.17),
('Bolivia', 12413315, 1.38, 169156, 11, 1083300, -3000, 2.5, 25, 0.15),
('Tunisia', 12277109, 0.63, 76678, 79, 155360, -15221, 1.8, 33, 0.15),
('South Sudan', 11943408, 4.01, 460034, 20, 610952, 15374, 3.8, 18, 0.15),
('Haiti', 11772557, 1.16, 135159, 427, 27560, -31747, 2.6, 24, 0.14),
('Belgium', 11738763, 0.22, 25870, 388, 30280, 36243, 1.4, 42, 0.14),
('Jordan', 11552876, 0.99, 113663, 130, 88780, -156369, 2.6, 25, 0.14),
('Dominican Republic', 11427557, 0.85, 96292, 236, 48320, -34806, 2.2, 28, 0.14),
('United Arab Emirates', 11027129, 3.62, 385048, 132, 83600, 278439, 1.2, 32, 0.14),
('Cuba', 10979783, -0.36, -40148, 103, 106440, -22356, 1.4, 42, 0.13),
('Honduras', 10825703, 1.70, 180852, 97, 111890, -4821, 2.5, 24, 0.13),
('Czech Republic (Czechia)', 10735859, -0.68, -73857, 139, 77240, -86169, 1.5, 43, 0.13),
('Sweden', 10606999, 0.53, 55505, 26, 410340, 50115, 1.4, 40, 0.13),
('Tajikistan', 10590927, 1.94, 201128, 76, 139960, -21236, 3.0, 22, 0.13),
('Papua New Guinea', 10576502, 1.80, 186867, 23, 452860, -707, 3.1, 23, 0.13),
('Portugal', 10425292, -0.05, -5446, 114, 91590, 20648, 1.5, 47, 0.13),
('Azerbaijan', 10336577, 0.18, 18370, 125, 82658, 10864, 1.7, 33, 0.13),
('Greece', 10047817, -1.90, -195091, 78, 128900, -122772, 1.3, 46, 0.12),
('Hungary', 9676135, -0.11, -10328, 107, 90530, 16223, 1.5, 44, 0.12),
('Togo', 9515236, 2.27, 210899, 175, 54390, -14014, 4.1, 19, 0.12),
('Israel', 9387021, 1.41, 130707, 434, 21640, 10612, 2.8, 29, 0.12),
('Austria', 9120813, -0.11, -9616, 111, 82409, 8813, 1.3, 43, 0.11),
('Belarus', 9056696, -0.65, -58984, 45, 202910, -3119, 1.2, 41, 0.11),
('Switzerland', 8921981, 0.58, 51420, 226, 39516, 40099, 1.4, 43, 0.11),
('Sierra Leone', 8642022, 2.15, 181510, 120, 72180, -11000, 3.7, 19, 0.11),
('Laos', 7769819, 1.37, 104826, 34, 230800, -10284, 2.4, 25, 0.10),
('Turkmenistan', 7494498, 1.77, 130060, 16, 469930, 14646, 2.7, 27, 0.09),
('Hong Kong', 7414909, -0.37, -27825, 7062, 1050, -19272, 0.7, 47, 0.09),
('Libya', 7381023, 1.03, 75364, 4, 1759540, 3448, 2.3, 27, 0.09),
('Kyrgyzstan', 7186009, 1.59, 112493, 37, 191800, 3645, 2.8, 25, 0.09),
('Paraguay', 6929153, 1.24, 85007, 17, 397300, -12451, 2.4, 27, 0.08),
('Nicaragua', 6916140, 1.36, 92527, 57, 120340, -8189, 2.2, 26, 0.08),
('Bulgaria', 6757689, -0.56, -38114, 62, 108560, 524, 1.7, 45, 0.08),
('Serbia', 6736216, -0.55, -36985, 77, 87460, -8132, 1.5, 44, 0.08),
('El Salvador', 6338193, 0.45, 28569, 306, 20720, -23102, 1.8, 27, 0.08),
('Congo', 6332961, 2.43, 150076, 19, 341500, -2491, 4.1, 18, 0.08),
('Denmark', 5977412, 0.49, 29276, 141, 42430, 25639, 1.5, 41, 0.07),
('Singapore', 5832387, 0.75, 43297, 8332, 700, 20011, 1.0, 36, 0.07),
('Lebanon', 5805962, 0.56, 32469, 568, 10230, -17267, 2.2, 29, 0.07),
('Finland', 5617310, 0.29, 16125, 18, 303890, 26894, 1.3, 43, 0.07),
('Liberia', 5612817, 2.18, 119786, 58, 96320, -7779, 3.9, 19, 0.07),
('Norway', 5576660, 1.04, 57493, 15, 365268, 44356, 1.4, 40, 0.07),
('Slovakia', 5506760, -0.20, -11295, 115, 48088, -21027, 1.6, 42, 0.07),
('State of Palestine', 5495443, 1.59, 86241, 913, 6020, -23145, 3.3, 20, 0.07),
('Central African Republic', 5330690, 3.46, 178269, 9, 622980, -15357, 6.0, 14, 0.07),
('Oman', 5281538, 4.60, 232269, 17, 309500, 154219, 2.5, 29, 0.06),
('Ireland', 5255017, 1.12, 58387, 76, 68890, 39059, 1.6, 39, 0.06),
('New Zealand', 5213944, 0.79, 41108, 20, 263310, 18766, 1.7, 38, 0.06),
('Mauritania', 5169395, 2.93, 146954, 5, 1030700, -2185, 4.6, 17, 0.06),
('Costa Rica', 5129910, 0.48, 24385, 100, 51060, 967, 1.3, 35, 0.06),
('Kuwait', 4934507, 1.98, 95725, 277, 17820, 61624, 1.5, 35, 0.06),
('Panama', 4515577, 1.27, 56818, 61, 74340, 6706, 2.1, 30, 0.06),
('Croatia', 3875325, -0.53, -20698, 69, 55960, -5186, 1.5, 45, 0.05),
('Georgia', 3807670, 0.00, 178, 55, 69490, 1745, 1.8, 37, 0.05),
('Eritrea', 3535603, 1.88, 65213, 35, 101000, -12696, 3.7, 19, 0.04),
('Mongolia', 3475540, 1.27, 43608, 2, 1553560, 83, 2.6, 27, 0.04),
('Uruguay', 3386588, -0.04, -1493, 19, 175020, -1348, 1.4, 36, 0.04),
('Puerto Rico', 3242204, 0.01, 181, 366, 8870, 11561, 0.9, 45, 0.04),
('Bosnia and Herzegovina', 3164253, -0.65, -20820, 62, 51000, -4497, 1.5, 45, 0.04),
('Qatar', 3048423, 2.33, 69341, 263, 11610, 46105, 1.7, 34, 0.04),
('Moldova', 3034961, -1.05, -32109, 92, 32850, -27088, 1.7, 38, 0.04),
('Namibia', 3030131, 2.26, 67036, 4, 823290, 4211, 3.2, 21, 0.04),
('Armenia', 2973840, 1.03, 30447, 104, 28470, -29966, 1.7, 36, 0.04),
('Lithuania', 2859110, 0.18, 5011, 46, 62674, 2617, 1.2, 42, 0.04),
('Jamaica', 2839175, -0.02, -611, 262, 10830, -10506, 1.4, 32, 0.03),
('Albania', 2791765, -0.71, -19890, 102, 27400, -24472, 1.3, 37, 0.03),
('Gambia', 2759988, 2.30, 62143, 273, 10120, -2989, 3.9, 18, 0.03),
('Gabon', 2538952, 2.18, 54163, 10, 257670, 1105, 3.6, 22, 0.03),
('Botswana', 2521139, 1.65, 40895, 4, 566730, -5778, 2.7, 23, 0.03),
('Lesotho', 2337423, 1.12, 25951, 77, 30360, -5107, 2.7, 22, 0.03),
('Guinea-Bissau', 2201352, 2.23, 48013, 78, 28120, -1712, 3.8, 19, 0.03),
('Slovenia', 2118697, 0.01, 301, 105, 20140, 3319, 1.6, 44, 0.03),
('Equatorial Guinea', 1892516, 2.43, 44967, 67, 28050, 3891, 4.1, 21, 0.02),
('Latvia', 1871871, -0.56, -10525, 30, 62200, -2225, 1.3, 43, 0.02),
('North Macedonia', 1823009, -0.48, -8793, 72, 25220, -5728, 1.5, 41, 0.02),
('Bahrain', 1607049, 2.38, 37383, 2115, 760, 22699, 1.8, 33, 0.02),
('Trinidad and Tobago', 1507782, 0.32, 4850, 294, 5130, 1334, 1.5, 37, 0.02),
('Timor-Leste', 1400638, 1.18, 16352, 94, 14870, -2552, 2.6, 21, 0.02),
('Estonia', 1360546, -0.49, -6650, 32, 42390, -7742, 1.4, 42, 0.02),
('Cyprus', 1358282, 0.99, 13306, 147, 9240, 8138, 1.4, 38, 0.02),
('Mauritius', 1271169, -0.19, -2419, 626, 2030, -2787, 1.2, 37, 0.02),
('Eswatini', 1242822, 1.00, 12316, 72, 17200, -6754, 2.7, 22, 0.02),
('Djibouti', 1168722, 1.37, 15778, 50, 23180, -11, 2.6, 25, 0.01),
('Fiji', 928784, 0.50, 4639, 51, 18270, -3278, 2.3, 28, 0.01),
('Réunion', 878591, 0.42, 3708, 351, 2500, -2931, 2.2, 38, 0.01),
('Comoros', 866628, 1.91, 16241, 466, 1861, -2051, 3.8, 21, 0.01),
('Guyana', 831087, 0.57, 4734, 4, 196850, -5407, 2.4, 26, 0.01),
('Solomon Islands', 819198, 2.40, 19193, 29, 27990, 1610, 3.5, 20, 0.01),
('Bhutan', 791524, 0.65, 5139, 21, 38117, -277, 1.4, 30, 0.01),
('Macao', 720262, 0.89, 6350, 24009, 30, 1620, 0.7, 39, 0.01),
('Luxembourg', 673036, 1.19, 7938, 260, 2590, 5677, 1.4, 39, 0.01),
('Montenegro', 638479, 0.78, 4927, 47, 13450, -1686, 1.8, 40, 0.01),
('Suriname', 634431, 0.88, 5545, 4, 156000, -1166, 2.2, 28, 0.01),
('Western Sahara', 590506, 1.86, 10777, 2, 266000, 5358, 2.2, 32, 0.01),
('Malta', 539607, 1.25, 6651, 1686, 320, 6323, 1.1, 41, 0.01),
('Maldives', 527799, 0.34, 1805, 1759, 300, -2421, 1.6, 32, 0.01),
('Micronesia', 526923, 0.32, 1683, 753, 700, -5076, 2.8, 26, 0.01),
('Cabo Verde', 524877, 0.49, 2546, 130, 4030, -1209, 1.5, 28, 0.01),
('Brunei', 462721, 0.82, 3772, 88, 5270, 0, 1.7, 32, 0.01),
('Belize', 417072, 1.45, 5966, 18, 22810, 490, 2.0, 26, 0.01),
('Bahamas', 401283, 0.46, 1843, 40, 10010, 1018, 1.4, 35, 0.00),
('Iceland', 393396, 1.51, 5838, 4, 100250, 3543, 1.5, 36, 0.00),
('Guadeloupe', 375106, -0.37, -1411, 222, 1690, -1765, 2.1, 47, 0.00),
('Martinique', 343195, -0.81, -2807, 324, 1060, -2744, 2.0, 49, 0.00),
('Vanuatu', 327777, 2.30, 7368, 27, 12190, -43, 3.6, 20, 0.00),
('Mayotte', 326505, 3.32, 10490, 871, 375, 108, 4.6, 17, 0.00),
('French Guiana', 308522, 1.69, 5120, 4, 82200, -1018, 3.3, 25, 0.00),
('New Caledonia', 292639, 0.96, 2769, 16, 18280, 455, 2.0, 34, 0.00),
('Barbados', 282467, 0.05, 131, 657, 430, -70, 1.7, 39, 0.00),
('French Polynesia', 281807, 0.25, 689, 77, 3660, -1261, 1.5, 35, 0.00),
('Sao Tome & Principe', 235536, 2.02, 4665, 245, 960, -604, 3.6, 19, 0.00),
('Samoa', 218019, 0.63, 1356, 77, 2830, -2754, 3.8, 20, 0.00),
('Curaçao', 185482, 0.03, 55, 418, 444, 513, 1.1, 38, 0.00),
('Saint Lucia', 179744, 0.26, 459, 295, 610, -7, 1.4, 34, 0.00),
('Guam', 167777, 0.76, 1271, 311, 540, -504, 2.7, 31, 0.00),
('Kiribati', 134518, 1.50, 1988, 166, 810, -471, 3.1, 23, 0.00),
('Seychelles', 130418, 1.93, 2467, 284, 460, 1747, 2.1, 34, 0.00),
('Grenada', 117207, 0.11, 126, 345, 340, -192, 1.5, 34, 0.00),
('Aruba', 108066, 0.12, 127, 600, 180, 141, 1.6, 41, 0.00),
('Tonga', 104175, -0.40, -422, 145, 720, -2149, 3.1, 21, 0.00),
('St. Vincent & Grenadines', 100616, -0.70, -707, 258, 390, -737, 1.8, 34, 0.00),
('Antigua and Barbuda', 93772, 0.49, 456, 213, 440, 9, 1.6, 36, 0.00),
('U.S. Virgin Islands', 84905, -0.93, -796, 243, 350, -420, 2.1, 45, 0.00),
('Isle of Man', 84160, -0.01, -5, 148, 570, 177, 1.5, 46, 0.00),
('Andorra', 81938, 1.34, 1082, 174, 470, 988, 1.1, 43, 0.00),
('Cayman Islands', 74457, 1.94, 1419, 310, 240, 896, 1.5, 38, 0.00),
('Dominica', 66205, -0.46, -305, 88, 750, -200, 1.5, 36, 0.00),
('Bermuda', 64636, -0.10, -62, 1293, 50, -5, 1.4, 46, 0.00),
('Greenland', 55840, -0.15, -82, 0, 410450, -284, 1.9, 35, 0.00),
('Faeroe Islands', 55400, 1.25, 686, 40, 1396, 488, 2.2, 37, 0.00),
('Saint Kitts & Nevis', 46843, 0.18, 85, 180, 260, -7, 1.5, 36, 0.00),
('American Samoa', 46765, -1.59, -756, 234, 200, -1110, 2.3, 29, 0.00),
('Turks and Caicos', 46535, 0.73, 337, 49, 950, 176, 1.5, 39, 0.00),
('Northern Mariana Islands', 44278, -1.92, -865, 96, 460, -1097, 2.3, 37, 0.00),
('Sint Maarten', 43350, 1.41, 601, 1275, 34, 558, 1.4, 42, 0.00),
('Liechtenstein', 39870, 0.69, 272, 249, 160, 206, 1.5, 44, 0.00),
('British Virgin Islands', 39471, 1.25, 486, 263, 150, 212, 1.0, 38, 0.00),
('Gibraltar', 39329, 2.23, 858, 3933, 10, 598, 1.9, 39, 0.00),
('Monaco', 38631, -0.83, -325, 25927, 1, 110, 2.1, 54, 0.00),
('Marshall Islands', 37548, -3.29, -1279, 209, 180, -1765, 2.9, 21, 0.00),
('San Marino', 33581, -0.45, -152, 560, 60, 37, 1.2, 48, 0.00),
('Caribbean Netherlands', 30675, 2.60, 777, 94, 328, 685, 1.5, 40, 0.00),
('Saint Martin', 26129, -5.04, -1386, 493, 53, -1424, 2.7, 41, 0.00),
('Palau', 17695, -0.18, -32, 38, 460, -14, 1.9, 38, 0.00),
('Anguilla', 14598, 1.30, 188, 162, 90, 109, 1.4, 38, 0.00),
('Cook Islands', 13729, -3.47, -493, 57, 240, -505, 2.0, 36, 0.00),
('Nauru', 11947, 0.61, 72, 597, 20, -121, 3.3, 20, 0.00),
('Wallis & Futuna', 11277, -0.82, -93, 81, 140, -93, 1.4, 38, 0.00),
('Saint Barthelemy', 11258, 1.56, 173, 536, 21, 180, 0.8, 39, 0.00),
('Tuvalu', 9646, -1.73, -170, 322, 30, -280, 3.2, 24, 0.00),
('Saint Pierre & Miquelon', 5628, -0.93, -53, 24, 230, -2, 1.3, 47, 0.00),
('Saint Helena', 5237, -0.98, -52, 13, 390, 4, 1.6, 51, 0.00),
('Montserrat', 4389, -0.70, -31, 44, 100, -7, 1.4, 42, 0.00),
('Falkland Islands', 3470, -0.20, -7, 0, 12170, -13, 1.7, 42, 0.00),
('Tokelau', 2506, 4.55, 109, 251, 10, 72, 2.6, 27, 0.00),
('Niue', 1819, 0.11, 2, 7, 260, 10, 2.5, 36, 0.00),
('Holy See', 496, 0.00, 0, 1240, 0, 18, 1.0, 59, 0.00);


SELECT 
    name AS "Country", 
    population AS "Population"
FROM countries
ORDER BY population DESC
LIMIT 1;

-- 2. Minimum Population
SELECT 
    name AS "Country", 
    population AS "Population"
FROM countries
ORDER BY population ASC
LIMIT 1;

-- 3. Average Population
SELECT 
    ROUND(AVG(population), 0) AS "Average Population"
FROM countries;

-- 4. Summary Statistics: Average, Max, and Min Population
SELECT 
    ROUND(AVG(population),0) AS "Average Population", 
    ROUND(MAX(population),0) AS "Maximum Population", 
    ROUND(MIN(population),0) AS "Minimum Population"
FROM countries;

-- 5. Fertility Rate Statistics
SELECT
   ROUND(AVG(fertility_rate),2) AS "Average Fertility Rate",
   MAX(fertility_rate) AS "Maximum Fertility Rate",
   MIN(fertility_rate) AS "Minimum Fertility Rate"
FROM countries;

-- 6. Density per Square Kilometer Statistics
SELECT
   ROUND(AVG(density_per_sq_km),0) AS "Average Density",
   ROUND(MAX(density_per_sq_km),0) AS "Maximum Density",
   ROUND(MIN(density_per_sq_km),0) AS "Minimum Density"
FROM countries;

-- 7. World Population Percentage Statistics
SELECT
   ROUND(AVG(percent_of_world_pop),2) AS "Average World Pop %",
   ROUND(MAX(percent_of_world_pop),2) AS "Maximum World Pop %",
   ROUND(MIN(percent_of_world_pop),2) AS "Minimum World Pop %"
FROM countries;

-- 8. Net Migrants Statistics
SELECT 
    ROUND(AVG(net_migrants),0) AS "Average Net Migrants", 
    ROUND(MAX(net_migrants),0) AS "Maximum Net Migrants", 
    ROUND(MIN(net_migrants),0) AS "Minimum Net Migrants"
FROM countries;

-- 9. Countries with Above-Average Density (Top 5)
SELECT 
    name AS "Country", 
    ROUND(density_per_sq_km, 2) AS "Density per sq km"
FROM countries
WHERE density_per_sq_km > (SELECT AVG(density_per_sq_km) FROM countries)
ORDER BY density_per_sq_km DESC
LIMIT 5;

-- 10. Countries with High Fertility (Above 2.1, Top 5)
SELECT 
    name AS "Country", 
    ROUND(fertility_rate, 2) AS "Fertility Rate"
FROM countries
WHERE fertility_rate > 2.1
ORDER BY fertility_rate DESC
LIMIT 5;

-- 11. Countries with Significant Population Changes (Over 1 Million, Top 5)
SELECT 
    name AS "Country", 
    ROUND(population_change, 2) AS "Population Change"
FROM countries
WHERE population_change > 1000000
ORDER BY population_change DESC
LIMIT 5;

-- 12. Countries with Above Average Area Size (Top 5)
SELECT 
   name AS "Country", 
   ROUND(area_sq_km, 2) AS "Area sq km"
FROM countries
WHERE area_sq_km > (SELECT AVG(area_sq_km) FROM countries)
ORDER BY area_sq_km DESC
LIMIT 5;

-- 13. Countries Contributing Significantly to World Population (Over 5%, Top 5)
SELECT 
    name AS "Country", 
    ROUND(percent_of_world_pop, 2) AS "World Pop %"
FROM countries
WHERE percent_of_world_pop > 5
ORDER BY percent_of_world_pop DESC
LIMIT 5;

-- 14. Categorize Countries by Population Size
SELECT
name AS "Country",
CASE
WHEN population > 100000000 THEN 'High Population'
WHEN population > 10000000 THEN 'Medium Population'
ELSE 'Low Population'
END AS "Population Category"
FROM countries
LIMIT 5;

-- 15. Categorize Countries by Population Density
SELECT 
   name AS "Country",
    CASE
        WHEN density_per_sq_km > 500 THEN 'Very Dense'
        WHEN density_per_sq_km > 100 THEN 'Moderately Dense'
        ELSE 'Low Density'
    END AS "Density Category"
FROM countries
LIMIT 5;

-- 16. Categorize Countries by Fertility Rate
SELECT 
   name AS "Country",
    CASE
        WHEN fertility_rate > 3 THEN 'High Fertility'
        WHEN fertility_rate >= 2 THEN 'Replacement Level'
        ELSE 'Low Fertility'
    END AS "Fertility Category"
FROM countries
LIMIT 5;

-- 17. Classify Countries by Migration Trends
SELECT
name AS "Country",
CASE
WHEN net_migrants > 0 THEN 'Net Positive Migration'
ELSE 'Net Negative Migration'
END AS "Migration Status"
FROM countries
LIMIT 5;

-- 18. Categorize Countries by Population Growth Rate
SELECT 
    name AS "Country",
   CASE
       WHEN percent_one_year_change > 2 THEN 'Rapid Growth'
        WHEN percent_one_year_change > 0 THEN 'Steady Growth'
       ELSE 'Decline'
   END AS "Growth Category"
FROM countries
LIMIT 5;

-- 19. Countries with high density and low fertility
SELECT
name AS "Country",
ROUND(density_per_sq_km, 2) AS "Density per sq km",
ROUND(fertility_rate, 2) AS "Fertility Rate"
FROM countries
WHERE density_per_sq_km > 300 AND fertility_rate < 2
LIMIT 5;

-- 20. Countries with population growth and high migration
SELECT
name AS "Country",
ROUND(percent_one_year_change, 2) AS "Growth %",
ROUND(net_migrants, 2) AS "Net Migrants"
FROM countries
WHERE percent_one_year_change > 1 AND net_migrants > 10000
LIMIT 5;

-- 21. Countries with low population and high area size
SELECT
name AS "Country",
ROUND(population, 2) AS "Population",
ROUND(area_sq_km, 2) AS "Area sq km"
FROM countries
WHERE population < 1000000 OR area_sq_km > 1000000
LIMIT 5;

-- 22. Countries with high fertility and young median age
SELECT
name AS "Country",
ROUND(fertility_rate, 2) AS "Fertility Rate",
ROUND(median_age, 2) AS "Median Age"
FROM countries
WHERE fertility_rate > 3 AND median_age < 25
LIMIT 5;

-- 23. Countries contributing significantly to world population but experiencing decline
SELECT
name AS "Country",
ROUND(percent_of_world_pop, 2) AS "World Pop %",
ROUND(percent_one_year_change, 2) AS "Growth %"
FROM countries
WHERE percent_of_world_pop > 1 AND percent_one_year_change < 0
LIMIT 5;

-- 24. Countries with the Highest Population Growth Rate
SELECT
    name AS "Country",
    ROUND(percent_one_year_change, 2) AS "Growth Rate (%)"
FROM countries
ORDER BY percent_one_year_change DESC
LIMIT 5;

-- 25. Countries with the Lowest Median Age
SELECT
    name AS "Country",
    median_age AS "Median Age"
FROM countries
ORDER BY median_age ASC
LIMIT 5;

-- 26.  Countries with a High Density and High Fertility Rate
SELECT
    name AS "Country",
    density_per_sq_km AS "Density",
    fertility_rate AS "Fertility Rate"
FROM countries
WHERE density_per_sq_km > (SELECT AVG(density_per_sq_km) FROM countries) AND fertility_rate > 3
ORDER BY density_per_sq_km DESC, fertility_rate DESC
LIMIT 5;

-- 27. Top Countries by Population Change
SELECT
    name AS "Country",
    population_change AS "Population Change"
FROM countries
ORDER BY ABS(population_change) DESC  -- Use ABS to show largest changes both + and -
LIMIT 5;


-- 28. Countries with the highest net migration relative to their population size
SELECT
    name AS "Country",
    ROUND(CAST(net_migrants AS REAL) / population * 100, 4) AS "Net Migrants %"
FROM countries
WHERE population > 0 -- Avoid division by zero
ORDER BY "Net Migrants %" DESC
LIMIT 5;


-- 29.  Countries with High Population and Relatively Low Density
SELECT
    name AS "Country",
    population AS "Population",
    density_per_sq_km AS "Density per sq km"
FROM countries
WHERE population > 100000000
ORDER BY density_per_sq_km ASC
LIMIT 5;

-- 30.  Countries with Negative Growth and High Median Age
SELECT
  name AS "Country",
  percent_one_year_change AS "Growth %",
  median_age AS "Median Age"
FROM countries
WHERE percent_one_year_change < 0
ORDER BY median_age DESC
LIMIT 5;

-- 31. Countries with the Highest Area Size and Low Population Density
SELECT
  name AS "Country",
  area_sq_km AS "Area sq km",
  density_per_sq_km AS "Density per sq km"
FROM countries
WHERE density_per_sq_km < (SELECT AVG(density_per_sq_km) FROM countries)
ORDER BY area_sq_km DESC
LIMIT 5;

-- 32. Countries whose population makes more than 1% of world population and their area
SELECT
    name AS "Country",
    percent_of_world_pop AS "World Pop %",
    area_sq_km AS "Area sq km"
FROM countries
WHERE percent_of_world_pop > 1
ORDER BY percent_of_world_pop DESC
LIMIT 5;
