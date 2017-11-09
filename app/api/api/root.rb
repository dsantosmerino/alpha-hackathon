module  API
  class Root < Grape::API
    format :json
    prefix :api
    content_type :json, 'application/json; charset=utf-8'

    resource :status do
      get do
        present :ok
      end
    end

    resource :texts do
      params do
        requires :text, type: String, desc: 'Text to analyze'
        requires :application, type: String, desc: 'Related application/package'
        requires :client_type, type: String, desc: 'Related client identifier',
                               values: ['android', 'ios', 'chrome-extension']
      end

      post do
        Texts::ToneAnalyzeService.call(text: params[:text])
      end
    end
  end
end
