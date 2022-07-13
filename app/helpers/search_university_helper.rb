module SearchUniversityHelper
    BASE_URL = "http://universities.hipolabs.com"

    def self.get(name = nil, country = nil)
        if name
            response = HTTParty.get(BASE_URL + "/search?name=#{name}")

            if country
                response = HTTParty.get(BASE_URL + "/search?name=#{name}&country=#{country}")
            end

            return JSON.parse response.parsed_response.to_json, symbolize_names: true
        end

        if !name && country
            response = HTTParty.get(BASE_URL + "/search?country=#{country}")
            return JSON.parse response.parsed_response.to_json, symbolize_names: true
        end
    end
end