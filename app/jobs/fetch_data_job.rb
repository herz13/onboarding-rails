class FetchDataJob < ApplicationJob
  # repeat 'every day at 8am'

  def self.perform(*args)
    base_url = "http://universities.hipolabs.com"
    
    response = HTTParty.get(base_url + "/search?country")
    parsed_response = JSON.parse response.parsed_response.to_json, symbolize_names: true

    new_array = []
    locations = { }
    parsed_response.each do |obj|
      
      unless locations[name].present?
        location = Location.new(...)
        locations << { location.name => location.id }
      end

      # save location and get id, or get id if exists
      new_array << { name: obj[:name], country: obj[:country], alpha_two_code: obj[:alpha_two_code], location_id: locations[obj[:location_name]] }
    end 

    puts new_array
 
    new_array.each do |new_array|
      location = Location.create(country: new_array[:country], alpha_two_code: new_array[:alpha_two_code])
      university = University.create(name: new_array[:name])
    end

    university = University.all
    puts university
  end
end
