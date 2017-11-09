module API
  module Entities
    class Input < Grape::Entity
      expose :id
      expose :content
      expose :tones
    end
  end
end
