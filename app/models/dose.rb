class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :cocktail_id, uniqueness: { scope: [:ingredient_id] }
  # validates a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.
end
