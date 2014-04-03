Cookbook::Application.routes.draw do
  match('/', {:via => :get, :to => 'recipes#index'})
  match('recipes', {:via => :get, :to => 'recipes#index'})
  match('recipes', {:via => :post, :to => 'recipes#create'})
  match('recipes/new', {:via => :get, :to => 'recipes#new'})
  match('recipes/:id', {:via => :get, :to => 'recipes#show'})
  match('recipes/update/:id', {:via => [:patch, :put], :to => 'recipes#update'})
  match('recipes/update/:id', {:via => :get, :to => 'recipes#edit'})
  match('recipes/:id', {:via =>:delete, :to => 'recipes#destroy'})

  match('view/new', {:via => :get, :to => 'tags#new'})
  match('tags', {:via => :get, :to => 'tags#view'})
  match('tags', {:via => :post, :to => 'tags#create'})

end
