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



puts "✅ Done seeding!"
