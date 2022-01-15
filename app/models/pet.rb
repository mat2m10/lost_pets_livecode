class Pet < ApplicationRecord
  SPECIES = %w(dog cat bird unicorn rabbit turtle)
  validates :name, presence: true
  validates :address, presence: true
  validates :species, inclusion: {in: SPECIES}
end
