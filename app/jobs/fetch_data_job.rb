class FetchDataJob < ApplicationJob
  # repeat 'every day at 8am'

  def self.perform(*args)
    base_url = "http://universities.hipolabs.com"
    
    response = HTTParty.get(base_url + "/search?country")
    new_array = []
    parsed_response = JSON.parse response.parsed_response.to_json, symbolize_names: true

    parsed_response.each do |obj|
      new_array << {name: obj[:name], country: obj[:country], alpha_two_code: obj[:alpha_two_code]}
    end 

    puts new_array

    x = 0
 
    new_array.each do |new_array|
      x = x + 1
      location = Location.create(country: new_array[:country], alpha_two_code: new_array[:alpha_two_code])
      university = University.create(name: new_array[:name])
    end

    university = University.all
    puts university
  end
end
