require 'rails_helper'

xfeature 'User can view doctor by first name' do
  scenario 'successfully' do
    doc1 = Doctor.create!(first_name: "John", last_name: "Smith")
    doc2 = Doctor.create!(first_name: "John", last_name: "Smith")
    doc2 = Doctor.create!(first_name: "Jane", last_name: "Smith")

    visit search_path

    fill_in "First Name", with: "John"
    fill_in "Last Name", with: "Smith"
    click_button "Search"

    within("h3") do
      expect(page).to have_content("Search Results")
    end

    expect(doctor.count).to eq "2"
    expect(doctor.first.first_name).to eq "John"
    expect(doctor.first.last_name).to eq "Smith"
  end
end
