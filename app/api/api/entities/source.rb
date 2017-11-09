module API
  module Entities
    class Source < Grape::Entity
      expose :id
      expose :display_name
      expose :icon_url
    end
  end
end
