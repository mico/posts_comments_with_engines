Rails.application.routes.draw do
  mount Posts::Engine, at: '/posts'
end
