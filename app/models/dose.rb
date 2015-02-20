class Dose < ActiveRecord::Base
  belongs_to :cocktail, inverse_of: :doses
  # you cannot have a dose without a cocktail
  belongs_to :ingredient

  validates_presence_of :quantity
  validates_uniqueness_of :cocktail, scope: :ingredient_id
  validates_associated :cocktail, :ingredient
end
