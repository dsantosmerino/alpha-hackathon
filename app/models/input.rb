class Input < ApplicationRecord
  serialize :tones, Array

  belongs_to :source
end
