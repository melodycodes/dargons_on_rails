require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'yaml'

page = Nokogiri::HTML(open("http://www.13thagesrd.com/classes"))
# puts page.css('tr')
class_table = page.at('a[@name=\'TOC-Starting-Stats-for-1st-Level-Characters\']').parent.next_element
classes = Hash.new()
yaml_str = ""
class_table.css('tr').each do |row|
  next if row.css('th').size > 0
  classes['type'] = row.css('td')[0].text
  classes['base_hp'] = row.css('td')[1].text
  classes['base_ac'] = row.css('td')[2].text
  classes['base_pd'] = row.css('td')[3].text
  classes['base_md'] = row.css('td')[4].text
  classes['background_pt'] = row.css('td')[5].text
  classes['recovery_dice'] = row.css('td')[6].text
  # puts "--- !ruby/object:CharacterClass"
  yaml_str <<  classes.to_yaml.gsub('---','--- !ruby/object:YAML::CharacterClass')
end
File.open("character_class.yaml","w") do |f|
  f.puts yaml_str
end

puts "Character Class scraper finished! Check yo' character_class.yaml file"
