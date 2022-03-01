require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(URI.open('https://www.tenlong.com.tw/zh_tw/recent_bestselling?range=7'))
doc.css(".single-book > .title > a").each{ |title|
  print title.content
  title.parent.parent.css(".pricing > del").each{ |price|
    puts price.content
  }
}
