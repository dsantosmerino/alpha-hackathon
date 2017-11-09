module Texts
  class WatsonApi
    def initialize(user_id = nil)
      @user_id = user_id
    end

    def analyze_tone(text)
      response = RestClient::Request.new(
        method: :get,
        url: 'https://gateway.watsonplatform.net/tone-analyzer/api/v3/tone',
        user: ENV['WATSON_USERNAME'],
        password: ENV['WATSON_PASSWORD'],
        headers: {
          params: {
            text: text,
            version: '2017-09-21',
            tones: 'emotion'
          }
        }
      ).execute

      JSON.parse(response)
    end
  end
end
