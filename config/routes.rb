MathRails::Application.routes.draw do
  root :to => 'worksheets#new'
  get 'worksheet' => 'worksheets#create'
end
