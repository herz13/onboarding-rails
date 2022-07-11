module SearchUniversityHelper
    def self.get(name = nil, country = nil)
        if name
            response = HTTParty.get("http://universities.hipolabs.com/search?name=#{name}")

            if country
                response = HTTParty.get("http://universities.hipolabs.com/search?name=#{name}&country=#{country}"
            end

            return JSON.parse response.parsed_response.to_json, symbolize_names: true
        end

        if !name && country
            response = HTTParty.get("http://universities.hipolabs.com/search?country=#{country}")
            return JSON.parse response.parsed_response.to_json, symbolize_names: true
        end
    end
end