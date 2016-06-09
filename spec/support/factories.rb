FactoryGirl.define do
  factory :doctor do |n|
    sequence(:first_name) {|n| "John#{n}" }
    sequence(:last_name) {|n| "Smith#{n}" }
    sequence(:address) { "123 Main St." }
    sequence(:city) { "Miami" }
    sequence(:state) { "FL" }
    sequence(:hospital_affiliation) { "Memorial Hospital" }
    sequence(:company) {|n| "Pharma #{n}" }
    sequence(:payment) {|n| "10" + n }
  end
end
