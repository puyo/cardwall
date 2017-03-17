CardWall::Application.routes.draw do
  resources :walls do
    resources :cards, :only => [:create]
  end
  root :to => 'welcome#show'
end
