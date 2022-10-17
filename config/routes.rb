Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  resources :ben_key_project_finance_forms
  resources :ben_overall_project_finance_forms
  resources :glitch_input_forms
  resources :ben_update_forms
  resources :ben_user_update_forms
  resources :ben_investor_update_forms
  resources :ben_management_update_forms
  resources :ben_selection_forms
  resources :ben_new_project_forms
  resources :ben_available_frontstage_forms
  resources :ben_available_backstage_forms
  resources :resignation_forms
  resources :complaint_forms
  resources :transfer_forms
  resources :management_review_forms
  resources :management_request_forms
  resources :management_applicant_forms
  resources :investor_sponsor_forms
  resources :investor_support_forms
  resources :investor_company_forms
  resources :artist_applicant_forms
  resources :crew_applicant_forms
  resources :musician_applicant_forms
  resources :actor_applicant_forms
  resources :information_forms
  devise_for :bens, controllers: {registrations: "bens/registrations"}
  devise_for :users, controllers: { registrations: "users/registrations" }
  devise_for :investors, controllers: {registrations: "investors/registrations"}
  devise_for :managements, controllers: { registrations: "managements/registrations" }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  delete "/logout", to: "sessions#destroy"

  get '/ben_key_project_finance_forms', to: 'ben_key_project_finance_forms#index', as: :key_project_finance
  get '/ben_overall_project_finance_forms', to: 'ben_overall_project_finance_forms#index', as: :overall_project_finance
  get '/glitch_input_forms', to: 'glitch_input_forms#index', as: :glitch_form
  get '/ben_update_forms', to: 'ben_update_forms#index', as: :primary_update
  get '/ben_user_update_forms', to: 'ben_user_update_forms#index', as: :user_update
  get '/ben_investor_update_forms', to: 'ben_investor_update_forms#index', as: :investor_update
  get '/ben_management_update_forms', to: 'ben_management_forms#index', as: :management_update
  get '/ben_selection_forms', to: 'ben_selection_forms#index', as: :bens_selection
  get '/ben_new_project_forms', to: 'ben_new_project_forms#index', as: :new_project_form
  get '/ben_available_frontstage_forms', to: 'ben_available_frontstage_forms#index', as: :available_frontstage
  get '/ben_available_backstage_forms', to: 'ben_available_backstage_forms#index', as: :available_backstage
  get '/actor_applicant_forms', to: 'actor_applicant_forms#index', as: :actor_applicant
  get '/artist_applicant_forms', to: 'artist_applicant_forms#index', as: :artist_applicant
  get '/crew_applicant_form', to: 'crew_applicant_forms#index', as: :crew_applicant
  get '/information_forms', to: 'information_forms#index', as: :form_of_information
  get '/investor_company_forms', to: 'investor_company_forms#index', as: :company_info
  get '/investor_sponsor_forms', to: 'investor_sponsor_forms#index', as: :sponsor_form
  get '/investor_support_forms', to: 'investor_support_forms#index', as: :support_form
  get '/musician_applicant_forms', to: 'musician_applicant_forms#index', as: :musician_form
  get '/management_applicant_forms', to: 'management_applicant_forms#index', as: :management_applicant
  get '/management_request_forms', to: 'management_request_forms#index', as: :management_request
  get '/management_review_forms', to: 'management_review_forms#index', as: :management_review
  get '/transfer_forms', to: 'transfer_forms#index', as: :form_transfer
  get '/complaint_forms', to: 'complaint_forms#index', as: :form_complaint
  get '/resignation_form', to: 'resignation_forms#index', as: :form_resign

  post "users/signup", to: "users#create"
  post "investors/signup", to: "investors#create"
  post "managements/signup", to: "managements#create"
  post "bens/signup", to: "bens#create"
  post "users/login", to: "sessions#create"
  post "bens/login", to: "sessions#create"
  post "managements/login", to: "sessions#create"
  post "investors/login", to: "sessions#create"
  get "users/sign_out", to: "sessions#destroy"
  get "bens/sign_out", to: "sessions#destroy"
  get "managements/sign_out", to: "sessions#destroy"
  get "investors/sign_out", to: "sessions#destroy"
  get "about", to: "pages#about", as: :about
  get 'bens' => 'ben#primary', as: :ben_root
  get 'users' => 'users#primary', as: :user_root
  get 'investors' => 'investors#primary', as: :investor_root
  get 'managements' => 'managements#primary', as: :management_root


end
