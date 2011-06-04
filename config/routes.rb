CardWall::Application.routes.draw do
  resources :walls do
    resources :cards
  end
  root :to => 'welcome#show'
end
