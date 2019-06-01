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
  # location: project.css(".location-name").text
  # percent_funded: project.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i

  # project = kickstarter.css("li.project.grid_4")
  # title = project.css("h2.bbcard_name strong a").text
  # loc = project.css(".location-name").text
  # fund = project.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i

  projects = {}
 
  # Iterate through the projects
  kickstarter.css("li.project.grid_4").each do |project|
    projects[project] = {}
  end
 
  # return the projects hash
  projects
end



puts create_project_hash