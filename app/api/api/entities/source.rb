module API
  module Entities
    class Source < Grape::Entity
      expose :id
      expose :name
      expose :display_name
      expose :icon_url
    end
  end
end
