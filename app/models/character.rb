class Character < ApplicationRecord
  belongs_to :house

  validates :name, uniqueness: {case_sensitive: false}
end
