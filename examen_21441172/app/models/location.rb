class Location < ApplicationRecord
    has_many :recordings
    validates :name, presence: true, length: {minimum:1, maximum:120}
end
