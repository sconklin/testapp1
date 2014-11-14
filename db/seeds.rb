# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.delete_all
Article.create(title: 'Title00000000', text: 'text 00000000', color: 0)
Article.create(title: 'Title00000001', text: 'text 00000001', color: 1)
Article.create(title: 'Title00000002', text: 'text 00000002', color: 2)
