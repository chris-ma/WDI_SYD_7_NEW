
# rails g Artist controller
# create the controller method of new, show, edit, update
# create new, edit, update, show view for Artist
# generate Artist model 
# generate Song model
# create the input values
# gem install devise and log ins
# create show page with details
# create edit page with first_name and last_name field and update button



require 'rails_helper'

feature "EditingAnArtist", :type => :feature do
  scenario "valid input" do

    artist = Artist.create(
      first_name: "Miley",
      last_name: "Cyrus"
    )
    
    song = Song.create(
      name: "Wrecking Ball"
    )
    user = User.create(
      email: "info@example.com",
      password: "password",
      admin: true
    )
    
    log_in "info@fluffyjack.com", "password"

    visit artist_path(artist)

    click_link 'edit'
    fill "First name", with: "Mylie"
    fill "last name", with: "Serious"
    click_button "Update"


    expect(page).to have_content("Mylie Serious")
  end
end