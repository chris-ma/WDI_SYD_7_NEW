class Playlist < ActiveRecord::Base

belongs_to :user
has_many :playlists_songs
has_many :songs, through: :playlists_songs

end
