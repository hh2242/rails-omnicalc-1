Rails.application.routes.draw do
  root 'square#show'

  get '/square/new', to: 'square#show'
  get '/square_root/new', to: 'squareroot#show'
  get '/payment/new', to: 'payment#show'
  get '/random/new', to: 'random#show'

  get '/square/results', to: 'square#results'
  get '/square_root/results', to: 'squareroot#results'
  get '/payment/results', to: 'payment#results'
  get '/random/results', to: 'random#results'

end
