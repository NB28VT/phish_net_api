require "rails_helper"

RSpec.describe "Concert", :type => :model do
  it "gets created with a date and a venue" do
    concert = Concert.create(
      venue: "Saratoga Springs Performing Arts Center",
      month: "7",
      date: "5",
      year: "2013"
    )

    expect(concert).to be_valid
  end

end