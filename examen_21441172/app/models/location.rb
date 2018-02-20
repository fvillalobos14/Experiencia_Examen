class Location < ApplicationRecord
    has_many :recordings, dependent: :destroy
    validates :name, presence: true, length: {minimum:1, maximum:120}
end
