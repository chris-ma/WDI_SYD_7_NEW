class Song < ActiveRecord::Base

belongs_to :artist

has_many :playlists_songs
has_many :playlist, through: :playlists_songs

end
