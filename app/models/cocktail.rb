class Cocktail < ActiveRecord::Base
  has_many :doses, inverse_of: :cocktail, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, uniqueness: true, presence: true
  accepts_nested_attributes_for :doses
end
