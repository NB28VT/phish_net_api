require "rails_helper"

RSpec.describe Song, :type => :model do
  subject { build :song }

  it "gets created with a name" do
    expect(subject).to be_valid
  end

  it "Does not get created without a name" do
    song = build :song, name: nil
    expect(song).to_not be_valid
  end

  it "Reports the number of concerts its was played at" do
    song = Song.create(name: "The Mango Song")
    song.concerts.create(
      venue: "Saratoga Springs Performing Arts Center",
      month: "7",
      date: "5",
      year: "2013"
    )

    expect(song.times_played).to eq(1)
  end

end