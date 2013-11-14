# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Article.destroy_all

articles = Article.create ([
	{
		title: "My First Article",
		body: "Here is the corpus.",
		published: false
	},

	{
		title: "My Second and Better Article",
		body: "Lorem ipsum dolor sit amet.",
		published: true
	}

	])

comments = Comment.create ([
	{
		author: "Kingsley",
		body: "Hello, this is a comment",
		article: articles[0]
	},

	{
		author: "Bob",
		body: "This is a great article!",
		article: articles[0]
	},
	{
		author: "John",
		body: "This is not a great article!",
		article: articles[1]
	}

	])