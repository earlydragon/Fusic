require 'nokogiri'
require 'open-uri'

class Scraper
  def initialize
    html = open("http://www.billboard.com/articles/list/5915801/top-20-happy-songs-of-all-time")
    @nokogiri1 = Nokogiri::HTML(html)
    html_1 = open("http://www.billboard.com/articles/list/506152/top-30-breakup-songs-heartbreak-hits")
    @nokogiri2 = Nokogiri::HTML(html_1)
    html_3= open("http://www.leanitup.com/40-best-pump-songs-feel-like-boss-crush-workout-music/")
    @nokogiri3 = Nokogiri::HTML(html_3)


  end

  def happy_title
    @happy_title = @nokogiri1.css(".field-name-field-list h3")
  end

  def sad_title
    @sad_title = @nokogiri2.css(".field-name-field-list h3")
  end

  def hype_title
    @hype_title = @nokogiri3.css("h4")
  end
end

 #html_2 = open("http://musicloudsounds.blogspot.com/2012/12/10-angriest-songs-of-all-time.html")

 #nokogiri = Nokogiri::HTML(html_2)

 #angry_title = nokogiri.css("MsoNormal").text


# html_3 = open("http://www.ryot.org/scientists-create-relaxing-song-world/375837")

# nokogiri = Nokogiri::HTML(html_3)

# unstressed_title = nokogiri.css("entry-content h3").text

