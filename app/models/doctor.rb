class Doctor < OpenStruct
  def self.service
    @service ||= SocrataService.new
  end

  def self.find_by(params)
    service.doctors(params).map { |doctor| Doctor.new(doctor) }
  end
end
