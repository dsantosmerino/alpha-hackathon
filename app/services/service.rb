module Service
  extend ActiveSupport::Concern

  included do
    def initialize(params = {})
      params.each { |k, v| send("#{k}=", v) }
    end

    def self.call(*args)
      new(*args).call
    end
  end
end
