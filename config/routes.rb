Rails.application.routes.draw do
  namespace :admin do
    resources :admin_users
    resources :athletes
    resources :featured_photos
    resources :news_articles
    resources :sports
    resources :team_members

    root to: "admin_users#index"
  end

  devise_for :admin_users

  root to: 'pages#index'

  resources :testimonials
  resources :team_members, except: 'index'
  resources :news_articles
  resources :featured_photos
  # resources :sports
  resources :athletes

  get '/womens-basketball', to: 'sports#womens_basketball'
  get '/mens-basketball', to: 'sports#mens_basketball'
  get '/football', to: 'sports#football'

  get '/team', to: 'team_members#index'


  ## Womens Basketball Pages ##
  get '/womens-basketball/about', to: 'pages/womens_basketball#about'
  get '/womens-basketball/testimonials', to: 'pages/womens_basketball#testimonials'

  get '/womens-basketball/professional-management', to: 'pages/womens_basketball#professional_management'
  get '/womens-basketball/career', to: 'pages/womens_basketball#career_development'
  get '/womens-basketball/personal-management', to: 'pages/womens_basketball#personal_management'
  get '/womens-basketball/marketing', to: 'pages/womens_basketball#marketing'

  get '/womens-basketball/contact', to: 'pages/womens_basketball#contact'


  ## Mens Basketball Pages ##
  get '/mens-basketball/about', to: 'pages/mens_basketball#about'
  get '/mens-basketball/testimonials', to: 'pages/mens_basketball#testimonials'

  get '/mens-basketball/draft', to: 'pages/mens_basketball#draft_preparation'
  get '/mens-basketball/training', to: 'pages/mens_basketball#training'
  get '/mens-basketball/marketing', to: 'pages/mens_basketball#marketing'
  get '/mens-basketball/career', to: 'pages/mens_basketball#career_development'

  get '/mens-basketball/contact', to: 'pages/mens_basketball#contact'


  ## Football Pages ##
  get '/football/about', to: 'pages/football#about'
  get '/football/testimonials', to: 'pages/football#testimonials'

  get '/football/professional-management', to: 'pages/football#professional_management'
  get '/football/marketing', to: 'pages/football#marketing'
  get '/football/career', to: 'pages/football#career_development'
  get '/football/wealth-management', to: 'pages/football#wealth_management'

  get '/football/contact', to: 'pages/football#contact'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
