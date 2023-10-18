class Cow < ApplicationRecord
    validates :name, presence: true
    validates :hobby, length: { minimum: 10 }
    validates :breed, presence: true
    validates :age, presence: true
    validates :image, presence: true
end