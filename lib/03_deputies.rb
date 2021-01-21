require 'nokogiri'
require 'open-uri'
PAGE_URL = "https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=50"

def page_maker 
  return page = Nokogiri::HTML(URI.open(PAGE_URL))
end
 
def get_names (page)  
  names = page.xpath('//*[@class="cmc-table-row"]//td[3]/div').map{|element| element = element.text}
  return names

def get_emails (page)  
  email = page.xpath('//*[@class="cmc-table-row"]//td[5]/div').map{|element| element.text.delete("$").to_f}
  return names
end

def hash_together (crypto_symbols,crypto_prices)
  deputies_hash = Hash[crypto_symbols.zip crypto_prices]
  puts "les députés  : #{deputies_hash}"
end


