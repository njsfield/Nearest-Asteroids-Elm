module Data exposing (neoKeys, buildNasaUrl)


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


apiKey : String
apiKey =
    "3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"


nasaUrl : String
nasaUrl =
    "https://api.nasa.gov/neo/rest/v1/feed?start_date="


buildNasaUrl : String -> String
buildNasaUrl date =
    nasaUrl ++ date ++ "&api_key=" ++ apiKey
