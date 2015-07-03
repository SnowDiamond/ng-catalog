Rails.application.routes.draw do

  scope :api, :module => :api, defaults: {format: :json} do
    resources :products, only: [:index, :show]
  end

  scope :module => :public do
    root to: 'catalog#index'
    get '*path', to: 'catalog#index'
  end
end
