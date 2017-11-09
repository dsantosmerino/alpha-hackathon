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

    resource :inputs do
      params do
        requires :content, type: String, desc: 'Text to analyze'
        requires :application, type: String, desc: 'Related application/package'
        requires :client_type, type: String, desc: 'Related client identifier',
                               values: ['android', 'ios', 'chrome-extension']
      end

      post do
        input = Inputs::CreateService.call(
          content: params[:content],
          application: params[:application],
          client_type: params[:client_type]
        )
        status :ok
        present input, with: API::Entities::Input
      end
    end
  end
end
