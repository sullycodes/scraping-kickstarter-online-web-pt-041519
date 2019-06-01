require 'nokogiri'
require 'pry'

def create_project_hash

  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  # title = kickstarter.css("li.project.grid_4").first.css(".project-card-wrap").css(".project-card").css("h2.bbcard_name").text
  # print title.gsub!(/\s+/, " ")
  project = kickstarter.css("li.project.grid_4")
  title = project.css("h2.bbcard_name strong a").text
  p title.split("------")
end

create_project_hash