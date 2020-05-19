class SearchController < ApplicationController
  def index
    house = params[:house]
    
    response = conn.get('https://www.potterapi.com/v1/characters/?key=$2a$10$A7Mo98EdH1RhntinPC12duKbhkP/yTdwlA8OXqFMpLcInDkJKWvnW&house=Gryffindor')
    binding.pry
  end
end