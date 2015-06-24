# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.all.delete_all
Post.create([
	{

		title: 			"Woohoo for Steer!",	
		body: 			"I love Steer! I just think it's really great. I can't believe how much I love it. 
						I really love it! I love Steer! I just think it's really great. I can't believe how much I love it. 
						I really love it! I love Steer! I just think it's really great. I can't believe how much I love it. 
						I really love it! I love Steer! I just think it's really great. I can't believe how much I love it. 
						I really love it! I love Steer! I just think it's really great. I can't believe how much I love it. 
						I really love it! I love Steer! I just think it's really great. I can't believe how much I love it. 
						I really love it!",
		publication: 	"The Steer Blog",
		author: 		"Katie Grogan",
		pull_quote: 	"dolor sit...",
		published_at:  	1.week.ago,
		url: 			"http://www.steer.me/blog"

	}, 
	{
		title: 			"Hello World",	
		body: 			"Lorem ipsum",
		publication: 	"The Steer Blog",
		author: 		"Katie Grogan",
		pull_quote: 	"dolor sit...",
		published_at:   2.weeks.ago
	}, 
	{
		title: 			"Hello World",	
		body: 			"Lorem ipsum",
		publication: 	"The Steer Blog",
		author: 		"Katie Grogan",
		pull_quote: 	"dolor sit...",
		published_at:   3.hours.ago

	}

])