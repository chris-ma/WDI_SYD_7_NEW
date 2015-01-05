require 'rails_helper'

feature "ReaderReadsABlogPosts", :type => :feature do
	scenario "does exist without comments" do
		Post.create(
			title: "Hello World",
			author: "Jane Burken",
			content: "Lorem Ipsum dolar sit amet."
			)
		visit '/'
		click_link('Hello World')
		expect(page).to have_content("Hello World")
		expect(page).to have_content("Jane Burken")
		expect(page).to have_content("Lorem Ipsum dolar sit amet.")
	end

	scenario "does exist with comments" do
		@post = Post.create(
			title: "Hello World",
			author: "Jane Birkin",
			content: "Lorem Ipsum dolar sit amet."
			)
		@post.comments.create(
			author: "Jack Sparrow",
			content: "ArrgHh!",
			post_id: 1
			)	
		
		visit '/'
		click_link("Hello World")		
		expect(page).to have_content("Hello World")
		expect(page).to have_content("Jane Birkin")
		
	end
end
