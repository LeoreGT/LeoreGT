require 'open-uri'
require 'nokogiri'

# etsy_list = [
# {
#   name:  "Beach House",
#   finished: false
# },
# {
#   name: "Horse",
#   finished: false
# },
# {
#   name: "Airplane",
#   finished: false
# },
# {
#   name: "School",
#   finished: true
# }]

def collect_from_etsy(search_word)
  etsy_list = []
  html_file = open("https://www.etsy.com/search?q=#{search_word}")
  html_doc = Nokogiri::HTML(html_file)

  html_doc.search('.card-title').each do |element|
    item_name = element.text.strip[0..30]
    etsy_list << {name: item_name,finished: false}
  end
  return etsy_list
end
# p collect_from_etsy("glove")
