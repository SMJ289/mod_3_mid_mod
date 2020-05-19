require 'rails_helper'

RSpec.describe "As a user" do
  it 'I can select Gryffindor from the dropdown menu at the root directory' do
    visit '/'

    select "Gryffindor", from: :house

    click_on "Search For Members"

    expect(current_path).to eq('/search')
  end

  it 'I click search for members and see the total number of the order of the phoenix members that belong to Gryffindor' do
    visit '/'

    select "Gryffindor", from: :house

    click_on "Search For Members"

    expect(page).to have_css(".member", count: 21)
  end
end