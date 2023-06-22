Rails.application.routes.draw do
  get 'increment/likes'
  resources :birds, only: [:index, :show, :create, :update]
  patch "/birds/:id/like", to: "birds#increment_likes"
end

