class Playlist < ActiveRecord::Base

has_many :playlists_songs
has_many :songs, through: :playlists_songs

end
