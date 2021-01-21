require 'nokogiri'
require 'open-uri'

PAGE_URL = "https://coinmarketcap.com/all/views/all/"


def page_fetcher
# Fetch and parse HTML document
doc = Nokogiri::HTML(URI.open(PAGE_URL))
return doc
end 
# Search for nodes by css


def get_names(doc)
names = doc.css('.fjclfm').map{|element| element = element.text}
return names
end 

def get_prices(doc)
prices = doc.css('.price___3rj7O').map{|element| element = element.text.delete("$").to_f}
return prices
end 

def hash_creation(names,prices)
crypto = {}
crypto = Hash[names.zip prices]
puts "the hash is served #{crypto}"
end 

def perform 
doc = page_fetcher
names = get_names (doc)
prices = get_prices (doc)
get_names(doc)
get_prices(doc)
hash_creation(names,prices)

end 

perform 