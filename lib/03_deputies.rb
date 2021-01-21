require 'nokogiri'
require 'open-uri'
PAGE_URL = "https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=50"

def page_fetcher 
  return page = Nokogiri::HTML(URI.open(PAGE_URL))
end
 
def get_names(page)  
  names = page.css('.titre_normal').map{|element| element = element.text}
  return names

def get_emails(page)  
  emails = page.xpath('//*[@id="content"]/div[1]/ul/li[5]/span').map{|element| element = element.text.gsub("EMAIL :", "")}
  return emails 
end

def hash_meth(names,emails)
  deputies_hash = Hash[names.zip emails]
  puts "les députés  : #{deputies_hash} "
end


def perform 

page = page_fetcher 
names = get_names(page) 
emails = get_emails(page) 

get_names(page)

end 

perform 