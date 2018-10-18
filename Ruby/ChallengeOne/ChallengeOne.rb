# Challenge One - "Carl Sagan"
# September 10th 2018
# Jon Mcintosh and Marcus Mamott


# Question 1
# Using a single puts statement build the following
# sentence using only data from the carl hash and the
# sagan array along with some string interpolation.
#
# We are a way for the cosmos to know itself.

carl  = {
          :toast => 'cosmos',
          :punctuation => [ ',', '.', '?' ],
          :words => [ 'know', 'for', 'we']
        }

sagan = [
          { :are => 'are', 'A' => 'a' },
          { 'waaaaaay' => 'way', :th3 => 'the' },
          'itself',
          { 2 => ['to']}
        ]

puts "#{carl[:words][2]} #{sagan[0][:are]} #{sagan[0]['A']} #{sagan[1]['waaaaaay']} #{carl[:words][1]} #{sagan[1][:th3]} #{carl[:toast]} #{sagan[3][2][0]} #{carl[:words][0]} #{sagan[2]}#{carl[:punctuation][1]}"


#Question 2

ghosts = [
			{:name => 'Inky', :age => 4, :loves => 'Reindeers', :bank => 25},
			{:name => 'Pinky', :age => 5, :loves => 'Garden Tools', :bank => 14},
			{:name => 'Blinky', :age => 7, :loves => 'Ninjas', :bank => 18.03},
			{:name => 'Clyde', :age => 6, :loves => 'Yarn', :bank => 0}
		 ]


#Question 3

require 'net/http'
require 'json'
require 'pp'
 
url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)

info =  JSON.parse(response)


info["message"].each do |breeds|
   dogBreed = "#{breeds[0]}"

   puts "This is a main breed #{dogBreed}"

  breeds[1].each do |subbreeds|
    puts "This is a subbreed #{subbreeds}"
  end

end


#Question 4

require 'net/http'
require 'json'
require 'pp'

url_tree = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json'
uri_tree = URI(url_tree)
response = Net::HTTP.get(uri_tree)
trees_info = JSON.parse(response).map {|tree| tree['common_name']}

ash_trees = trees_info.select {|tree| tree.include?('ash')}

puts "The number of ash trees in Winnipeg are #{ash_trees.size}."
