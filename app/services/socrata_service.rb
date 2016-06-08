class SocrataService

  def initialize
    @conn = Faraday.new(url: "https://openpaymentsdata.cms.gov" )
    conn.headers["X-App_Token"] = ENV["socrata_app_token"]
  end

  def get_doctor(params)
   x =  parse(conn.get("resource/anxy-rykp.json", params))
  end

  private

  def conn
    @conn
  end

  def parse(response)
    JSON.parse(response.body, symbolize_names: :true)
  end

end
