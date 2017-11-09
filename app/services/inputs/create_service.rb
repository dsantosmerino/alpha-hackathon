module Inputs
  class CreateService
    include Service

    def call
      tones = Texts::ToneAnalyzeService.call(text: content)
      source = Sources::FindByClientService.call(
        client_type: client_type, application: application
      )
      create_input(tones: tones, source: source)
    end

    private

    def create_input(tones:, source:)
      Input.create!(
        content: content, tones: tones,
        application: application, client_type: client_type,
        source: source
      )
    end

    attr_accessor :content, :application, :client_type
  end
end
