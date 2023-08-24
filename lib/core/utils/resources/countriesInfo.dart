import 'package:mc_crud_test/data/models/countryInfo.dart';

class CountriesInfo {
  CountriesInfo._();
  // Countries Information , used for select country-code at edit and insert customers.
  static final List<CountryInfo> countriesInfo = [
  CountryInfo(countryName: "",	codeLetter:	"",	countryCode: ""),
  CountryInfo(countryName: "Canada",	codeLetter:	"CA",	countryCode: "1"),
  CountryInfo(countryName: "United States",	codeLetter:	"US",	countryCode: "1"),
  CountryInfo(countryName: "Kazakhstan",	codeLetter:	"KZ",	countryCode: "7"),
  CountryInfo(countryName: "Russia",	codeLetter:	"RU",	countryCode: "7"),
  CountryInfo(countryName: "Dominican Republic",	codeLetter:	"DO",	countryCode: "18"),
  CountryInfo(countryName: "Egypt",	codeLetter:	"EG",	countryCode: "20"),
  CountryInfo(countryName: "South Africa",	codeLetter:	"ZA",	countryCode: "27"),
  CountryInfo(countryName: "Greece",	codeLetter:	"GR",	countryCode: "30"),
  CountryInfo(countryName: "Netherlands",	codeLetter:	"NL",	countryCode: "31"),
  CountryInfo(countryName: "Belgium",	codeLetter:	"BE",	countryCode: "32"),
  CountryInfo(countryName: "France",	codeLetter:	"FR",	countryCode: "33"),
  CountryInfo(countryName: "Spain",	codeLetter:	"ES",	countryCode: "34"),
  CountryInfo(countryName: "Hungary",	codeLetter:	"HU",	countryCode: "36"),
  CountryInfo(countryName: "Italy",	codeLetter:	"IT",	countryCode: "39"),
  CountryInfo(countryName: "Vatican",	codeLetter:	"VA",	countryCode: "39"),
  CountryInfo(countryName: "Romania",	codeLetter:	"RO",	countryCode: "40"),
  CountryInfo(countryName: "Switzerland",	codeLetter:	"CH",	countryCode: "41"),
  CountryInfo(countryName: "Austria",	codeLetter:	"AT",	countryCode: "43"),
  CountryInfo(countryName: "United Kingdom",	codeLetter:	"GB",	countryCode: "44"),
  CountryInfo(countryName: "Denmark",	codeLetter:	"DK",	countryCode: "45"),
  CountryInfo(countryName: "Sweden",	codeLetter:	"SE",	countryCode: "46"),
  CountryInfo(countryName: "Norway",	codeLetter:	"NO",	countryCode: "47"),
  CountryInfo(countryName: "Svalbard and Jan Mayen",	codeLetter:	"SJ",	countryCode: "47"),
  CountryInfo(countryName: "Poland",	codeLetter:	"PL",	countryCode: "48"),
  CountryInfo(countryName: "Germany",	codeLetter:	"DE",	countryCode: "49"),
  CountryInfo(countryName: "Peru",	codeLetter:	"PE",	countryCode: "51"),
  CountryInfo(countryName: "Mexico",	codeLetter:	"MX",	countryCode: "52"),
  CountryInfo(countryName: "Cuba",	codeLetter:	"CU",	countryCode: "53"),
  CountryInfo(countryName: "Argentina",	codeLetter:	"AR",	countryCode: "54"),
  CountryInfo(countryName: "Brazil",	codeLetter:	"BR",	countryCode: "55"),
  CountryInfo(countryName: "Chile",	codeLetter:	"CL",	countryCode: "56"),
  CountryInfo(countryName: "Colombia",	codeLetter:	"CO",	countryCode: "57"),
  CountryInfo(countryName: "Venezuela",	codeLetter:	"VE",	countryCode: "58"),
  CountryInfo(countryName: "Malaysia",	codeLetter:	"MY",	countryCode: "60"),
  CountryInfo(countryName: "Australia",	codeLetter:	"AU",	countryCode: "61"),
  CountryInfo(countryName: "Christmas Island",	codeLetter:	"CX",	countryCode: "61"),
  CountryInfo(countryName: "Cocos Islands",	codeLetter:	"CC",	countryCode: "61"),
  CountryInfo(countryName: "Indonesia",	codeLetter:	"ID",	countryCode: "62"),
  CountryInfo(countryName: "Philippines",	codeLetter:	"PH",	countryCode: "63"),
  CountryInfo(countryName: "New Zealand",	codeLetter:	"NZ",	countryCode: "64"),
  CountryInfo(countryName: "Pitcairn",	codeLetter:	"PN",	countryCode: "64"),
  CountryInfo(countryName: "Singapore",	codeLetter:	"SG",	countryCode: "65"),
  CountryInfo(countryName: "Thailand",	codeLetter:	"TH",	countryCode: "66"),
  CountryInfo(countryName: "Japan",	codeLetter:	"JP",	countryCode: "81"),
  CountryInfo(countryName: "South Korea",	codeLetter:	"KR",	countryCode: "82"),
  CountryInfo(countryName: "Vietnam",	codeLetter:	"VN",	countryCode: "84"),
  CountryInfo(countryName: "China",	codeLetter:	"CN",	countryCode: "86"),
  CountryInfo(countryName: "Turkey",	codeLetter:	"TR",	countryCode: "90"),
  CountryInfo(countryName: "India",	codeLetter:	"IN",	countryCode: "91"),
  CountryInfo(countryName: "Pakistan",	codeLetter:	"PK",	countryCode: "92"),
  CountryInfo(countryName: "Afghanistan",	codeLetter:	"AF",	countryCode: "93"),
  CountryInfo(countryName: "Sri Lanka",	codeLetter:	"LK",	countryCode: "94"),
  CountryInfo(countryName: "Myanmar",	codeLetter:	"MM",	countryCode: "95"),
  CountryInfo(countryName: "Iran",	codeLetter:	"IR",	countryCode: "98"),
  CountryInfo(countryName: "South Sudan",	codeLetter:	"SS",	countryCode: "211"),
  CountryInfo(countryName: "Morocco",	codeLetter:	"MA",	countryCode: "212"),
  CountryInfo(countryName: "Western Sahara",	codeLetter:	"EH",	countryCode: "212"),
  CountryInfo(countryName: "Algeria",	codeLetter:	"DZ",	countryCode: "213"),
  CountryInfo(countryName: "Tunisia",	codeLetter:	"TN",	countryCode: "216"),
  CountryInfo(countryName: "Libya",	codeLetter:	"LY",	countryCode: "218"),
  CountryInfo(countryName: "Gambia",	codeLetter:	"GM",	countryCode: "220"),
  CountryInfo(countryName: "Senegal",	codeLetter:	"SN",	countryCode: "221"),
  CountryInfo(countryName: "Mauritania",	codeLetter:	"MR",	countryCode: "222"),
  CountryInfo(countryName: "Mali",	codeLetter:	"ML",	countryCode: "223"),
  CountryInfo(countryName: "Guinea",	codeLetter:	"GN",	countryCode: "224"),
  CountryInfo(countryName: "Ivory Coast",	codeLetter:	"CI",	countryCode: "225"),
  CountryInfo(countryName: "Burkina Faso",	codeLetter:	"BF",	countryCode: "226"),
  CountryInfo(countryName: "Niger",	codeLetter:	"NE",	countryCode: "227"),
  CountryInfo(countryName: "Togo",	codeLetter:	"TG",	countryCode: "228"),
  CountryInfo(countryName: "Benin",	codeLetter:	"BJ",	countryCode: "229"),
  CountryInfo(countryName: "Mauritius",	codeLetter:	"MU",	countryCode: "230"),
  CountryInfo(countryName: "Liberia",	codeLetter:	"LR",	countryCode: "231"),
  CountryInfo(countryName: "Sierra Leone",	codeLetter:	"SL",	countryCode: "232"),
  CountryInfo(countryName: "Ghana",	codeLetter:	"GH",	countryCode: "233"),
  CountryInfo(countryName: "Nigeria",	codeLetter:	"NG",	countryCode: "234"),
  CountryInfo(countryName: "Chad",	codeLetter:	"TD",	countryCode: "235"),
  CountryInfo(countryName: "Central African Republic",	codeLetter:	"CF",	countryCode: "236"),
  CountryInfo(countryName: "Cameroon",	codeLetter:	"CM",	countryCode: "237"),
  CountryInfo(countryName: "Cape Verde",	codeLetter:	"CV",	countryCode: "238"),
  CountryInfo(countryName: "Sao Tome and Principe",	codeLetter:	"ST",	countryCode: "239"),
  CountryInfo(countryName: "Equatorial Guinea",	codeLetter:	"GQ",	countryCode: "240"),
  CountryInfo(countryName: "Gabon",	codeLetter:	"GA",	countryCode: "241"),
  CountryInfo(countryName: "Republic of the Congo",	codeLetter:	"CG",	countryCode: "242"),
  CountryInfo(countryName: "Democratic Republic of the Congo",	codeLetter:	"CD",	countryCode: "243"),
  CountryInfo(countryName: "Angola",	codeLetter:	"AO",	countryCode: "244"),
  CountryInfo(countryName: "Guinea-Bissau",	codeLetter:	"GW",	countryCode: "245"),
  CountryInfo(countryName: "British Indian Ocean Territory",	codeLetter:	"IO",	countryCode: "246"),
  CountryInfo(countryName: "Seychelles",	codeLetter:	"SC",	countryCode: "248"),
  CountryInfo(countryName: "Sudan",	codeLetter:	"SD",	countryCode: "249"),
  CountryInfo(countryName: "Rwanda",	codeLetter:	"RW",	countryCode: "250"),
  CountryInfo(countryName: "Ethiopia",	codeLetter:	"ET",	countryCode: "251"),
  CountryInfo(countryName: "Somalia",	codeLetter:	"SO",	countryCode: "252"),
  CountryInfo(countryName: "Djibouti",	codeLetter:	"DJ",	countryCode: "253"),
  CountryInfo(countryName: "Kenya",	codeLetter:	"KE",	countryCode: "254"),
  CountryInfo(countryName: "Tanzania",	codeLetter:	"TZ",	countryCode: "255"),
  CountryInfo(countryName: "Uganda",	codeLetter:	"UG",	countryCode: "256"),
  CountryInfo(countryName: "Burundi",	codeLetter:	"BI",	countryCode: "257"),
  CountryInfo(countryName: "Mozambique",	codeLetter:	"MZ",	countryCode: "258"),
  CountryInfo(countryName: "Zambia",	codeLetter:	"ZM",	countryCode: "260"),
  CountryInfo(countryName: "Madagascar",	codeLetter:	"MG",	countryCode: "261"),
  CountryInfo(countryName: "Mayotte",	codeLetter:	"YT",	countryCode: "262"),
  CountryInfo(countryName: "Reunion",	codeLetter:	"RE",	countryCode: "262"),
  CountryInfo(countryName: "Zimbabwe",	codeLetter:	"ZW",	countryCode: "263"),
  CountryInfo(countryName: "Namibia",	codeLetter:	"NA",	countryCode: "264"),
  CountryInfo(countryName: "Malawi",	codeLetter:	"MW",	countryCode: "265"),
  CountryInfo(countryName: "Lesotho",	codeLetter:	"LS",	countryCode: "266"),
  CountryInfo(countryName: "Botswana",	codeLetter:	"BW",	countryCode: "267"),
  CountryInfo(countryName: "Swaziland",	codeLetter:	"SZ",	countryCode: "268"),
  CountryInfo(countryName: "Comoros",	codeLetter:	"KM",	countryCode: "269"),
  CountryInfo(countryName: "Saint Helena",	codeLetter:	"SH",	countryCode: "290"),
  CountryInfo(countryName: "Eritrea",	codeLetter:	"ER",	countryCode: "291"),
  CountryInfo(countryName: "Aruba",	codeLetter:	"AW",	countryCode: "297"),
  CountryInfo(countryName: "Faroe Islands",	codeLetter:	"FO",	countryCode: "298"),
  CountryInfo(countryName: "Greenland",	codeLetter:	"GL",	countryCode: "299"),
  CountryInfo(countryName: "Gibraltar",	codeLetter:	"GI",	countryCode: "350"),
  CountryInfo(countryName: "Portugal",	codeLetter:	"PT",	countryCode: "351"),
  CountryInfo(countryName: "Luxembourg",	codeLetter:	"LU",	countryCode: "352"),
  CountryInfo(countryName: "Ireland",	codeLetter:	"IE",	countryCode: "353"),
  CountryInfo(countryName: "Iceland",	codeLetter:	"IS",	countryCode: "354"),
  CountryInfo(countryName: "Albania",	codeLetter:	"AL",	countryCode: "355"),
  CountryInfo(countryName: "Malta",	codeLetter:	"MT",	countryCode: "356"),
  CountryInfo(countryName: "Cyprus",	codeLetter:	"CY",	countryCode: "357"),
  CountryInfo(countryName: "Finland",	codeLetter:	"FI",	countryCode: "358"),
  CountryInfo(countryName: "Bulgaria",	codeLetter:	"BG",	countryCode: "359"),
  CountryInfo(countryName: "Lithuania",	codeLetter:	"LT",	countryCode: "370"),
  CountryInfo(countryName: "Latvia",	codeLetter:	"LV",	countryCode: "371"),
  CountryInfo(countryName: "Estonia",	codeLetter:	"EE",	countryCode: "372"),
  CountryInfo(countryName: "Moldova",	codeLetter:	"MD",	countryCode: "373"),
  CountryInfo(countryName: "Armenia",	codeLetter:	"AM",	countryCode: "374"),
  CountryInfo(countryName: "Belarus",	codeLetter:	"BY",	countryCode: "375"),
  CountryInfo(countryName: "Andorra",	codeLetter:	"AD",	countryCode: "376"),
  CountryInfo(countryName: "Monaco",	codeLetter:	"MC",	countryCode: "377"),
  CountryInfo(countryName: "San Marino",	codeLetter:	"SM",	countryCode: "378"),
  CountryInfo(countryName: "Ukraine",	codeLetter:	"UA",	countryCode: "380"),
  CountryInfo(countryName: "Serbia",	codeLetter:	"RS",	countryCode: "381"),
  CountryInfo(countryName: "Montenegro",	codeLetter:	"ME",	countryCode: "382"),
  CountryInfo(countryName: "Kosovo",	codeLetter:	"XK",	countryCode: "383"),
  CountryInfo(countryName: "Croatia",	codeLetter:	"HR",	countryCode: "385"),
  CountryInfo(countryName: "Slovenia",	codeLetter:	"SI",	countryCode: "386"),
  CountryInfo(countryName: "Bosnia and Herzegovina",	codeLetter:	"BA",	countryCode: "387"),
  CountryInfo(countryName: "Macedonia",	codeLetter:	"MK",	countryCode: "389"),
  CountryInfo(countryName: "Czech Republic",	codeLetter:	"CZ",	countryCode: "420"),
  CountryInfo(countryName: "Slovakia",	codeLetter:	"SK",	countryCode: "421"),
  CountryInfo(countryName: "Liechtenstein",	codeLetter:	"LI",	countryCode: "423"),
  CountryInfo(countryName: "Falkland Islands",	codeLetter:	"FK",	countryCode: "500"),
  CountryInfo(countryName: "Belize",	codeLetter:	"BZ",	countryCode: "501"),
  CountryInfo(countryName: "Guatemala",	codeLetter:	"GT",	countryCode: "502"),
  CountryInfo(countryName: "El Salvador",	codeLetter:	"SV",	countryCode: "503"),
  CountryInfo(countryName: "Honduras",	codeLetter:	"HN",	countryCode: "504"),
  CountryInfo(countryName: "Nicaragua",	codeLetter:	"NI",	countryCode: "505"),
  CountryInfo(countryName: "Costa Rica",	codeLetter:	"CR",	countryCode: "506"),
  CountryInfo(countryName: "Panama",	codeLetter:	"PA",	countryCode: "507"),
  CountryInfo(countryName: "Saint Pierre and Miquelon",	codeLetter:	"PM",	countryCode: "508"),
  CountryInfo(countryName: "Haiti",	codeLetter:	"HT",	countryCode: "509"),
  CountryInfo(countryName: "Saint Barthelemy",	codeLetter:	"BL",	countryCode: "590"),
  CountryInfo(countryName: "Saint Martin",	codeLetter:	"MF",	countryCode: "590"),
  CountryInfo(countryName: "Bolivia",	codeLetter:	"BO",	countryCode: "591"),
  CountryInfo(countryName: "Guyana",	codeLetter:	"GY",	countryCode: "592"),
  CountryInfo(countryName: "Ecuador",	codeLetter:	"EC",	countryCode: "593"),
  CountryInfo(countryName: "Paraguay",	codeLetter:	"PY",	countryCode: "595"),
  CountryInfo(countryName: "Suriname",	codeLetter:	"SR",	countryCode: "597"),
  CountryInfo(countryName: "Uruguay",	codeLetter:	"UY",	countryCode: "598"),
  CountryInfo(countryName: "Curacao",	codeLetter:	"CW",	countryCode: "599"),
  CountryInfo(countryName: "Netherlands Antilles",	codeLetter:	"AN",	countryCode: "599"),
  CountryInfo(countryName: "East Timor",	codeLetter:	"TL",	countryCode: "670"),
  CountryInfo(countryName: "Antarctica",	codeLetter:	"AQ",	countryCode: "672"),
  CountryInfo(countryName: "Brunei",	codeLetter:	"BN",	countryCode: "673"),
  CountryInfo(countryName: "Nauru",	codeLetter:	"NR",	countryCode: "674"),
  CountryInfo(countryName: "Papua New Guinea",	codeLetter:	"PG",	countryCode: "675"),
  CountryInfo(countryName: "Tonga",	codeLetter:	"TO",	countryCode: "676"),
  CountryInfo(countryName: "Solomon Islands",	codeLetter:	"SB",	countryCode: "677"),
  CountryInfo(countryName: "Vanuatu",	codeLetter:	"VU",	countryCode: "678"),
  CountryInfo(countryName: "Fiji",	codeLetter:	"FJ",	countryCode: "679"),
  CountryInfo(countryName: "Palau",	codeLetter:	"PW",	countryCode: "680"),
  CountryInfo(countryName: "Wallis and Futuna",	codeLetter:	"WF",	countryCode: "681"),
  CountryInfo(countryName: "Cook Islands",	codeLetter:	"CK",	countryCode: "682"),
  CountryInfo(countryName: "Niue",	codeLetter:	"NU",	countryCode: "683"),
  CountryInfo(countryName: "Samoa",	codeLetter:	"WS",	countryCode: "685"),
  CountryInfo(countryName: "Kiribati",	codeLetter:	"KI",	countryCode: "686"),
  CountryInfo(countryName: "New Caledonia",	codeLetter:	"NC",	countryCode: "687"),
  CountryInfo(countryName: "Tuvalu",	codeLetter:	"TV",	countryCode: "688"),
  CountryInfo(countryName: "French Polynesia",	codeLetter:	"PF",	countryCode: "689"),
  CountryInfo(countryName: "Tokelau",	codeLetter:	"TK",	countryCode: "690"),
  CountryInfo(countryName: "Micronesia",	codeLetter:	"FM",	countryCode: "691"),
  CountryInfo(countryName: "Marshall Islands",	codeLetter:	"MH",	countryCode: "692"),
  CountryInfo(countryName: "North Korea",	codeLetter:	"KP",	countryCode: "850"),
  CountryInfo(countryName: "Hong Kong",	codeLetter:	"HK",	countryCode: "852"),
  CountryInfo(countryName: "Macau",	codeLetter:	"MO",	countryCode: "853"),
  CountryInfo(countryName: "Cambodia",	codeLetter:	"KH",	countryCode: "855"),
  CountryInfo(countryName: "Laos",	codeLetter:	"LA",	countryCode: "856"),
  CountryInfo(countryName: "Bangladesh",	codeLetter:	"BD",	countryCode: "880"),
  CountryInfo(countryName: "Taiwan",	codeLetter:	"TW",	countryCode: "886"),
  CountryInfo(countryName: "Maldives",	codeLetter:	"MV",	countryCode: "960"),
  CountryInfo(countryName: "Lebanon",	codeLetter:	"LB",	countryCode: "961"),
  CountryInfo(countryName: "Jordan",	codeLetter:	"JO",	countryCode: "962"),
  CountryInfo(countryName: "Syria",	codeLetter:	"SY",	countryCode: "963"),
  CountryInfo(countryName: "Iraq",	codeLetter:	"IQ",	countryCode: "964"),
  CountryInfo(countryName: "Kuwait",	codeLetter:	"KW",	countryCode: "965"),
  CountryInfo(countryName: "Saudi Arabia",	codeLetter:	"SA",	countryCode: "966"),
  CountryInfo(countryName: "Yemen",	codeLetter:	"YE",	countryCode: "967"),
  CountryInfo(countryName: "Oman",	codeLetter:	"OM",	countryCode: "968"),
  CountryInfo(countryName: "Palestine",	codeLetter:	"PS",	countryCode: "970"),
  CountryInfo(countryName: "United Arab Emirates",	codeLetter:	"AE",	countryCode: "971"),
  CountryInfo(countryName: "Israel",	codeLetter:	"IL",	countryCode: "972"),
  CountryInfo(countryName: "Bahrain",	codeLetter:	"BH",	countryCode: "973"),
  CountryInfo(countryName: "Qatar",	codeLetter:	"QA",	countryCode: "974"),
  CountryInfo(countryName: "Bhutan",	codeLetter:	"BT",	countryCode: "975"),
  CountryInfo(countryName: "Mongolia",	codeLetter:	"MN",	countryCode: "976"),
  CountryInfo(countryName: "Nepal",	codeLetter:	"NP",	countryCode: "977"),
  CountryInfo(countryName: "Tajikistan",	codeLetter:	"TJ",	countryCode: "992"),
  CountryInfo(countryName: "Turkmenistan",	codeLetter:	"TM",	countryCode: "993"),
  CountryInfo(countryName: "Azerbaijan",	codeLetter:	"AZ",	countryCode: "994"),
  CountryInfo(countryName: "Georgia",	codeLetter:	"GE",	countryCode: "995"),
  CountryInfo(countryName: "Kyrgyzstan",	codeLetter:	"KG",	countryCode: "996"),
  CountryInfo(countryName: "Uzbekistan",	codeLetter:	"UZ",	countryCode: "998"),
  CountryInfo(countryName: "Bahamas",	codeLetter:	"BS",	countryCode: "1242"),
  CountryInfo(countryName: "Barbados",	codeLetter:	"BB",	countryCode: "1246"),
  CountryInfo(countryName: "Anguilla",	codeLetter:	"AI",	countryCode: "1264"),
  CountryInfo(countryName: "Antigua and Barbuda",	codeLetter:	"AG",	countryCode: "1268"),
  CountryInfo(countryName: "British Virgin Islands",	codeLetter:	"VG",	countryCode: "1284"),
  CountryInfo(countryName: "U.S. Virgin Islands",	codeLetter:	"VI",	countryCode: "1340"),
  CountryInfo(countryName: "Cayman Islands",	codeLetter:	"KY",	countryCode: "1345"),
  CountryInfo(countryName: "Bermuda",	codeLetter:	"BM",	countryCode: "1441"),
  CountryInfo(countryName: "Grenada",	codeLetter:	"GD",	countryCode: "1473"),
  CountryInfo(countryName: "Turks and Caicos Islands",	codeLetter:	"TC",	countryCode: "1649"),
  CountryInfo(countryName: "Montserrat",	codeLetter:	"MS",	countryCode: "1664"),
  CountryInfo(countryName: "Northern Mariana Islands",	codeLetter:	"MP",	countryCode: "1670"),
  CountryInfo(countryName: "Guam",	codeLetter:	"GU",	countryCode: "1671"),
  CountryInfo(countryName: "American Samoa",	codeLetter:	"AS",	countryCode: "1684"),
  CountryInfo(countryName: "Sint Maarten",	codeLetter:	"SX",	countryCode: "1721"),
  CountryInfo(countryName: "Saint Lucia",	codeLetter:	"LC",	countryCode: "1758"),
  CountryInfo(countryName: "Dominica",	codeLetter:	"DM",	countryCode: "1767"),
  CountryInfo(countryName: "Saint Vincent and the Grenadines",	codeLetter:	"VC",	countryCode: "1784"),
  CountryInfo(countryName: "Trinidad and Tobago",	codeLetter:	"TT",	countryCode: "1868"),
  CountryInfo(countryName: "Saint Kitts and Nevis",	codeLetter:	"KN",	countryCode: "1869"),
  CountryInfo(countryName: "Jamaica",	codeLetter:	"JM",	countryCode: "1876"),
  CountryInfo(countryName: "Guernsey",	codeLetter:	"GG",	countryCode: "441481"),
  CountryInfo(countryName: "Jersey",	codeLetter:	"JE",	countryCode: "441534"),
  CountryInfo(countryName: "Isle of Man",	codeLetter:	"IM",	countryCode: "441624")
  ];
}