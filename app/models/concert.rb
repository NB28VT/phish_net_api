class Concert < ActiveRecord::Base
  has_many :concert_songs
  has_many :songs, through: :concert_songs

  validates :venue, presence: true
  validates :month, presence: true
  validates :date, presence: true
  validates :year, presence: true

end