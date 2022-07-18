class FetchDataJob < ApplicationJob
  # repeat 'every day at 8am'

  def self.perform(*args)
    base_url = "http://universities.hipolabs.com"
    
    response = HTTParty.get(base_url + "/search?country")
    locations = { }
    new_array = []
    parsed_response = JSON.parse response.parsed_response.to_json, symbolize_names: true

    parsed_response.each do |obj|

      unless locations[obj[:country]].present?
        location = Location.create(country: obj[:country], alpha_two_code: obj[:alpha_two_code])
        locations[location.country] = location.id
      end

      new_array << {name: obj[:name], country: obj[:country], alpha_two_code: obj[:alpha_two_code]}
    end
 
    new_array.each do |obj|
      university = University.create(name: obj[:name], location_id: locations[obj[:country]])
    end
  end
end
