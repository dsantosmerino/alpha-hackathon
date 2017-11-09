module Inputs
  class CreateService
    include Service

    def call
      tones = Texts::ToneAnalyzeService.call(text: content)
      create_input(tones: tones)
    end

    private

    def create_input(tones:)
      Input.create!(
        content: content, tones: tones,
        application: application, client_type: client_type
      )
    end

    attr_accessor :content, :application, :client_type
  end
end
