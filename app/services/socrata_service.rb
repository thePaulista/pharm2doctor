class SocrataService

  def initialize
    @conn = Faraday.new(url: "https://openpaymentsdata.cms.gov" )
   # conn.params[:app_token] = ENV["socrata_app_token"]
  end

  def get_doctor(params)
    conn.get("resource/anxy-rykp.json", params)
  end

  private

  def conn
    @conn
  end

  def parse(response)
    JSON.parse(respone.body, symbolize_names: :true)
  end

end
