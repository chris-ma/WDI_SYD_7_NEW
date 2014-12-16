




require 'rails_helper'

feature "AddingASongToAPlaylist", :type => :feature do
  scenario "valid input" do

    list = Playlist.create(
        playlist: "Twerk tunes"
    )
    song = Song.create(
      name: "Wrecking Ball"
    )
    user = User.create(
      email: "info@example.com",
      password: "password",
      admin: true
    )
    
    log_in "info@example.com", "password"

    visit playlist_path(playlist)

    click_link list.playlist
    click_button "Add songs"
    fill "Search", with: song.name
    click_button "Search"

    check song.name
    click_button "Add to #{playlist}"

    expect(page).to have_content(song.name)
  end
end