module Helpers.NasaData exposing (neoKeys, buildNasaUrl)

-- neoKeys: matched JSON keys for shorthand purposes, used in Update


neoKeys =
    { name = "name"
    , neo = "near_earth_objects"
    , closedate = "close_approach_data"
    , estdiam = "estimated_diameter"
    , estdiammin = "estimated_diameter_min"
    , rvel = "relative_velocity"
    , kph = "kilometers_per_hour"
    , miss = "miss_distance"
    , k = "kilometers"
    }



-- apiKey: Appended to the naseUrl


apiKey : String
apiKey =
    "3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"



-- naseUrl


nasaUrl : String
nasaUrl =
    "https://api.nasa.gov/neo/rest/v1/feed?start_date="



-- nasaUrl (Fail)


nasaUrlFail : String
nasaUrlFail =
    "fail"



-- buildNasaUrl: takes a formatted date ("YYYY-MM-DD") and returns a Url


buildNasaUrl : String -> String
buildNasaUrl date =
    nasaUrlFail ++ date ++ "&api_key=" ++ apiKey
