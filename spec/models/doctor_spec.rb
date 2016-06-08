require 'rails_helper'

describe "Doctor" do
  it "finds by first name" do
    VCR.use_cassette("doctor#find_by") do
      doctors = Doctor.find_by(physician_first_name: "Bridget")
      doctor = doctors.first

      expect(doctors.count).to eq 29
      expect(doctor.first_name).to eq "Bridget"
      expect(doctor.last_name).to eq "King"
      expect(doctor.md_specialty).to eq "Allopathic & Osteopathic Physicians/ Family Medicine"
      expect(doctor.nature_of_payment).to eq "In-kind items and services"
      expect(doctor.state).to eq "NC"
      expect(doctor.address).to eq "257 Biltmore Ave."
      expect(doctor.amount).to eq "118.61"
      expect(doctor.year).to eq "20113"
    end
  end
end

#Doctor:0x007fcbf8a88f88
#@address="257 Biltmore Ave",
#  @city="Asheville",
#  @first_name="Bridget",
#  @form_of_payment="Food and Beverage",
#  @last_name="King",
#  @md_specialty="Allopathic & Osteopathic Physicians/ Family Medicine",
#  @nature_of_payment="In-kind items and services",
#  @pharma_name="AstraZeneca Pharmaceuticals LP",
#  @state="NC",
#  @total_amount="118.61",
#  @year="2013">
