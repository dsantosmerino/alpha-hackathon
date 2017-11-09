module Sources
  class FindOrCreateByClientService
    include Service

    def call
      find_or_create_source_by_client
    end

    def find_or_create_source_by_client
      Source.find_or_create_by(category: 'client', name: application, client_type: client_type)
    end

    private

    attr_accessor :application, :client_type
  end
end
