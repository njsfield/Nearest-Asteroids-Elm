module Data exposing (neoKeys, buildNasaUrl)

-- neoKeys: JSON Access Keys.


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



-- apikey: Limited to 1000 searches per day.


apiKey : String
apiKey =
    "3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"



-- nasaUrl: API allows for start date query.


nasaUrl : String
nasaUrl =
    "https://api.nasa.gov/neo/rest/v1/feed?start_date="



-- buildNasaUrl: Called at runtime by Update.


buildNasaUrl : String -> String
buildNasaUrl date =
    nasaUrl ++ date ++ "&api_key=" ++ apiKey
