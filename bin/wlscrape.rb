#!/usr/bin/env ruby
#

require 'mechanize'

TEST = ARGV.delete("--test")

SEARCH = ARGV.pop

URL_PREFIX="http://search.wikileaks.org/?q="

#OUTPUT_FILE = # tempfile unless other wise specified

agent = Mechanize.new { |agent| agent.user_agent_alias = "Mac Safari" }

url = URL_PREFIX + SEARCH

html = agent.get(url).body

require 'nokogiri'

html_doc = Nokogiri::HTML(html)

mda = html_doc.xpath("//span[@class='meta_details']/a")

mda.each { |a| 
  puts a['href']
}
