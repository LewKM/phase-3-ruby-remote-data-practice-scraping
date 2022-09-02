require 'nokogiri'
require 'open-uri'

# html = open("https://flatironschool.com/")

html = open("https://flatironschool.com/our-courses/")
# Nokogiri::HTML(html)

doc = Nokogiri::HTML(html)
puts doc.css(".heading-35-semibold.color-red.mb-20").text.strip


courses = doc.css(".heading-60-black.color-black.mb-20")
courses.each do |course|
    puts course.text.strip
end