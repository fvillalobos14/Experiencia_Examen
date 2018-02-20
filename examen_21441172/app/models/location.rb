class Location < ApplicationRecord
    validates :name, presence: true, length: {minimum:1, maximum:120}
end
