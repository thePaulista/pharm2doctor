require 'rails_helper'

describe 'Socrata Service' do
  it "fetches basic payment data by specific input" do
  VCR.use_cassette("socrata service#get_doctor") do
    service = SocrataService.new
    doctors = service.get_doctor(name: "Jennifer")

    doctor = doctors.last
  end
  end
end
