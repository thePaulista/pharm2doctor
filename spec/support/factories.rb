#FactoryGirl.define do
#  factory :doctor do |n|
#    sequence(:first_name) {|n| "John#{n}" }
#    sequence(:last_name) {|n| "Smith#{n}" }
#    sequence(:address) { "123 Main St." }
#    sequence(:city) { "Miami" }
#    sequence(:state) { "FL" }
#    sequence(:md_specialty) { "Endocrinology" }
#    sequence(:nature_of_payment) { "Research" }
#    sequence(:form_of_payment) { "Meal" }
#    sequence(:pharma_name) { "Pfizer" }
#    sequence(:year) { 2013 }
#    sequence(:total_amount) {|n| "10" + n }
#  end
#end
