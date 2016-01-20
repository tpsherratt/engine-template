EngineTemplate::Engine.routes.draw do
  ['v1'].each do |version|
    namespace version do

      # routes here
      # resources :my_model, only: [:show, :update]

    end
  end
end