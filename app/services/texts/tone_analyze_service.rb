module Texts
  class ToneAnalyzeService
    include Service

    def call
      watson_api = WatsonApi.new
      watson_api.analyze_tone(text)
    end

    private

    attr_accessor :text
  end
end
