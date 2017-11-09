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
  end
end
