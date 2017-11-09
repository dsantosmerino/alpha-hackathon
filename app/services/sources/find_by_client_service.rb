module Sources
  class FindByClientService
    include Service

    def call
      find_source_by_client
    end

    def find_source_by_client
      Source.find_by(category: 'client', name: application, client_type: client_type)
    end

    private

    attr_accessor :application, :client_type
  end
end
