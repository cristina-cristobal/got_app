class House < ApplicationRecord

  has_many :characters
  validates :name, uniqueness: {case_sensitive:false}
  accepts_nested_attributes_for :characters
end
