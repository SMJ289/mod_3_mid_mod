class SearchController < ApplicationController
  def index
    house = params[:house]

    conn = Faraday.new(url: 'https://www.potterapi.com/v1/')

    response = conn.get("characters/?key=#{ENV['KEY']}&house=#{house}")
    json = JSON.parse(response.body, symbolize_names: true)
    @order_of_phoenix_members = json.map do |data|
      Member.new(data)
    end
  end
end