# This is an RSS Feed in a terminal

require 'feedjira'
require 'open-uri'
require 'httparty'

default_url = "https://techcrunch.com/feed/"

puts "Enter the URL of the RSS feed you want to read (or press Enter to use the default URL)"
user_url = gets.chomp # gets input without the '\n' escape character

# Use the user URL if the input is not empty
url = user_url.empty? ? default_url : user_url

# Block for handling exceptions or error handling
begin

  # Parse the RSS feed
  #Parse => Get infomation from 
  xml = HTTParty.get(url).body
  feed = Feedjira.parse(xml)
  
  # Presentation of the information
  puts "Feed Title: \n#{feed.title}"
  puts
  puts "Feed Description: \n#{feed.description}"
  puts "--------------------"
  puts
  # Loop through the entry in the RSS feeed and assign it to the entry block to represent each member of the entry 
  feed.entries.each do |entry|
    puts "Published: #{entry.published} --- Title: #{entry.title}"
    puts "---------------------------------------------------------------"
    puts "Description: \n#{entry.summary}"
    puts "---------------------------------------------------------------"
    puts "Link: \n#{entry.url}"
    puts "--------------------"
  end

# In case there's any error
rescue StandardError => e
  # Handles the errors during parsing
  puts "Error: #{e.message}"
end

