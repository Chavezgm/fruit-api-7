class FruityViceService 
  
  def get_fruit_by_name(fruit_name)
    get_url("https://www.fruityvice.com/api/fruit/#{fruit_name}")
  end
  
  def conn 
    conn = Faraday.new("https://www.fruityvice.com/api") do |faraday|
      faraday.headers['Accept'] = 'application/json'
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end