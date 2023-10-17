class Cow < ApplicationRecord
    validates :name, presence: true
    validates :hobby, length: { minimum: 10 }
end