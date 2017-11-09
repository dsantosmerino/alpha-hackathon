module Sources
  class FindByApplicationService
    include Service

    RECOGNIZED_SOURCES = [
      {
        name: 'Twitter',
        sources: [
          {
            application: 'twitter',
            client_type: 'chrome-extension'
          }
        ]
      },
      {
        name: 'iMessage',
        sources: [
          {
            application: 'com.apple.MobileSMS',
            client_type: 'ios'
          }
        ]
      }
    ].freeze

    def call
      find_source_by_application_name(application_name)
    end

    def application_name
      found_application = RECOGNIZED_SOURCES.find do |recognized_source|
        recognized_source.dig(:sources).include?(
          application: application, client_type: client_type
        )
      end

      found_application && found_application[:name]
    end

    def find_source_by_application_name(application_name)
      Source.find_by(category: 'application', name: application_name)
    end

    private

    attr_accessor :application, :client_type
  end
end
