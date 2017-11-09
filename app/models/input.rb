class Input < ApplicationRecord
  serialize :tones, Array

  belongs_to :user
  belongs_to :source, optional: true

  scope :sent, -> { where(sent: true) }
end
