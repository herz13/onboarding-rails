class University < ApplicationRecord
    belongs_to :location
    has_many :courses
    has_and_belongs_to_many :students

    validates :name, presence: true

    def self.search(search)
        if search.present?
          University.where('name LIKE ?', "%#{search}%")
        end
    end    
end
