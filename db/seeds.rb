# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require_relative './comment_data.rb'
require_relative './post_data.rb'

Comment.destroy_all
Post.destroy_all

comment_data = get_comment_data()
post_data = get_post_data()

comment_data.each_pair do |post_title, comments|
  info = post_data[post_title]
  current_post = Post.create!({
    title:         info[:title],
    content:    info[:photo_url],
    author:  info[:nationality]
  })

  comments.each do |comment|
    Comment.create!({
      title:        comment[:title],
      content:        comment[:content],
      post:       current_post
    })
  end
end
