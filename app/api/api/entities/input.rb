module API
  module Entities
    class Input < Grape::Entity
      expose :content
      expose :tones
    end
  end
end
