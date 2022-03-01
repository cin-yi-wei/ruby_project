require 'open-uri'
require 'nokogiri'
require 'json'
json = Nokogiri::HTML(URI.open('https://tcgbusfs.blob.core.windows.net/dotapp/youbike/v2/youbike_immediate.json'), nil, 'utf-8')
json = JSON.parse(json)
json.each{ |x|
  p x["sna"]
}
