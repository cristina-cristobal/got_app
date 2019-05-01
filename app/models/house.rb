class House < ApplicationRecord

  has_many :characters
  validates :name, uniqueness: {case_sensitive:false}

end
