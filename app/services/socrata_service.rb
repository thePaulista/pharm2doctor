class SocrataService

  def initialize
    @conn = Faraday.new(url: "https://openpaymentsdata.cms.gov" )
    conn.headers["X-App_Token"] = ENV["socrata_app_token"]
  end

  def get_doctor(first_name, last_name)
    @conn.get do |req|
      req.url("resource/anxy-rykp.json")
      req.params["physician_first_name"] = first_name
      req.params["physician_last_name"] = last_name
    #conn.get("resource/anxy-rykp.json", first_name, last_name)
    end
  end

  def doctors(first_name, last_name)
    parse(get_doctor(first_name, last_name))
  end

  private

  def conn
    @conn
  end

  def parse(response)
    JSON.parse(response.body, symbolize_names: :true)
  end
end
