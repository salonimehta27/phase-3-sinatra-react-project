require 'pry'
require 'rest-client'
require 'json'
# require 'awesome_print'
puts "🌱 Seeding spices..."

# Seed your database here
# example for the seeding database using an API
#response= RestClient.get "whatever the url is goes here"
# variable_for_the_response=JSON.parse(response)
# once we get the response in JSON we can work with our json data 
# for eg we can do variable_for_the_response["some_attribute"]
# to get the value of that attribute from the json hash
# we can also get the keys using variable_for_the_response.keys
# so our example is as follows let's say we want to get certain values of an hash
# defined by the different paths

# spells=["acid-arrow","animal-messenger","calm-emotions","charm-person"]

# spells.each do |spell|
#     response= RestClient.get("https://www.dnd5eapi.co/api/spells/#{spell}")

#     spell_hash= JSON.parse(response)

#     Spell.create(
#         name: spell_hash["name"],
#         level: spell_hash["level"]
#         description: spell_hash["desc"][0]
#     )
# end

# for netflix clone 
# we would need different links for api links in our database seeding
#may be with different tables and models for each category


# let's get all the urls that we will need 
API_KEY = "506645bab34cd2a4042367f7587d92a2"
baseURL = "https://api.themoviedb.org/3"
base_image_Url = "https://image.tmdb.org/t/p/original/"
requests = {
    fetchTrending: "/trending/all/week?api_key=#{API_KEY}&language=en-us",
    fetchNetflixOriginals: "/discover/tv?api_key=#{API_KEY}&with_network=213",
    fetchTopRated: "/movie/top_rated?api_key=#{API_KEY}&language=en-US&page=1",
    fetchActionMovies: "/discover/movie?api_key=#{API_KEY}&with_genres=28",
    fetchComedyMovies: "/discover/movie?api_key=#{API_KEY}&with_genres=35",
    fetchHorrorMovies: "/discover/movie?api_key=#{API_KEY}&with_genres=27",
    fetchRomanceMovies: "/discover/movie?api_key=#{API_KEY}&with_genres=10749",
    fetchDocumentaries: "/discover/movie?api_key=#{API_KEY}&with_genres=99",
}
# binding.pry


response_netflix_originals=RestClient.get "#{baseURL}#{requests[:fetchNetflixOriginals]}"
netflix_originals_hash=JSON.parse(response_netflix_originals)
get_netflix_results = netflix_originals_hash.map do |key,value|
                        if(key=="results")
                            value
                        end
                    end
get_netflix_originals_data=get_netflix_results[1]
get_netflix_originals_data.each do |mov|
    NetflixOriginal.create(
        poster_path:mov["poster_path"],
        backdrop_path:mov["backdrop_path"],
        overview:mov["overview"],
        original_name:mov["original_name"],
        name:mov["name"]
    )
end
puts "✅ Done seeding!"
