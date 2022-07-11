class University < ApplicationRecord
    has_many :courses
    belongs_to :locations
end
