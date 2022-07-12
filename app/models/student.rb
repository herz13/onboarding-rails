class Student < ApplicationRecord
    has_and_belongs_to_many :universities

    validates :name, presence: true
end
