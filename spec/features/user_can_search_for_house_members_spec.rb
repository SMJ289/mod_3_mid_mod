require 'rails_helper'

RSpec.describe "As a user" do
  it 'I can select Gryffindor from the dropdown menu at the root directory' do
    visit '/'

    select "Gryffindor", from: :house

    click_on "Search For Members"

    expect(current_path).to eq('/search')
  end
end