# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# :category, :name, :picture, :url

resources = [
{ :name => "Khan Academy", :category => "Math", :picture => "https://twimg0-a.akamaihd.net/profile_images/1128226758/twitterlogo.png", :url => "https://www.khanacademy.org/"},
{ :name => "Codecademy", :category => "Programming", :picture => "http://cdn.appstorm.net/web.appstorm.net/files/2011/10/codecademy_logo.png", :url => "http://www.codecademy.com/"},
{ :name => "Coursera", :category => "Math", :picture => "http://3.bp.blogspot.com/-5Nn69pd4nTk/UHBWmqWtm0I/AAAAAAAABv8/RAlPsY3OPVY/s1600/coursera+logo.jpeg", :url => "https://www.coursera.org"},
{ :name => "Academic Earth", :category => "Math", :picture => "http://edtech.michaeldflint.com/wp-content/uploads/2012/01/Academic_Earth.gif", :url => "http://www.academicearth.org/"},
{ :name => "MIT Open Courseware", :category => "Math", :picture => "http://www.openculture.com/wp-content/uploads/2011/02/MITOCW.png", :url => "http://ocw.mit.edu/"}
]

Resource.destroy_all
resources.each do |resource_hash|
  r = Resource.new
  r.name = resource_hash[:name]
  r.category = resource_hash[:category]
  r.picture = resource_hash[:picture]
  r.url = resource_hash[:url]
  r.save
end

# :name, :resource_id

categories = [
{ :name => "Math", :resource_id => nil },
{ :name => "Programming", :resource_id => nil },
{ :name => "Business", :resource_id => nil },
{ :name => "Economics", :resource_id => nil },
]

Category.destroy_all
categories.each do |category_hash|
  c = Category.new
  c.name = category_hash[:name]
  c.resource_id = category_has[:resource_id]
  c.save
end

# :description, :pic_url, :username, :website_url

users = [
{ :username => "Michael Mahaffey", :pic_url => "http://photos3.meetupstatic.com/photos/member/1/3/b/2/member_88805042.jpeg", :website_url => "www.michaelmahaffey.com", :description => "Name: Michael. Alias: Mayhaffs. Academics: Political Science. Mizzou. Aspirations: Web Developer, Trend Forecaster, Life-Hacker, Entrepreneur, World-Citizen." },

{ username: "Ruth C Eason", pic_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS_J_BaQdrfzCASuO_-uG4m8ymkx9XpHsMZj3thbDxwQwZAY8Oj", website_url: "http://ruthceason.wordpress.com/", description: "I have created this blog for other curious questioners who desire to speculate on meaning, purpose, and spirituality. Although I do not hold a degree in philosophy or theology, I have lived a long life full over experience and read countless books on philosophy, religion, and the meaning of life." },

{ :username => "Ruth C. Eason", :pic_url => "http://i0.kym-cdn.com/photos/images/original/000/128/847/400x.jpg?1306898671", :website_url => "http://knowyourmeme.com/memes/good-guy-greg", :description => "My name is Greg. People say I'm a good guy." }
]

User.destroy_all
users.each do |user_hash|
  u = User.new
  u.username = user_hash[:username]
  u.pic_url = user_hash[:pic_url]
  u.website_url = user_hash[:website_url]
  u.description = user_hash[:description]
  u.save
end
