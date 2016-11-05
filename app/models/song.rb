class Song < ActiveRecord::Base
  has_many :concert_songs
  has_many :concerts, through: :concert_songs

  validates :name, presence: true

  def times_played
    self.concert_songs.count
  end

end