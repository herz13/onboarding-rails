class Course < ApplicationRecord
    belongs_to :university
    has_one :teacher

    validates :name, presence: true
end