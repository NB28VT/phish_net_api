require "rails_helper"

RSpec.describe "Concert", :type => :model do
  it "gets created with a date and a venue" do
    concert = FactoryGirl.build(:concert)
    expect(concert).to be_valid
  end

  it "does not get created without a venue" do
    concert = FactoryGirl.build(:concert, venue: nil)
    expect(concert).to_not be_valid
  end

  it "does not get created without a month" do
    concert = FactoryGirl.build(:concert, month: nil)
    expect(concert).to_not be_valid
  end

  it "does not get created without a date" do
    concert = FactoryGirl.build(:concert, date: nil)
    expect(concert).to_not be_valid
  end

  it "does not get created without a year" do
    concert = FactoryGirl.build(:concert, year: nil)
    expect(concert).to_not be_valid
  end

  it "returns a list of songs for that show" do
    concert = FactoryGirl.create(:concert)
    song = FactoryGirl.build(:song)
    concert.songs.create(song)
    expect(concert.songs.count).to_eq(1)
  end

end