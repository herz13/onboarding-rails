class Location < ApplicationRecord
    has_many :universities

    validates :country, presence: true
end
