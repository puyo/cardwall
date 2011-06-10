CardWall::Application.routes.draw do
  resources :walls
  root :to => 'welcome#show'
end
