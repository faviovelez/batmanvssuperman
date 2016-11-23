Rails.application.routes.draw do
  root 'pages#batman_vs_superman'

  get 'pages/batman_vs_superman'

  get 'experiments/page1'

  get 'experiments/page2'

  get 'experiments/page3'

  post 'pages/batman_vs_superman_post'

  get 'pages/batman'

  get 'pages/superman'

end
