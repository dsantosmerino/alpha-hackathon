module API
  module Entities
    class InputWithSource < API::Entities::Input
      expose :source, with: API::Entities::Source
    end
  end
end
