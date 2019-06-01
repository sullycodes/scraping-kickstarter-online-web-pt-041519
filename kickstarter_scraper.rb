require 'nokogiri'
require 'pry'

def create_project_hash

  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  # title = kickstarter.css("li.project.grid_4").first.css(".project-card-wrap").css(".project-card").css("h2.bbcard_name").text
  # print title.gsub!(/\s+/, " ")
  # projects: kickstarter.css("li.project.grid_4")
  # title: project.css("h2.bbcard_name strong a").text
  # image link: project.css("div.project-thumbnail a img").attribute("src").value
  # description: project.css("p.bbcard_blurb").text
  project = kickstarter.css("li.project.grid_4")
  title = project.css("h2.bbcard_name strong a").text
  loc = project.css(".location-name").text

  p loc
end

create_project_hash