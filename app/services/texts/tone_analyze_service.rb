module Texts
  class ToneAnalyzeService
    include Service

    def call
      api_response = api_call
      api_response_to_tones(api_response)
    end

    private

    def api_call
      watson_api = WatsonApi.new
      watson_api.analyze_tone(text)
    end

    def api_response_to_tones(api_response)
      api_response.dig('document_tone', 'tones').map { |tone| tone['tone_id'] }
    end

    attr_accessor :text
  end
end
