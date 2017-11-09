module Inputs
  class CreateService
    include Service

    def call
      tones = Texts::ToneAnalyzeService.call(text: content)
      source = Sources::FindOrCreateByClientService.call(
        client_type: client_type, application: application
      )
      create_input(tones: tones, source: source)
    end

    private

    def create_input(tones:, source:)
      Input.create!(
        application: application, client_type: client_type,
        content: content, tones: tones,
        sent: sent,
        source: source,
        user: user
      )
    end

    attr_accessor :application, :client_type, :content, :sent, :user
  end
end
