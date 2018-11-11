class Car < ApplicationRecord
  belongs_to :company
  has_many :images
end
