require 'rails_helper'

describe 'Socrata Service' do
  it "fetches basic payment data by name input" do
    VCR.use_cassette("socrata service#get_doctor") do
      service = SocrataService.new
      doctors = service.doctors("BOBBY", "ABRAHAM")
      doctor = doctors.first

      expect(doctors.count).to eq 49
      expect(doctor[:physician_first_name]).to eq "BOBBY"
      expect(doctor[:physician_last_name]).to eq "ABRAHAM"
      expect(doctor[:physician_primary_type]).to eq "Medical Doctor"
      expect(doctor[:form_of_payment_or_transfer_of_value]).to eq "In-kind items and services"
      expect(doctor[:applicable_manufacturer_or_applicable_gpo_making_payment_name]).to eq "FOREST PHARMACEUTICALS, INC."
      expect(doctor[:recipient_city]).to eq "Tallahassee".upcase
      expect(doctor[:program_year]).to eq "2013"
      expect(doctor[:total_amount_of_payment_usdollars]).to eq "6.46"
    end
  end

 # it "fetches basic payment data by a different input" do
 #   VCR.use_cassette("socrata service#get_doctor by city") do
 #     service = SocrataService.new
 #     doctors = service.get_doctor(recipient_city: "BOSTON")
 #     doctor = doctors.first

 #     expect(doctors.count).to eq 1000
 #     expect(doctor[:recipient_city]).to eq "BOSTON"
 #     expect(doctor[:physician_first_name]).to eq "MICHAEL"
 #     expect(doctor[:physician_last_name]).to eq "SEMENOVSKI"
 #     expect(doctor[:physician_primary_type]).to eq "Medical Doctor"
 #     expect(doctor[:form_of_payment_or_transfer_of_value]).to eq "In-kind items and services"
 #     expect(doctor[:nature_of_payment_or_transfer_of_value]).to eq "Food and Beverage"
 #     expect(doctor[:applicable_manufacturer_or_applicable_gpo_making_payment_name]).to eq "Allergan Inc."
 #     expect(doctor[:program_year]).to eq "2013"
 #     expect(doctor[:total_amount_of_payment_usdollars]).to eq "24.21"
 #   end
 # end
end

#{:applicable_manufacturer_or_applicable_gpo_making_payment_country=>"United States",
# :applicable_manufacturer_or_applicable_gpo_making_payment_id=>"100000000278",
# :applicable_manufacturer_or_applicable_gpo_making_payment_name=>"Allergan Inc.",
# :applicable_manufacturer_or_applicable_gpo_making_payment_state=>"CA",
# :charity_indicator=>"No",
# :covered_recipient_type=>"Covered Recipient Physician",
# :date_of_payment=>"2013-11-14T00:00:00.000",
# :delay_in_publication_indicator=>"No",
# :dispute_status_for_publication=>"No",
# :form_of_payment_or_transfer_of_value=>"In-kind items and services",
# :name_of_associated_covered_drug_or_biological1=>"BOTOX",
# :nature_of_payment_or_transfer_of_value=>"Food and Beverage",
# :number_of_payments_included_in_total_amount=>"1",
# :payment_publication_date=>"2016-01-15T00:00:00.000",
# :physician_first_name=>"MICHAEL",
# :physician_last_name=>"SEMENOVSKI",
# :physician_license_state_code1=>"MA",
# :physician_ownership_indicator=>"No",
# :physician_primary_type=>"Medical Doctor",
# :physician_profile_id=>"124661",
# :physician_specialty=>"Allopathic & Osteopathic Physicians/ Pain Medicine/ Pain Medicine",
# :product_indicator=>"Covered",
# :program_year=>"2013",
# :recipient_city=>"BOSTON",
# :recipient_country=>"United States",
# :recipient_primary_business_street_address_line1=>"736 CAMBRIDGE ST",
# :recipient_state=>"MA",
# :recipient_zip_code=>"02135",
# :record_id=>"102593634",
# :submitting_applicable_manufacturer_or_applicable_gpo_name=>"Allergan Inc.",
# :third_party_payment_recipient_indicator=>"No Third Party Payment",
# :total_amount_of_payment_usdollars=>"24.21"}


#        "applicable_manufacturer_or_applicable_gpo_making_payment_country": "United States",
#        "applicable_manufacturer_or_applicable_gpo_making_payment_id": "100000005529",
#        "applicable_manufacturer_or_applicable_gpo_making_payment_name": "FOREST PHARMACEUTICALS, INC.",
#        "applicable_manufacturer_or_applicable_gpo_making_payment_state": "NJ",
#        "charity_indicator": "No",
#        "covered_recipient_type": "Covered Recipient Physician",
#        "date_of_payment": "2013-12-10T00:00:00.000",
#        "delay_in_publication_indicator": "No",
#        "dispute_status_for_publication": "No",
#        "form_of_payment_or_transfer_of_value": "In-kind items and services",
#         "name_of_associated_covered_drug_or_biological1": "VIIBRYD",
#        "nature_of_payment_or_transfer_of_value": "Food and Beverage",
#        "ndc_of_associated_covered_drug_or_biological1": "0456114030",
#        "number_of_payments_included_in_total_amount": "1",
#        "payment_publication_date": "2016-01-15T00:00:00.000",
#        "physician_first_name": "BOBBY",
#        "physician_last_name": "ABRAHAM",
#        "physician_license_state_code1": "FL",
#        "physician_ownership_indicator": "No",
#       "physician_primary_type": "Medical Doctor",
#        "physician_profile_id": "211373",
#        "physician_specialty": "Allopathic & Osteopathic Physicians/ Internal Medicine",
#        "product_indicator": "Covered",
#        "program_year": "2013",
#        "recipient_city": "TALLAHASSEE",
#        "recipient_country": "United States",
#        "recipient_primary_business_street_address_line1": "3900 ESPLANADE WAY",
#        "recipient_state": "FL",
#       "recipient_zip_code": "32311",
#        "record_id": "100239864",
#        "submitting_applicable_manufacturer_or_applicable_gpo_name": "Forest Laboratories, Inc.",
#        "third_party_payment_recipient_indicator": "No Third Party Payment",
#        "total_amount_of_payment_usdollars": "6.46"
#
