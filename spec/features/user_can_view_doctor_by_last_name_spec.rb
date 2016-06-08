require 'rails_helper'

feature 'User can view doctor by first name' do
  scenario 'successfully' do
    doc1, doc2, doc3 = create_list(:doctor, 3)

    visit search_path

    fill_in "First Name", with: "John"
    fill_in "Last Name", with: ""
    click_button "Search"

    within("h3") do
      expect(page).to have_content("Search Results")
    end

    expect(doctor.count).to eq "2"
    expect(doctor.first.first_name).to eq "John"
    expect(doctor.first.last_name).to eq "Smith"

  end
end
