require 'rails_helper'

feature 'User can view doctor by first name' do
  scenario 'successfully' do
    visit search_path

    fill_in "First Name", with: "John"
    click_button "Search"

    within("h3") do
      expect(page).to have_content("Search Results")
    end

    expect(Doctor.count).to eq "10"
    expect(Doctor.first.first_name).to eq "John"
    expect(Doctor.first.first_name).to eq "Smith"

  end
end
