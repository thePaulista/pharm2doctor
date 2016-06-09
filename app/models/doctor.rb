class Doctor
  attr_reader :first_name,
              :last_name,
              :address,
              :city,
              :state,
              :md_specialty,
              :nature_of_payment,
              :form_of_payment,
              :pharma_name,
              :year,
              :total_amount

  def initialize(data)
    @first_name        = data[:physician_first_name]
    @last_name         = data[:physician_last_name]
    @address           = data[:recipient_primary_business_street_address_line1]
    @city              = data[:recipient_city]
    @state             = data[:recipient_state]
    @md_specialty      = data[:physician_specialty]
    @nature_of_payment = data[:form_of_payment_or_transfer_of_value]
    @form_of_payment   = data[:nature_of_payment_or_transfer_of_value]
    @pharma_name       = data[:applicable_manufacturer_or_applicable_gpo_making_payment_name]
    @year              = data[:program_year]
    @total_amount      = data[:total_amount_of_payment_usdollars]
  end

  def self.service
    @service ||= SocrataService.new
  end

  def self.find_by(first_name, last_name)
    service.doctors(first_name, last_name).map { |doctor| Doctor.new(doctor) }
  end
end
