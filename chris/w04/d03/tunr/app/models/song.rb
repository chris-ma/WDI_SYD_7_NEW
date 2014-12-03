class Song < ActiveRecord::Base

has_many :playlists_songs
has_many :playlist, through: :playlists_songs

end
