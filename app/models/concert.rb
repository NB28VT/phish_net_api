class Concert < ActiveRecord::Base
  has_many :concert_songs
  has_many :songs, through: :concert_songs
end