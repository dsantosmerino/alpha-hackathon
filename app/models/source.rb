class Source < ApplicationRecord
  has_ancestry

  has_many :inputs

  scope :today, -> { where('DATE(created_at) = ?', Date.today) }  
end
