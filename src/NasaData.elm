module NasaData exposing (nasajson)


nasajson : String
nasajson =
    """
    {
  "links" : {
    "next" : "https://api.nasa.gov/neo/rest/v1/feed?start_date=2017-03-05&end_date=2017-03-12&detailed=false&api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4",
    "prev" : "https://api.nasa.gov/neo/rest/v1/feed?start_date=2017-02-19&end_date=2017-02-26&detailed=false&api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4",
    "self" : "https://api.nasa.gov/neo/rest/v1/feed?start_date=2017-02-26&end_date=2017-03-05&detailed=false&api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
  },
  "element_count" : 65,
  "near_earth_objects" : {
    "2017-03-02" : [ {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3767006?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3767006",
      "name" : "(2017 BU6)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3767006",
      "absolute_magnitude_h" : 22.22,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0956213733,
          "estimated_diameter_max" : 0.2138158908
        },
        "meters" : {
          "estimated_diameter_min" : 95.6213732844,
          "estimated_diameter_max" : 213.8158907658
        },
        "miles" : {
          "estimated_diameter_min" : 0.0594163483,
          "estimated_diameter_max" : 0.1328589939
        },
        "feet" : {
          "estimated_diameter_min" : 313.7184263264,
          "estimated_diameter_max" : 701.49572706
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-02",
        "epoch_date_close_approach" : 1488441600000,
        "relative_velocity" : {
          "kilometers_per_second" : "9.3866553275",
          "kilometers_per_hour" : "33791.9591788975",
          "miles_per_hour" : "20997.0093020211"
        },
        "miss_distance" : {
          "astronomical" : "0.0870204413",
          "lunar" : "33.8509521484",
          "kilometers" : "13018073",
          "miles" : "8089055.5"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3768819?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3768819",
      "name" : "(2017 CO5)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3768819",
      "absolute_magnitude_h" : 20.104,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.2533698747,
          "estimated_diameter_max" : 0.5665522632
        },
        "meters" : {
          "estimated_diameter_min" : 253.3698746741,
          "estimated_diameter_max" : 566.5522632218
        },
        "miles" : {
          "estimated_diameter_min" : 0.1574366924,
          "estimated_diameter_max" : 0.3520391464
        },
        "feet" : {
          "estimated_diameter_min" : 831.2660196257,
          "estimated_diameter_max" : 1858.7673272687
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-02",
        "epoch_date_close_approach" : 1488441600000,
        "relative_velocity" : {
          "kilometers_per_second" : "15.0739193692",
          "kilometers_per_hour" : "54266.1097292136",
          "miles_per_hour" : "33718.8502370216"
        },
        "miss_distance" : {
          "astronomical" : "0.4023232036",
          "lunar" : "156.5037384033",
          "kilometers" : "60186696",
          "miles" : "37398280"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3429818?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3429818",
      "name" : "(2008 TC2)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3429818",
      "absolute_magnitude_h" : 23.3,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.058150704,
          "estimated_diameter_max" : 0.130028927
        },
        "meters" : {
          "estimated_diameter_min" : 58.1507039646,
          "estimated_diameter_max" : 130.0289270043
        },
        "miles" : {
          "estimated_diameter_min" : 0.0361331611,
          "estimated_diameter_max" : 0.0807962044
        },
        "feet" : {
          "estimated_diameter_min" : 190.7831555951,
          "estimated_diameter_max" : 426.6041048727
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-02",
        "epoch_date_close_approach" : 1488441600000,
        "relative_velocity" : {
          "kilometers_per_second" : "18.0683396963",
          "kilometers_per_hour" : "65046.0229065857",
          "miles_per_hour" : "40417.0690665949"
        },
        "miss_distance" : {
          "astronomical" : "0.266633439",
          "lunar" : "103.720413208",
          "kilometers" : "39887796",
          "miles" : "24785128"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3575154?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3575154",
      "name" : "(2011 OJ45)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3575154",
      "absolute_magnitude_h" : 26.0,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0167708462,
          "estimated_diameter_max" : 0.0375007522
        },
        "meters" : {
          "estimated_diameter_min" : 16.7708462163,
          "estimated_diameter_max" : 37.5007521798
        },
        "miles" : {
          "estimated_diameter_min" : 0.0104209175,
          "estimated_diameter_max" : 0.0233018799
        },
        "feet" : {
          "estimated_diameter_min" : 55.0224631002,
          "estimated_diameter_max" : 123.0339677816
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-02",
        "epoch_date_close_approach" : 1488441600000,
        "relative_velocity" : {
          "kilometers_per_second" : "8.1129707322",
          "kilometers_per_hour" : "29206.6946360276",
          "miles_per_hour" : "18147.9042309251"
        },
        "miss_distance" : {
          "astronomical" : "0.0793167292",
          "lunar" : "30.8542079926",
          "kilometers" : "11865614",
          "miles" : "7372950.5"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3746623?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3746623",
      "name" : "(2016 EF156)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3746623",
      "absolute_magnitude_h" : 24.7,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0305179233,
          "estimated_diameter_max" : 0.0682401509
        },
        "meters" : {
          "estimated_diameter_min" : 30.5179232594,
          "estimated_diameter_max" : 68.2401509401
        },
        "miles" : {
          "estimated_diameter_min" : 0.0189629525,
          "estimated_diameter_max" : 0.0424024508
        },
        "feet" : {
          "estimated_diameter_min" : 100.1244233463,
          "estimated_diameter_max" : 223.8850168104
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-02",
        "epoch_date_close_approach" : 1488441600000,
        "relative_velocity" : {
          "kilometers_per_second" : "29.3944548291",
          "kilometers_per_hour" : "105820.0373849281",
          "miles_per_hour" : "65752.4560073183"
        },
        "miss_distance" : {
          "astronomical" : "0.4188987288",
          "lunar" : "162.9515991211",
          "kilometers" : "62666360",
          "miles" : "38939072"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3768618?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3768618",
      "name" : "(2017 CQ1)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3768618",
      "absolute_magnitude_h" : 24.183,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.03872175,
          "estimated_diameter_max" : 0.0865844652
        },
        "meters" : {
          "estimated_diameter_min" : 38.7217499927,
          "estimated_diameter_max" : 86.5844651915
        },
        "miles" : {
          "estimated_diameter_min" : 0.0240605725,
          "estimated_diameter_max" : 0.0538010757
        },
        "feet" : {
          "estimated_diameter_min" : 127.0398662462,
          "estimated_diameter_max" : 284.0697767789
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-02",
        "epoch_date_close_approach" : 1488441600000,
        "relative_velocity" : {
          "kilometers_per_second" : "5.5965996095",
          "kilometers_per_hour" : "20147.7585943137",
          "miles_per_hour" : "12519.0336665612"
        },
        "miss_distance" : {
          "astronomical" : "0.0925527708",
          "lunar" : "36.0030288696",
          "kilometers" : "13845698",
          "miles" : "8603318"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3599872?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3599872",
      "name" : "(2012 DR32)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3599872",
      "absolute_magnitude_h" : 24.6,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0319561887,
          "estimated_diameter_max" : 0.0714562102
        },
        "meters" : {
          "estimated_diameter_min" : 31.9561886721,
          "estimated_diameter_max" : 71.4562101727
        },
        "miles" : {
          "estimated_diameter_min" : 0.0198566489,
          "estimated_diameter_max" : 0.0444008168
        },
        "feet" : {
          "estimated_diameter_min" : 104.8431420431,
          "estimated_diameter_max" : 234.436392583
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-02",
        "epoch_date_close_approach" : 1488441600000,
        "relative_velocity" : {
          "kilometers_per_second" : "16.5463141162",
          "kilometers_per_hour" : "59566.7308183996",
          "miles_per_hour" : "37012.4500465772"
        },
        "miss_distance" : {
          "astronomical" : "0.0120147969",
          "lunar" : "4.6737561226",
          "kilometers" : "1797388",
          "miles" : "1116845.125"
        },
        "orbiting_body" : "Earth"
      } ]
    } ],
    "2017-03-01" : [ {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/2349507?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "2349507",
      "name" : "349507 (2008 QY)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2349507",
      "absolute_magnitude_h" : 18.6,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.5064714588,
          "estimated_diameter_max" : 1.1325046106
        },
        "meters" : {
          "estimated_diameter_min" : 506.4714588346,
          "estimated_diameter_max" : 1132.5046106177
        },
        "miles" : {
          "estimated_diameter_min" : 0.3147066768,
          "estimated_diameter_max" : 0.7037055224
        },
        "feet" : {
          "estimated_diameter_min" : 1661.651821003,
          "estimated_diameter_max" : 3715.566426699
        }
      },
      "is_potentially_hazardous_asteroid" : true,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-01",
        "epoch_date_close_approach" : 1488355200000,
        "relative_velocity" : {
          "kilometers_per_second" : "14.9920281061",
          "kilometers_per_hour" : "53971.3011819463",
          "miles_per_hour" : "33535.6676705266"
        },
        "miss_distance" : {
          "astronomical" : "0.2283799778",
          "lunar" : "88.8398132324",
          "kilometers" : "34165160",
          "miles" : "21229246"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/2386298?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "2386298",
      "name" : "386298 (2008 SR7)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2386298",
      "absolute_magnitude_h" : 20.0,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.2658,
          "estimated_diameter_max" : 0.5943468684
        },
        "meters" : {
          "estimated_diameter_min" : 265.8,
          "estimated_diameter_max" : 594.3468684194
        },
        "miles" : {
          "estimated_diameter_min" : 0.1651604118,
          "estimated_diameter_max" : 0.369309908
        },
        "feet" : {
          "estimated_diameter_min" : 872.047272,
          "estimated_diameter_max" : 1949.9569797852
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-01",
        "epoch_date_close_approach" : 1488355200000,
        "relative_velocity" : {
          "kilometers_per_second" : "8.9555879628",
          "kilometers_per_hour" : "32240.1166662013",
          "miles_per_hour" : "20032.7547140627"
        },
        "miss_distance" : {
          "astronomical" : "0.3742481898",
          "lunar" : "145.58253479",
          "kilometers" : "55986732",
          "miles" : "34788540"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/2387668?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "2387668",
      "name" : "387668 (2002 SZ)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2387668",
      "absolute_magnitude_h" : 20.4,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.2210828104,
          "estimated_diameter_max" : 0.4943561926
        },
        "meters" : {
          "estimated_diameter_min" : 221.0828103591,
          "estimated_diameter_max" : 494.3561926196
        },
        "miles" : {
          "estimated_diameter_min" : 0.137374447,
          "estimated_diameter_max" : 0.3071786018
        },
        "feet" : {
          "estimated_diameter_min" : 725.3373275385,
          "estimated_diameter_max" : 1621.9035709942
        }
      },
      "is_potentially_hazardous_asteroid" : true,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-01",
        "epoch_date_close_approach" : 1488355200000,
        "relative_velocity" : {
          "kilometers_per_second" : "26.40088592",
          "kilometers_per_hour" : "95043.189311887",
          "miles_per_hour" : "59056.1417143778"
        },
        "miss_distance" : {
          "astronomical" : "0.3594111556",
          "lunar" : "139.8109436035",
          "kilometers" : "53767144",
          "miles" : "33409354"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3597505?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3597505",
      "name" : "(2012 AT22)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3597505",
      "absolute_magnitude_h" : 20.3,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.2315021222,
          "estimated_diameter_max" : 0.5176544822
        },
        "meters" : {
          "estimated_diameter_min" : 231.5021222103,
          "estimated_diameter_max" : 517.6544821978
        },
        "miles" : {
          "estimated_diameter_min" : 0.1438487052,
          "estimated_diameter_max" : 0.3216554833
        },
        "feet" : {
          "estimated_diameter_min" : 759.5214226325,
          "estimated_diameter_max" : 1698.3415313737
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-01",
        "epoch_date_close_approach" : 1488355200000,
        "relative_velocity" : {
          "kilometers_per_second" : "13.9064899534",
          "kilometers_per_hour" : "50063.3638323368",
          "miles_per_hour" : "31107.4273768206"
        },
        "miss_distance" : {
          "astronomical" : "0.4878179748",
          "lunar" : "189.7611846924",
          "kilometers" : "72976528",
          "miles" : "45345512"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3600239?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3600239",
      "name" : "(2012 DF61)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3600239",
      "absolute_magnitude_h" : 20.6,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.2016299194,
          "estimated_diameter_max" : 0.4508582062
        },
        "meters" : {
          "estimated_diameter_min" : 201.6299194428,
          "estimated_diameter_max" : 450.8582061718
        },
        "miles" : {
          "estimated_diameter_min" : 0.1252869847,
          "estimated_diameter_max" : 0.2801502144
        },
        "feet" : {
          "estimated_diameter_min" : 661.5155049046,
          "estimated_diameter_max" : 1479.1936371367
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-01",
        "epoch_date_close_approach" : 1488355200000,
        "relative_velocity" : {
          "kilometers_per_second" : "9.4625842151",
          "kilometers_per_hour" : "34065.3031745087",
          "miles_per_hour" : "21166.8546308496"
        },
        "miss_distance" : {
          "astronomical" : "0.3694215577",
          "lunar" : "143.7049865723",
          "kilometers" : "55264680",
          "miles" : "34339880"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3648642?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3648642",
      "name" : "(2013 SM20)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3648642",
      "absolute_magnitude_h" : 24.8,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0291443905,
          "estimated_diameter_max" : 0.0651688382
        },
        "meters" : {
          "estimated_diameter_min" : 29.1443904535,
          "estimated_diameter_max" : 65.1688382168
        },
        "miles" : {
          "estimated_diameter_min" : 0.018109479,
          "estimated_diameter_max" : 0.0404940262
        },
        "feet" : {
          "estimated_diameter_min" : 95.6180819754,
          "estimated_diameter_max" : 213.8085311752
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-01",
        "epoch_date_close_approach" : 1488355200000,
        "relative_velocity" : {
          "kilometers_per_second" : "12.9087414787",
          "kilometers_per_hour" : "46471.469323293",
          "miles_per_hour" : "28875.5638136873"
        },
        "miss_distance" : {
          "astronomical" : "0.3737172173",
          "lunar" : "145.3759918213",
          "kilometers" : "55907300",
          "miles" : "34739188"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3656919?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3656919",
      "name" : "(2014 BG3)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3656919",
      "absolute_magnitude_h" : 21.1,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.160160338,
          "estimated_diameter_max" : 0.358129403
        },
        "meters" : {
          "estimated_diameter_min" : 160.1603379786,
          "estimated_diameter_max" : 358.1294030194
        },
        "miles" : {
          "estimated_diameter_min" : 0.0995189894,
          "estimated_diameter_max" : 0.2225312253
        },
        "feet" : {
          "estimated_diameter_min" : 525.4604432536,
          "estimated_diameter_max" : 1174.9652706022
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-01",
        "epoch_date_close_approach" : 1488355200000,
        "relative_velocity" : {
          "kilometers_per_second" : "12.2679332097",
          "kilometers_per_hour" : "44164.559555087",
          "miles_per_hour" : "27442.1397968817"
        },
        "miss_distance" : {
          "astronomical" : "0.2124792358",
          "lunar" : "82.6544189453",
          "kilometers" : "31786442",
          "miles" : "19751178"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3678562?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3678562",
      "name" : "(2014 OE338)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3678562",
      "absolute_magnitude_h" : 21.0,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.1677084622,
          "estimated_diameter_max" : 0.3750075218
        },
        "meters" : {
          "estimated_diameter_min" : 167.7084621628,
          "estimated_diameter_max" : 375.0075217981
        },
        "miles" : {
          "estimated_diameter_min" : 0.1042091748,
          "estimated_diameter_max" : 0.2330187988
        },
        "feet" : {
          "estimated_diameter_min" : 550.2246310023,
          "estimated_diameter_max" : 1230.3396778159
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-01",
        "epoch_date_close_approach" : 1488355200000,
        "relative_velocity" : {
          "kilometers_per_second" : "18.9970068996",
          "kilometers_per_hour" : "68389.2248387364",
          "miles_per_hour" : "42494.4047338248"
        },
        "miss_distance" : {
          "astronomical" : "0.2911876262",
          "lunar" : "113.2719802856",
          "kilometers" : "43561048",
          "miles" : "27067580"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3710219?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3710219",
      "name" : "(2015 CH13)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3710219",
      "absolute_magnitude_h" : 28.6,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0050647146,
          "estimated_diameter_max" : 0.0113250461
        },
        "meters" : {
          "estimated_diameter_min" : 5.0647145883,
          "estimated_diameter_max" : 11.3250461062
        },
        "miles" : {
          "estimated_diameter_min" : 0.0031470668,
          "estimated_diameter_max" : 0.0070370552
        },
        "feet" : {
          "estimated_diameter_min" : 16.61651821,
          "estimated_diameter_max" : 37.155664267
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-01",
        "epoch_date_close_approach" : 1488355200000,
        "relative_velocity" : {
          "kilometers_per_second" : "25.4438409212",
          "kilometers_per_hour" : "91597.8273164618",
          "miles_per_hour" : "56915.3277567204"
        },
        "miss_distance" : {
          "astronomical" : "0.3418184495",
          "lunar" : "132.967376709",
          "kilometers" : "51135312",
          "miles" : "31774010"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3713998?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3713998",
      "name" : "(2015 FD35)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3713998",
      "absolute_magnitude_h" : 20.5,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.2111324448,
          "estimated_diameter_max" : 0.4721064988
        },
        "meters" : {
          "estimated_diameter_min" : 211.1324447897,
          "estimated_diameter_max" : 472.1064988055
        },
        "miles" : {
          "estimated_diameter_min" : 0.1311915784,
          "estimated_diameter_max" : 0.2933532873
        },
        "feet" : {
          "estimated_diameter_min" : 692.6917701639,
          "estimated_diameter_max" : 1548.9058855411
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-01",
        "epoch_date_close_approach" : 1488355200000,
        "relative_velocity" : {
          "kilometers_per_second" : "30.4503426059",
          "kilometers_per_hour" : "109621.2333811464",
          "miles_per_hour" : "68114.3713750796"
        },
        "miss_distance" : {
          "astronomical" : "0.2897973602",
          "lunar" : "112.7311782837",
          "kilometers" : "43353068",
          "miles" : "26938348"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3748556?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3748556",
      "name" : "(2016 GX)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3748556",
      "absolute_magnitude_h" : 25.4,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.022108281,
          "estimated_diameter_max" : 0.0494356193
        },
        "meters" : {
          "estimated_diameter_min" : 22.1082810359,
          "estimated_diameter_max" : 49.435619262
        },
        "miles" : {
          "estimated_diameter_min" : 0.0137374447,
          "estimated_diameter_max" : 0.0307178602
        },
        "feet" : {
          "estimated_diameter_min" : 72.5337327539,
          "estimated_diameter_max" : 162.1903570994
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-01",
        "epoch_date_close_approach" : 1488355200000,
        "relative_velocity" : {
          "kilometers_per_second" : "9.9662352792",
          "kilometers_per_hour" : "35878.4470051554",
          "miles_per_hour" : "22293.4716960645"
        },
        "miss_distance" : {
          "astronomical" : "0.4183159046",
          "lunar" : "162.724899292",
          "kilometers" : "62579172",
          "miles" : "38884896"
        },
        "orbiting_body" : "Earth"
      } ]
    } ],
    "2017-02-27" : [ {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3769810?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3769810",
      "name" : "(2017 DS34)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3769810",
      "absolute_magnitude_h" : 25.739,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0189127628,
          "estimated_diameter_max" : 0.0422902233
        },
        "meters" : {
          "estimated_diameter_min" : 18.9127628369,
          "estimated_diameter_max" : 42.2902233456
        },
        "miles" : {
          "estimated_diameter_min" : 0.0117518424,
          "estimated_diameter_max" : 0.0262779184
        },
        "feet" : {
          "estimated_diameter_min" : 62.0497488258,
          "estimated_diameter_max" : 138.7474563613
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-27",
        "epoch_date_close_approach" : 1488182400000,
        "relative_velocity" : {
          "kilometers_per_second" : "21.9676103197",
          "kilometers_per_hour" : "79083.3971507648",
          "miles_per_hour" : "49139.3475240405"
        },
        "miss_distance" : {
          "astronomical" : "0.0182860067",
          "lunar" : "7.1132564545",
          "kilometers" : "2735547.75",
          "miles" : "1699790.5"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/2252558?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "2252558",
      "name" : "252558 (2001 WT1)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2252558",
      "absolute_magnitude_h" : 20.1,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.2538370294,
          "estimated_diameter_max" : 0.5675968529
        },
        "meters" : {
          "estimated_diameter_min" : 253.8370293645,
          "estimated_diameter_max" : 567.5968528656
        },
        "miles" : {
          "estimated_diameter_min" : 0.1577269688,
          "estimated_diameter_max" : 0.3526882241
        },
        "feet" : {
          "estimated_diameter_min" : 832.7986794202,
          "estimated_diameter_max" : 1862.1944587557
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-27",
        "epoch_date_close_approach" : 1488182400000,
        "relative_velocity" : {
          "kilometers_per_second" : "9.7162629911",
          "kilometers_per_hour" : "34978.5467681377",
          "miles_per_hour" : "21734.308684902"
        },
        "miss_distance" : {
          "astronomical" : "0.155132667",
          "lunar" : "60.3466072083",
          "kilometers" : "23207516",
          "miles" : "14420482"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3136736?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3136736",
      "name" : "(2002 SR)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3136736",
      "absolute_magnitude_h" : 21.6,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.1272198785,
          "estimated_diameter_max" : 0.2844722965
        },
        "meters" : {
          "estimated_diameter_min" : 127.2198785394,
          "estimated_diameter_max" : 284.4722965033
        },
        "miles" : {
          "estimated_diameter_min" : 0.0790507431,
          "estimated_diameter_max" : 0.1767628354
        },
        "feet" : {
          "estimated_diameter_min" : 417.3880663071,
          "estimated_diameter_max" : 933.3080892598
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-27",
        "epoch_date_close_approach" : 1488182400000,
        "relative_velocity" : {
          "kilometers_per_second" : "16.358985769",
          "kilometers_per_hour" : "58892.3487685645",
          "miles_per_hour" : "36593.4152667783"
        },
        "miss_distance" : {
          "astronomical" : "0.399690306",
          "lunar" : "155.4795227051",
          "kilometers" : "59792820",
          "miles" : "37153536"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3768609?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3768609",
      "name" : "(2017 BM123)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3768609",
      "absolute_magnitude_h" : 23.662,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.049221515,
          "estimated_diameter_max" : 0.1100626534
        },
        "meters" : {
          "estimated_diameter_min" : 49.2215149759,
          "estimated_diameter_max" : 110.0626534416
        },
        "miles" : {
          "estimated_diameter_min" : 0.030584822,
          "estimated_diameter_max" : 0.068389741
        },
        "feet" : {
          "estimated_diameter_min" : 161.4879151935,
          "estimated_diameter_max" : 361.0979559175
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-27",
        "epoch_date_close_approach" : 1488182400000,
        "relative_velocity" : {
          "kilometers_per_second" : "8.6781860866",
          "kilometers_per_hour" : "31241.4699117477",
          "miles_per_hour" : "19412.2344571079"
        },
        "miss_distance" : {
          "astronomical" : "0.0319360264",
          "lunar" : "12.4231147766",
          "kilometers" : "4777561.5",
          "miles" : "2968639.25"
        },
        "orbiting_body" : "Earth"
      } ]
    } ],
    "2017-02-26" : [ {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3617074?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3617074",
      "name" : "(2012 VA26)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3617074",
      "absolute_magnitude_h" : 26.6,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0127219879,
          "estimated_diameter_max" : 0.0284472297
        },
        "meters" : {
          "estimated_diameter_min" : 12.7219878539,
          "estimated_diameter_max" : 28.4472296503
        },
        "miles" : {
          "estimated_diameter_min" : 0.0079050743,
          "estimated_diameter_max" : 0.0176762835
        },
        "feet" : {
          "estimated_diameter_min" : 41.7388066307,
          "estimated_diameter_max" : 93.330808926
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-26",
        "epoch_date_close_approach" : 1488096000000,
        "relative_velocity" : {
          "kilometers_per_second" : "16.3513293409",
          "kilometers_per_hour" : "58864.7856272872",
          "miles_per_hour" : "36576.2886026885"
        },
        "miss_distance" : {
          "astronomical" : "0.3050247037",
          "lunar" : "118.6546096802",
          "kilometers" : "45631048",
          "miles" : "28353818"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3767248?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3767248",
      "name" : "(2017 BP31)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3767248",
      "absolute_magnitude_h" : 19.778,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.2944116401,
          "estimated_diameter_max" : 0.6583244406
        },
        "meters" : {
          "estimated_diameter_min" : 294.4116400858,
          "estimated_diameter_max" : 658.3244405991
        },
        "miles" : {
          "estimated_diameter_min" : 0.1829388552,
          "estimated_diameter_max" : 0.409063716
        },
        "feet" : {
          "estimated_diameter_min" : 965.9174852592,
          "estimated_diameter_max" : 2159.8571576951
        }
      },
      "is_potentially_hazardous_asteroid" : true,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-26",
        "epoch_date_close_approach" : 1488096000000,
        "relative_velocity" : {
          "kilometers_per_second" : "26.0585597842",
          "kilometers_per_hour" : "93810.815223066",
          "miles_per_hour" : "58290.3923812434"
        },
        "miss_distance" : {
          "astronomical" : "0.1929131088",
          "lunar" : "75.0432052612",
          "kilometers" : "28859392",
          "miles" : "17932394"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3255464?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3255464",
      "name" : "(2004 SB56)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3255464",
      "absolute_magnitude_h" : 19.2,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.3841978911,
          "estimated_diameter_max" : 0.8590926012
        },
        "meters" : {
          "estimated_diameter_min" : 384.1978910643,
          "estimated_diameter_max" : 859.0926012318
        },
        "miles" : {
          "estimated_diameter_min" : 0.2387294278,
          "estimated_diameter_max" : 0.5338152287
        },
        "feet" : {
          "estimated_diameter_min" : 1260.4918089193,
          "estimated_diameter_max" : 2818.5453698252
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-26",
        "epoch_date_close_approach" : 1488096000000,
        "relative_velocity" : {
          "kilometers_per_second" : "13.8254375146",
          "kilometers_per_hour" : "49771.5750525438",
          "miles_per_hour" : "30926.1211763987"
        },
        "miss_distance" : {
          "astronomical" : "0.3632424366",
          "lunar" : "141.3013153076",
          "kilometers" : "54340296",
          "miles" : "33765496"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3444373?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3444373",
      "name" : "(2009 BL2)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3444373",
      "absolute_magnitude_h" : 19.3,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.3669061375,
          "estimated_diameter_max" : 0.8204270649
        },
        "meters" : {
          "estimated_diameter_min" : 366.9061375314,
          "estimated_diameter_max" : 820.4270648822
        },
        "miles" : {
          "estimated_diameter_min" : 0.2279848336,
          "estimated_diameter_max" : 0.5097895857
        },
        "feet" : {
          "estimated_diameter_min" : 1203.7603322587,
          "estimated_diameter_max" : 2691.6899315481
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-26",
        "epoch_date_close_approach" : 1488096000000,
        "relative_velocity" : {
          "kilometers_per_second" : "17.0171920151",
          "kilometers_per_hour" : "61261.891254257",
          "miles_per_hour" : "38065.7568185132"
        },
        "miss_distance" : {
          "astronomical" : "0.2766186431",
          "lunar" : "107.6046447754",
          "kilometers" : "41381560",
          "miles" : "25713308"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3669061?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3669061",
      "name" : "(2014 HP4)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3669061",
      "absolute_magnitude_h" : 22.3,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0921626549,
          "estimated_diameter_max" : 0.2060819612
        },
        "meters" : {
          "estimated_diameter_min" : 92.1626548503,
          "estimated_diameter_max" : 206.0819612321
        },
        "miles" : {
          "estimated_diameter_min" : 0.057267201,
          "estimated_diameter_max" : 0.1280533543
        },
        "feet" : {
          "estimated_diameter_min" : 302.370924539,
          "estimated_diameter_max" : 676.1219416887
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-26",
        "epoch_date_close_approach" : 1488096000000,
        "relative_velocity" : {
          "kilometers_per_second" : "9.2649324373",
          "kilometers_per_hour" : "33353.7567743291",
          "miles_per_hour" : "20724.7273690269"
        },
        "miss_distance" : {
          "astronomical" : "0.0730406895",
          "lunar" : "28.4128265381",
          "kilometers" : "10926731",
          "miles" : "6789556"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3745584?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3745584",
      "name" : "(2016 DX30)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3745584",
      "absolute_magnitude_h" : 26.5,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0133215567,
          "estimated_diameter_max" : 0.0297879063
        },
        "meters" : {
          "estimated_diameter_min" : 13.3215566698,
          "estimated_diameter_max" : 29.7879062798
        },
        "miles" : {
          "estimated_diameter_min" : 0.008277629,
          "estimated_diameter_max" : 0.0185093411
        },
        "feet" : {
          "estimated_diameter_min" : 43.7058959846,
          "estimated_diameter_max" : 97.7293544391
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-26",
        "epoch_date_close_approach" : 1488096000000,
        "relative_velocity" : {
          "kilometers_per_second" : "23.2333015793",
          "kilometers_per_hour" : "83639.8856855365",
          "miles_per_hour" : "51970.5723027713"
        },
        "miss_distance" : {
          "astronomical" : "0.4157593994",
          "lunar" : "161.7304077148",
          "kilometers" : "62196720",
          "miles" : "38647248"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3748472?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3748472",
      "name" : "(2016 FU12)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3748472",
      "absolute_magnitude_h" : 26.9,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0110803882,
          "estimated_diameter_max" : 0.0247765013
        },
        "meters" : {
          "estimated_diameter_min" : 11.0803882126,
          "estimated_diameter_max" : 24.7765012606
        },
        "miles" : {
          "estimated_diameter_min" : 0.0068850319,
          "estimated_diameter_max" : 0.0153953994
        },
        "feet" : {
          "estimated_diameter_min" : 36.3529808636,
          "estimated_diameter_max" : 81.2877363957
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-26",
        "epoch_date_close_approach" : 1488096000000,
        "relative_velocity" : {
          "kilometers_per_second" : "3.8808199308",
          "kilometers_per_hour" : "13970.9517507951",
          "miles_per_hour" : "8681.0061031538"
        },
        "miss_distance" : {
          "astronomical" : "0.0417476383",
          "lunar" : "16.2398300171",
          "kilometers" : "6245357.5",
          "miles" : "3880685.25"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3743902?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3743902",
      "name" : "(2016 CV246)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3743902",
      "absolute_magnitude_h" : 25.4,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.022108281,
          "estimated_diameter_max" : 0.0494356193
        },
        "meters" : {
          "estimated_diameter_min" : 22.1082810359,
          "estimated_diameter_max" : 49.435619262
        },
        "miles" : {
          "estimated_diameter_min" : 0.0137374447,
          "estimated_diameter_max" : 0.0307178602
        },
        "feet" : {
          "estimated_diameter_min" : 72.5337327539,
          "estimated_diameter_max" : 162.1903570994
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-26",
        "epoch_date_close_approach" : 1488096000000,
        "relative_velocity" : {
          "kilometers_per_second" : "18.8941653163",
          "kilometers_per_hour" : "68018.9951387376",
          "miles_per_hour" : "42264.3583960673"
        },
        "miss_distance" : {
          "astronomical" : "0.4832318969",
          "lunar" : "187.9772033691",
          "kilometers" : "72290464",
          "miles" : "44919212"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/2474611?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "2474611",
      "name" : "474611 (2004 SB56)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2474611",
      "absolute_magnitude_h" : 19.2,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.3841978911,
          "estimated_diameter_max" : 0.8590926012
        },
        "meters" : {
          "estimated_diameter_min" : 384.1978910643,
          "estimated_diameter_max" : 859.0926012318
        },
        "miles" : {
          "estimated_diameter_min" : 0.2387294278,
          "estimated_diameter_max" : 0.5338152287
        },
        "feet" : {
          "estimated_diameter_min" : 1260.4918089193,
          "estimated_diameter_max" : 2818.5453698252
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-26",
        "epoch_date_close_approach" : 1488096000000,
        "relative_velocity" : {
          "kilometers_per_second" : "13.8254158287",
          "kilometers_per_hour" : "49771.4969833715",
          "miles_per_hour" : "30926.072667251"
        },
        "miss_distance" : {
          "astronomical" : "0.3632420654",
          "lunar" : "141.3011627197",
          "kilometers" : "54340240",
          "miles" : "33765460"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3764891?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3764891",
      "name" : "(2016 WG10)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3764891",
      "absolute_magnitude_h" : 20.9,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.1756123185,
          "estimated_diameter_max" : 0.3926810818
        },
        "meters" : {
          "estimated_diameter_min" : 175.6123184804,
          "estimated_diameter_max" : 392.6810818086
        },
        "miles" : {
          "estimated_diameter_min" : 0.1091204019,
          "estimated_diameter_max" : 0.2440006365
        },
        "feet" : {
          "estimated_diameter_min" : 576.1559189633,
          "estimated_diameter_max" : 1288.3238004408
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-26",
        "epoch_date_close_approach" : 1488096000000,
        "relative_velocity" : {
          "kilometers_per_second" : "13.1000383215",
          "kilometers_per_hour" : "47160.1379575332",
          "miles_per_hour" : "29303.4757214461"
        },
        "miss_distance" : {
          "astronomical" : "0.159088932",
          "lunar" : "61.885597229",
          "kilometers" : "23799366",
          "miles" : "14788241"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3764797?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3764797",
      "name" : "(2016 WJ7)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3764797",
      "absolute_magnitude_h" : 21.6,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.1272198785,
          "estimated_diameter_max" : 0.2844722965
        },
        "meters" : {
          "estimated_diameter_min" : 127.2198785394,
          "estimated_diameter_max" : 284.4722965033
        },
        "miles" : {
          "estimated_diameter_min" : 0.0790507431,
          "estimated_diameter_max" : 0.1767628354
        },
        "feet" : {
          "estimated_diameter_min" : 417.3880663071,
          "estimated_diameter_max" : 933.3080892598
        }
      },
      "is_potentially_hazardous_asteroid" : true,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-26",
        "epoch_date_close_approach" : 1488096000000,
        "relative_velocity" : {
          "kilometers_per_second" : "9.2941503141",
          "kilometers_per_hour" : "33458.9411308266",
          "miles_per_hour" : "20790.0848376517"
        },
        "miss_distance" : {
          "astronomical" : "0.1051211752",
          "lunar" : "40.8921356201",
          "kilometers" : "15725904",
          "miles" : "9771624"
        },
        "orbiting_body" : "Earth"
      } ]
    } ],
    "2017-03-05" : [ {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/2163191?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "2163191",
      "name" : "163191 (2002 EQ9)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2163191",
      "absolute_magnitude_h" : 19.4,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.3503926411,
          "estimated_diameter_max" : 0.7835017643
        },
        "meters" : {
          "estimated_diameter_min" : 350.3926411083,
          "estimated_diameter_max" : 783.5017643338
        },
        "miles" : {
          "estimated_diameter_min" : 0.2177238258,
          "estimated_diameter_max" : 0.4868452748
        },
        "feet" : {
          "estimated_diameter_min" : 1149.5821926537,
          "estimated_diameter_max" : 2570.543928497
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-05",
        "epoch_date_close_approach" : 1488700800000,
        "relative_velocity" : {
          "kilometers_per_second" : "21.8617831808",
          "kilometers_per_hour" : "78702.4194509761",
          "miles_per_hour" : "48902.6227971912"
        },
        "miss_distance" : {
          "astronomical" : "0.4064783801",
          "lunar" : "158.1200866699",
          "kilometers" : "60808300",
          "miles" : "37784524"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3005874?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3005874",
      "name" : "(1993 KA)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3005874",
      "absolute_magnitude_h" : 26.0,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0167708462,
          "estimated_diameter_max" : 0.0375007522
        },
        "meters" : {
          "estimated_diameter_min" : 16.7708462163,
          "estimated_diameter_max" : 37.5007521798
        },
        "miles" : {
          "estimated_diameter_min" : 0.0104209175,
          "estimated_diameter_max" : 0.0233018799
        },
        "feet" : {
          "estimated_diameter_min" : 55.0224631002,
          "estimated_diameter_max" : 123.0339677816
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-05",
        "epoch_date_close_approach" : 1488700800000,
        "relative_velocity" : {
          "kilometers_per_second" : "17.5566603225",
          "kilometers_per_hour" : "63203.9771609572",
          "miles_per_hour" : "39272.4934753736"
        },
        "miss_distance" : {
          "astronomical" : "0.4894050776",
          "lunar" : "190.3785705566",
          "kilometers" : "73213960",
          "miles" : "45493044"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3455350?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3455350",
      "name" : "(2009 FR30)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3455350",
      "absolute_magnitude_h" : 20.4,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.2210828104,
          "estimated_diameter_max" : 0.4943561926
        },
        "meters" : {
          "estimated_diameter_min" : 221.0828103591,
          "estimated_diameter_max" : 494.3561926196
        },
        "miles" : {
          "estimated_diameter_min" : 0.137374447,
          "estimated_diameter_max" : 0.3071786018
        },
        "feet" : {
          "estimated_diameter_min" : 725.3373275385,
          "estimated_diameter_max" : 1621.9035709942
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-05",
        "epoch_date_close_approach" : 1488700800000,
        "relative_velocity" : {
          "kilometers_per_second" : "5.9488651878",
          "kilometers_per_hour" : "21415.9146759377",
          "miles_per_hour" : "13307.0165385014"
        },
        "miss_distance" : {
          "astronomical" : "0.3277531869",
          "lunar" : "127.4959869385",
          "kilometers" : "49031180",
          "miles" : "30466562"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3769883?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3769883",
      "name" : "(2017 DW35)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3769883",
      "absolute_magnitude_h" : 22.114,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.1004049159,
          "estimated_diameter_max" : 0.2245122172
        },
        "meters" : {
          "estimated_diameter_min" : 100.4049158754,
          "estimated_diameter_max" : 224.5122171725
        },
        "miles" : {
          "estimated_diameter_min" : 0.062388703,
          "estimated_diameter_max" : 0.1395053809
        },
        "feet" : {
          "estimated_diameter_min" : 329.4124642006,
          "estimated_diameter_max" : 736.5886625883
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-05",
        "epoch_date_close_approach" : 1488700800000,
        "relative_velocity" : {
          "kilometers_per_second" : "18.0160751507",
          "kilometers_per_hour" : "64857.8705425906",
          "miles_per_hour" : "40300.1585046447"
        },
        "miss_distance" : {
          "astronomical" : "0.2303426581",
          "lunar" : "89.6032943726",
          "kilometers" : "34458772",
          "miles" : "21411688"
        },
        "orbiting_body" : "Earth"
      } ]
    } ],
    "2017-03-04" : [ {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3767245?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3767245",
      "name" : "(2017 BU31)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3767245",
      "absolute_magnitude_h" : 20.776,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.1859323578,
          "estimated_diameter_max" : 0.4157573913
        },
        "meters" : {
          "estimated_diameter_min" : 185.9323578034,
          "estimated_diameter_max" : 415.7573912652
        },
        "miles" : {
          "estimated_diameter_min" : 0.1155329751,
          "estimated_diameter_max" : 0.258339586
        },
        "feet" : {
          "estimated_diameter_min" : 610.0143167757,
          "estimated_diameter_max" : 1364.0334795587
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-04",
        "epoch_date_close_approach" : 1488614400000,
        "relative_velocity" : {
          "kilometers_per_second" : "1.8621869357",
          "kilometers_per_hour" : "6703.8729685951",
          "miles_per_hour" : "4165.525956514"
        },
        "miss_distance" : {
          "astronomical" : "0.3187540033",
          "lunar" : "123.9953155518",
          "kilometers" : "47684924",
          "miles" : "29630038"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3769816?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3769816",
      "name" : "(2017 DW34)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3769816",
      "absolute_magnitude_h" : 23.137,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.062683751,
          "estimated_diameter_max" : 0.1401651283
        },
        "meters" : {
          "estimated_diameter_min" : 62.6837509741,
          "estimated_diameter_max" : 140.1651282628
        },
        "miles" : {
          "estimated_diameter_min" : 0.038949865,
          "estimated_diameter_max" : 0.0870945459
        },
        "feet" : {
          "estimated_diameter_min" : 205.6553575459,
          "estimated_diameter_max" : 459.8593594097
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-04",
        "epoch_date_close_approach" : 1488614400000,
        "relative_velocity" : {
          "kilometers_per_second" : "22.139296665",
          "kilometers_per_hour" : "79701.4679941382",
          "miles_per_hour" : "49523.3927100244"
        },
        "miss_distance" : {
          "astronomical" : "0.0492038986",
          "lunar" : "19.1403160095",
          "kilometers" : "7360798.5",
          "miles" : "4573788"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3028807?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3028807",
      "name" : "(2000 CE59)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3028807",
      "absolute_magnitude_h" : 20.4,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.2210828104,
          "estimated_diameter_max" : 0.4943561926
        },
        "meters" : {
          "estimated_diameter_min" : 221.0828103591,
          "estimated_diameter_max" : 494.3561926196
        },
        "miles" : {
          "estimated_diameter_min" : 0.137374447,
          "estimated_diameter_max" : 0.3071786018
        },
        "feet" : {
          "estimated_diameter_min" : 725.3373275385,
          "estimated_diameter_max" : 1621.9035709942
        }
      },
      "is_potentially_hazardous_asteroid" : true,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-04",
        "epoch_date_close_approach" : 1488614400000,
        "relative_velocity" : {
          "kilometers_per_second" : "7.1865752437",
          "kilometers_per_hour" : "25871.6708773456",
          "miles_per_hour" : "16075.6501626485"
        },
        "miss_distance" : {
          "astronomical" : "0.1916656643",
          "lunar" : "74.5579452515",
          "kilometers" : "28672776",
          "miles" : "17816436"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3031176?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3031176",
      "name" : "(2000 EB14)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3031176",
      "absolute_magnitude_h" : 23.1,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.063760979,
          "estimated_diameter_max" : 0.1425738833
        },
        "meters" : {
          "estimated_diameter_min" : 63.7609789875,
          "estimated_diameter_max" : 142.5738833281
        },
        "miles" : {
          "estimated_diameter_min" : 0.0396192233,
          "estimated_diameter_max" : 0.0885912765
        },
        "feet" : {
          "estimated_diameter_min" : 209.1895703015,
          "estimated_diameter_max" : 467.7620993781
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-04",
        "epoch_date_close_approach" : 1488614400000,
        "relative_velocity" : {
          "kilometers_per_second" : "23.6035482459",
          "kilometers_per_hour" : "84972.7736853224",
          "miles_per_hour" : "52798.7770713049"
        },
        "miss_distance" : {
          "astronomical" : "0.2524521829",
          "lunar" : "98.2039031982",
          "kilometers" : "37766312",
          "miles" : "23466898"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3601557?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3601557",
      "name" : "(2012 FA14)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3601557",
      "absolute_magnitude_h" : 23.1,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.063760979,
          "estimated_diameter_max" : 0.1425738833
        },
        "meters" : {
          "estimated_diameter_min" : 63.7609789875,
          "estimated_diameter_max" : 142.5738833281
        },
        "miles" : {
          "estimated_diameter_min" : 0.0396192233,
          "estimated_diameter_max" : 0.0885912765
        },
        "feet" : {
          "estimated_diameter_min" : 209.1895703015,
          "estimated_diameter_max" : 467.7620993781
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-04",
        "epoch_date_close_approach" : 1488614400000,
        "relative_velocity" : {
          "kilometers_per_second" : "4.5862724761",
          "kilometers_per_hour" : "16510.5809138655",
          "miles_per_hour" : "10259.0329017294"
        },
        "miss_distance" : {
          "astronomical" : "0.3967542941",
          "lunar" : "154.3374176025",
          "kilometers" : "59353600",
          "miles" : "36880616"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3672899?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3672899",
      "name" : "(2014 KQ76)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3672899",
      "absolute_magnitude_h" : 21.6,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.1272198785,
          "estimated_diameter_max" : 0.2844722965
        },
        "meters" : {
          "estimated_diameter_min" : 127.2198785394,
          "estimated_diameter_max" : 284.4722965033
        },
        "miles" : {
          "estimated_diameter_min" : 0.0790507431,
          "estimated_diameter_max" : 0.1767628354
        },
        "feet" : {
          "estimated_diameter_min" : 417.3880663071,
          "estimated_diameter_max" : 933.3080892598
        }
      },
      "is_potentially_hazardous_asteroid" : true,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-04",
        "epoch_date_close_approach" : 1488614400000,
        "relative_velocity" : {
          "kilometers_per_second" : "8.8709622506",
          "kilometers_per_hour" : "31935.4641022446",
          "miles_per_hour" : "19843.4554584197"
        },
        "miss_distance" : {
          "astronomical" : "0.2849539053",
          "lunar" : "110.8470611572",
          "kilometers" : "42628496",
          "miles" : "26488120"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/2468910?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "2468910",
      "name" : "468910 (2014 KQ76)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2468910",
      "absolute_magnitude_h" : 21.5,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.1332155667,
          "estimated_diameter_max" : 0.2978790628
        },
        "meters" : {
          "estimated_diameter_min" : 133.2155666981,
          "estimated_diameter_max" : 297.8790627982
        },
        "miles" : {
          "estimated_diameter_min" : 0.0827762899,
          "estimated_diameter_max" : 0.1850934111
        },
        "feet" : {
          "estimated_diameter_min" : 437.0589598459,
          "estimated_diameter_max" : 977.2935443908
        }
      },
      "is_potentially_hazardous_asteroid" : true,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-04",
        "epoch_date_close_approach" : 1488614400000,
        "relative_velocity" : {
          "kilometers_per_second" : "8.8709625147",
          "kilometers_per_hour" : "31935.4650530114",
          "miles_per_hour" : "19843.4560491892"
        },
        "miss_distance" : {
          "astronomical" : "0.2849539053",
          "lunar" : "110.8470611572",
          "kilometers" : "42628496",
          "miles" : "26488120"
        },
        "orbiting_body" : "Earth"
      } ]
    } ],
    "2017-03-03" : [ {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3769875?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3769875",
      "name" : "(2017 DP35)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3769875",
      "absolute_magnitude_h" : 22.347,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0901892918,
          "estimated_diameter_max" : 0.2016693873
        },
        "meters" : {
          "estimated_diameter_min" : 90.1892917813,
          "estimated_diameter_max" : 201.6693872656
        },
        "miles" : {
          "estimated_diameter_min" : 0.0560410104,
          "estimated_diameter_max" : 0.1253115088
        },
        "feet" : {
          "estimated_diameter_min" : 295.8966360478,
          "estimated_diameter_max" : 661.6449925164
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-03",
        "epoch_date_close_approach" : 1488528000000,
        "relative_velocity" : {
          "kilometers_per_second" : "20.6075304841",
          "kilometers_per_hour" : "74187.109742909",
          "miles_per_hour" : "46096.9849399759"
        },
        "miss_distance" : {
          "astronomical" : "0.103930463",
          "lunar" : "40.4289512634",
          "kilometers" : "15547777",
          "miles" : "9660940"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/2434734?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "2434734",
      "name" : "434734 (2006 FX)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2434734",
      "absolute_magnitude_h" : 20.0,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.2658,
          "estimated_diameter_max" : 0.5943468684
        },
        "meters" : {
          "estimated_diameter_min" : 265.8,
          "estimated_diameter_max" : 594.3468684194
        },
        "miles" : {
          "estimated_diameter_min" : 0.1651604118,
          "estimated_diameter_max" : 0.369309908
        },
        "feet" : {
          "estimated_diameter_min" : 872.047272,
          "estimated_diameter_max" : 1949.9569797852
        }
      },
      "is_potentially_hazardous_asteroid" : true,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-03",
        "epoch_date_close_approach" : 1488528000000,
        "relative_velocity" : {
          "kilometers_per_second" : "14.0294087738",
          "kilometers_per_hour" : "50505.87158554",
          "miles_per_hour" : "31382.3844860262"
        },
        "miss_distance" : {
          "astronomical" : "0.2435445853",
          "lunar" : "94.7388381958",
          "kilometers" : "36433752",
          "miles" : "22638884"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3621023?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3621023",
      "name" : "(2012 XO134)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3621023",
      "absolute_magnitude_h" : 23.9,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.04411182,
          "estimated_diameter_max" : 0.0986370281
        },
        "meters" : {
          "estimated_diameter_min" : 44.1118199997,
          "estimated_diameter_max" : 98.6370281305
        },
        "miles" : {
          "estimated_diameter_min" : 0.0274098057,
          "estimated_diameter_max" : 0.0612901888
        },
        "feet" : {
          "estimated_diameter_min" : 144.7238235278,
          "estimated_diameter_max" : 323.6123073718
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-03",
        "epoch_date_close_approach" : 1488528000000,
        "relative_velocity" : {
          "kilometers_per_second" : "9.479100962",
          "kilometers_per_hour" : "34124.7634630478",
          "miles_per_hour" : "21203.8009418032"
        },
        "miss_distance" : {
          "astronomical" : "0.3310501025",
          "lunar" : "128.7784881592",
          "kilometers" : "49524392",
          "miles" : "30773030"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3633049?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3633049",
      "name" : "(2013 FY7)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3633049",
      "absolute_magnitude_h" : 22.5,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0840533402,
          "estimated_diameter_max" : 0.1879489824
        },
        "meters" : {
          "estimated_diameter_min" : 84.0533402073,
          "estimated_diameter_max" : 187.9489824394
        },
        "miles" : {
          "estimated_diameter_min" : 0.0522283081,
          "estimated_diameter_max" : 0.1167860472
        },
        "feet" : {
          "estimated_diameter_min" : 275.7655606856,
          "estimated_diameter_max" : 616.6305395464
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-03",
        "epoch_date_close_approach" : 1488528000000,
        "relative_velocity" : {
          "kilometers_per_second" : "9.5381515517",
          "kilometers_per_hour" : "34337.3455862523",
          "miles_per_hour" : "21335.8912060799"
        },
        "miss_distance" : {
          "astronomical" : "0.2624987285",
          "lunar" : "102.1120071411",
          "kilometers" : "39269252",
          "miles" : "24400782"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3646648?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3646648",
      "name" : "(2013 QN10)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3646648",
      "absolute_magnitude_h" : 22.3,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0921626549,
          "estimated_diameter_max" : 0.2060819612
        },
        "meters" : {
          "estimated_diameter_min" : 92.1626548503,
          "estimated_diameter_max" : 206.0819612321
        },
        "miles" : {
          "estimated_diameter_min" : 0.057267201,
          "estimated_diameter_max" : 0.1280533543
        },
        "feet" : {
          "estimated_diameter_min" : 302.370924539,
          "estimated_diameter_max" : 676.1219416887
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-03",
        "epoch_date_close_approach" : 1488528000000,
        "relative_velocity" : {
          "kilometers_per_second" : "19.6317294665",
          "kilometers_per_hour" : "70674.2260792967",
          "miles_per_hour" : "43914.2156435497"
        },
        "miss_distance" : {
          "astronomical" : "0.4805246502",
          "lunar" : "186.9240875244",
          "kilometers" : "71885464",
          "miles" : "44667556"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3709927?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3709927",
      "name" : "(2015 CU)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3709927",
      "absolute_magnitude_h" : 20.8,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.1838886721,
          "estimated_diameter_max" : 0.411187571
        },
        "meters" : {
          "estimated_diameter_min" : 183.8886720703,
          "estimated_diameter_max" : 411.1875710413
        },
        "miles" : {
          "estimated_diameter_min" : 0.1142630881,
          "estimated_diameter_max" : 0.2555000322
        },
        "feet" : {
          "estimated_diameter_min" : 603.309310875,
          "estimated_diameter_max" : 1349.040630575
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-03",
        "epoch_date_close_approach" : 1488528000000,
        "relative_velocity" : {
          "kilometers_per_second" : "18.9399700422",
          "kilometers_per_hour" : "68183.8921519409",
          "miles_per_hour" : "42366.8189874102"
        },
        "miss_distance" : {
          "astronomical" : "0.4031141687",
          "lunar" : "156.811416626",
          "kilometers" : "60305020",
          "miles" : "37471804"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3721237?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3721237",
      "name" : "(2015 LV24)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3721237",
      "absolute_magnitude_h" : 23.5,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0530340723,
          "estimated_diameter_max" : 0.1185877909
        },
        "meters" : {
          "estimated_diameter_min" : 53.0340723319,
          "estimated_diameter_max" : 118.5877908577
        },
        "miles" : {
          "estimated_diameter_min" : 0.0329538346,
          "estimated_diameter_max" : 0.0736870142
        },
        "feet" : {
          "estimated_diameter_min" : 173.9963058693,
          "estimated_diameter_max" : 389.0675677576
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-03",
        "epoch_date_close_approach" : 1488528000000,
        "relative_velocity" : {
          "kilometers_per_second" : "14.5629195383",
          "kilometers_per_hour" : "52426.5103378476",
          "miles_per_hour" : "32575.7947152031"
        },
        "miss_distance" : {
          "astronomical" : "0.4428733779",
          "lunar" : "172.2777557373",
          "kilometers" : "66252916",
          "miles" : "41167652"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3728898?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3728898",
      "name" : "(2015 TF)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3728898",
      "absolute_magnitude_h" : 22.2,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.096506147,
          "estimated_diameter_max" : 0.2157943048
        },
        "meters" : {
          "estimated_diameter_min" : 96.5061469579,
          "estimated_diameter_max" : 215.7943048444
        },
        "miles" : {
          "estimated_diameter_min" : 0.059966121,
          "estimated_diameter_max" : 0.134088323
        },
        "feet" : {
          "estimated_diameter_min" : 316.6212271853,
          "estimated_diameter_max" : 707.9865871058
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-03",
        "epoch_date_close_approach" : 1488528000000,
        "relative_velocity" : {
          "kilometers_per_second" : "18.8267258073",
          "kilometers_per_hour" : "67776.2129061706",
          "miles_per_hour" : "42113.5029582814"
        },
        "miss_distance" : {
          "astronomical" : "0.434018534",
          "lunar" : "168.8332061768",
          "kilometers" : "64928248",
          "miles" : "40344544"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3759244?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3759244",
      "name" : "(2016 RZ17)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3759244",
      "absolute_magnitude_h" : 25.5,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0211132445,
          "estimated_diameter_max" : 0.0472106499
        },
        "meters" : {
          "estimated_diameter_min" : 21.113244479,
          "estimated_diameter_max" : 47.2106498806
        },
        "miles" : {
          "estimated_diameter_min" : 0.0131191578,
          "estimated_diameter_max" : 0.0293353287
        },
        "feet" : {
          "estimated_diameter_min" : 69.2691770164,
          "estimated_diameter_max" : 154.8905885541
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-03",
        "epoch_date_close_approach" : 1488528000000,
        "relative_velocity" : {
          "kilometers_per_second" : "15.0519463144",
          "kilometers_per_hour" : "54187.0067316881",
          "miles_per_hour" : "33669.698710587"
        },
        "miss_distance" : {
          "astronomical" : "0.0778894161",
          "lunar" : "30.2989807129",
          "kilometers" : "11652090",
          "miles" : "7240273.5"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3759754?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3759754",
      "name" : "(2016 SQ2)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3759754",
      "absolute_magnitude_h" : 23.5,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0530340723,
          "estimated_diameter_max" : 0.1185877909
        },
        "meters" : {
          "estimated_diameter_min" : 53.0340723319,
          "estimated_diameter_max" : 118.5877908577
        },
        "miles" : {
          "estimated_diameter_min" : 0.0329538346,
          "estimated_diameter_max" : 0.0736870142
        },
        "feet" : {
          "estimated_diameter_min" : 173.9963058693,
          "estimated_diameter_max" : 389.0675677576
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-03-03",
        "epoch_date_close_approach" : 1488528000000,
        "relative_velocity" : {
          "kilometers_per_second" : "13.0270537483",
          "kilometers_per_hour" : "46897.3934937691",
          "miles_per_hour" : "29140.2165295034"
        },
        "miss_distance" : {
          "astronomical" : "0.2399697772",
          "lunar" : "93.3482437134",
          "kilometers" : "35898968",
          "miles" : "22306584"
        },
        "orbiting_body" : "Earth"
      } ]
    } ],
    "2017-02-28" : [ {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3769750?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3769750",
      "name" : "(2017 DJ16)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3769750",
      "absolute_magnitude_h" : 25.819,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0182286697,
          "estimated_diameter_max" : 0.0407605447
        },
        "meters" : {
          "estimated_diameter_min" : 18.2286697391,
          "estimated_diameter_max" : 40.7605446761
        },
        "miles" : {
          "estimated_diameter_min" : 0.0113267667,
          "estimated_diameter_max" : 0.0253274204
        },
        "feet" : {
          "estimated_diameter_min" : 59.8053488269,
          "estimated_diameter_max" : 133.728825395
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-28",
        "epoch_date_close_approach" : 1488268800000,
        "relative_velocity" : {
          "kilometers_per_second" : "11.058252825",
          "kilometers_per_hour" : "39809.7101701087",
          "miles_per_hour" : "24736.2057443101"
        },
        "miss_distance" : {
          "astronomical" : "0.0104378782",
          "lunar" : "4.0603346825",
          "kilometers" : "1561484.375",
          "miles" : "970261.375"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/2302156?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "2302156",
      "name" : "302156 (2001 SF286)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2302156",
      "absolute_magnitude_h" : 18.9,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.4411182,
          "estimated_diameter_max" : 0.9863702813
        },
        "meters" : {
          "estimated_diameter_min" : 441.1181999969,
          "estimated_diameter_max" : 986.3702813054
        },
        "miles" : {
          "estimated_diameter_min" : 0.2740980571,
          "estimated_diameter_max" : 0.6129018881
        },
        "feet" : {
          "estimated_diameter_min" : 1447.2382352778,
          "estimated_diameter_max" : 3236.1230737181
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-28",
        "epoch_date_close_approach" : 1488268800000,
        "relative_velocity" : {
          "kilometers_per_second" : "23.2245452787",
          "kilometers_per_hour" : "83608.3630032091",
          "miles_per_hour" : "51950.9853338551"
        },
        "miss_distance" : {
          "astronomical" : "0.4811175295",
          "lunar" : "187.1547088623",
          "kilometers" : "71974160",
          "miles" : "44722668"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3297366?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3297366",
      "name" : "(2005 UJ6)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3297366",
      "absolute_magnitude_h" : 21.5,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.1332155667,
          "estimated_diameter_max" : 0.2978790628
        },
        "meters" : {
          "estimated_diameter_min" : 133.2155666981,
          "estimated_diameter_max" : 297.8790627982
        },
        "miles" : {
          "estimated_diameter_min" : 0.0827762899,
          "estimated_diameter_max" : 0.1850934111
        },
        "feet" : {
          "estimated_diameter_min" : 437.0589598459,
          "estimated_diameter_max" : 977.2935443908
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-28",
        "epoch_date_close_approach" : 1488268800000,
        "relative_velocity" : {
          "kilometers_per_second" : "16.1226938897",
          "kilometers_per_hour" : "58041.698002979",
          "miles_per_hour" : "36064.8539619066"
        },
        "miss_distance" : {
          "astronomical" : "0.4290623934",
          "lunar" : "166.9052734375",
          "kilometers" : "64186820",
          "miles" : "39883840"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3629117?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3629117",
      "name" : "(2013 ET)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3629117",
      "absolute_magnitude_h" : 23.1,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.063760979,
          "estimated_diameter_max" : 0.1425738833
        },
        "meters" : {
          "estimated_diameter_min" : 63.7609789875,
          "estimated_diameter_max" : 142.5738833281
        },
        "miles" : {
          "estimated_diameter_min" : 0.0396192233,
          "estimated_diameter_max" : 0.0885912765
        },
        "feet" : {
          "estimated_diameter_min" : 209.1895703015,
          "estimated_diameter_max" : 467.7620993781
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-28",
        "epoch_date_close_approach" : 1488268800000,
        "relative_velocity" : {
          "kilometers_per_second" : "16.8165138818",
          "kilometers_per_hour" : "60539.4499745329",
          "miles_per_hour" : "37616.8599022313"
        },
        "miss_distance" : {
          "astronomical" : "0.1637460467",
          "lunar" : "63.6972122192",
          "kilometers" : "24496060",
          "miles" : "15221146"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3647997?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3647997",
      "name" : "(2013 RM43)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3647997",
      "absolute_magnitude_h" : 19.9,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.2783267681,
          "estimated_diameter_max" : 0.6223575734
        },
        "meters" : {
          "estimated_diameter_min" : 278.3267680719,
          "estimated_diameter_max" : 622.3575733667
        },
        "miles" : {
          "estimated_diameter_min" : 0.1729441822,
          "estimated_diameter_max" : 0.3867149477
        },
        "feet" : {
          "estimated_diameter_min" : 913.1455937611,
          "estimated_diameter_max" : 2041.8556210042
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-28",
        "epoch_date_close_approach" : 1488268800000,
        "relative_velocity" : {
          "kilometers_per_second" : "14.5802347047",
          "kilometers_per_hour" : "52488.8449370611",
          "miles_per_hour" : "32614.5270110311"
        },
        "miss_distance" : {
          "astronomical" : "0.2270474653",
          "lunar" : "88.3214645386",
          "kilometers" : "33965816",
          "miles" : "21105380"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3670150?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3670150",
      "name" : "(2014 JN2)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3670150",
      "absolute_magnitude_h" : 24.3,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0366906138,
          "estimated_diameter_max" : 0.0820427065
        },
        "meters" : {
          "estimated_diameter_min" : 36.6906137531,
          "estimated_diameter_max" : 82.0427064882
        },
        "miles" : {
          "estimated_diameter_min" : 0.0227984834,
          "estimated_diameter_max" : 0.0509789586
        },
        "feet" : {
          "estimated_diameter_min" : 120.3760332259,
          "estimated_diameter_max" : 269.1689931548
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-28",
        "epoch_date_close_approach" : 1488268800000,
        "relative_velocity" : {
          "kilometers_per_second" : "31.226883481",
          "kilometers_per_hour" : "112416.780531465",
          "miles_per_hour" : "69851.415658565"
        },
        "miss_distance" : {
          "astronomical" : "0.3203403219",
          "lunar" : "124.6123886108",
          "kilometers" : "47922232",
          "miles" : "29777494"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3736678?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3736678",
      "name" : "(2015 XC352)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3736678",
      "absolute_magnitude_h" : 25.7,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.0192555078,
          "estimated_diameter_max" : 0.0430566244
        },
        "meters" : {
          "estimated_diameter_min" : 19.2555078188,
          "estimated_diameter_max" : 43.0566244241
        },
        "miles" : {
          "estimated_diameter_min" : 0.0119648141,
          "estimated_diameter_max" : 0.0267541378
        },
        "feet" : {
          "estimated_diameter_min" : 63.1742402722,
          "estimated_diameter_max" : 141.2618956756
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-28",
        "epoch_date_close_approach" : 1488268800000,
        "relative_velocity" : {
          "kilometers_per_second" : "4.0178289394",
          "kilometers_per_hour" : "14464.1841818958",
          "miles_per_hour" : "8987.4815545785"
        },
        "miss_distance" : {
          "astronomical" : "0.1352662611",
          "lunar" : "52.6185760498",
          "kilometers" : "20235544",
          "miles" : "12573784"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/2481127?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "2481127",
      "name" : "481127 (2005 UJ6)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2481127",
      "absolute_magnitude_h" : 21.5,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.1332155667,
          "estimated_diameter_max" : 0.2978790628
        },
        "meters" : {
          "estimated_diameter_min" : 133.2155666981,
          "estimated_diameter_max" : 297.8790627982
        },
        "miles" : {
          "estimated_diameter_min" : 0.0827762899,
          "estimated_diameter_max" : 0.1850934111
        },
        "feet" : {
          "estimated_diameter_min" : 437.0589598459,
          "estimated_diameter_max" : 977.2935443908
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-28",
        "epoch_date_close_approach" : 1488268800000,
        "relative_velocity" : {
          "kilometers_per_second" : "16.1226992073",
          "kilometers_per_hour" : "58041.7171464398",
          "miles_per_hour" : "36064.8658569087"
        },
        "miss_distance" : {
          "astronomical" : "0.4290630271",
          "lunar" : "166.9055175781",
          "kilometers" : "64186916",
          "miles" : "39883900"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3427442?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3427442",
      "name" : "(2008 SD)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3427442",
      "absolute_magnitude_h" : 19.4,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.3503926411,
          "estimated_diameter_max" : 0.7835017643
        },
        "meters" : {
          "estimated_diameter_min" : 350.3926411083,
          "estimated_diameter_max" : 783.5017643338
        },
        "miles" : {
          "estimated_diameter_min" : 0.2177238258,
          "estimated_diameter_max" : 0.4868452748
        },
        "feet" : {
          "estimated_diameter_min" : 1149.5821926537,
          "estimated_diameter_max" : 2570.543928497
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-28",
        "epoch_date_close_approach" : 1488268800000,
        "relative_velocity" : {
          "kilometers_per_second" : "24.191640531",
          "kilometers_per_hour" : "87089.9059115694",
          "miles_per_hour" : "54114.2807037749"
        },
        "miss_distance" : {
          "astronomical" : "0.2279008768",
          "lunar" : "88.6534423828",
          "kilometers" : "34093488",
          "miles" : "21184710"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3741145?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3741145",
      "name" : "(2016 BV39)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3741145",
      "absolute_magnitude_h" : 21.8,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.1160259082,
          "estimated_diameter_max" : 0.2594418179
        },
        "meters" : {
          "estimated_diameter_min" : 116.0259082094,
          "estimated_diameter_max" : 259.4418179074
        },
        "miles" : {
          "estimated_diameter_min" : 0.0720951346,
          "estimated_diameter_max" : 0.1612096218
        },
        "feet" : {
          "estimated_diameter_min" : 380.6624406898,
          "estimated_diameter_max" : 851.1870938635
        }
      },
      "is_potentially_hazardous_asteroid" : false,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-28",
        "epoch_date_close_approach" : 1488268800000,
        "relative_velocity" : {
          "kilometers_per_second" : "12.1435114023",
          "kilometers_per_hour" : "43716.6410482886",
          "miles_per_hour" : "27163.8206558102"
        },
        "miss_distance" : {
          "astronomical" : "0.2691959784",
          "lunar" : "104.7172317505",
          "kilometers" : "40271144",
          "miles" : "25023330"
        },
        "orbiting_body" : "Earth"
      } ]
    }, {
      "links" : {
        "self" : "https://api.nasa.gov/neo/rest/v1/neo/3767250?api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
      },
      "neo_reference_id" : "3767250",
      "name" : "(2017 BS31)",
      "nasa_jpl_url" : "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3767250",
      "absolute_magnitude_h" : 21.957,
      "estimated_diameter" : {
        "kilometers" : {
          "estimated_diameter_min" : 0.107933181,
          "estimated_diameter_max" : 0.2413459297
        },
        "meters" : {
          "estimated_diameter_min" : 107.9331809646,
          "estimated_diameter_max" : 241.3459296646
        },
        "miles" : {
          "estimated_diameter_min" : 0.0670665486,
          "estimated_diameter_max" : 0.1499653617
        },
        "feet" : {
          "estimated_diameter_min" : 354.1114974359,
          "estimated_diameter_max" : 791.8173798808
        }
      },
      "is_potentially_hazardous_asteroid" : true,
      "close_approach_data" : [ {
        "close_approach_date" : "2017-02-28",
        "epoch_date_close_approach" : 1488268800000,
        "relative_velocity" : {
          "kilometers_per_second" : "13.5163916162",
          "kilometers_per_hour" : "48659.009818347",
          "miles_per_hour" : "30234.8164062946"
        },
        "miss_distance" : {
          "astronomical" : "0.2027400111",
          "lunar" : "78.8658676147",
          "kilometers" : "30329474",
          "miles" : "18845862"
        },
        "orbiting_body" : "Earth"
      } ]
    } ]
  }
}
"""
