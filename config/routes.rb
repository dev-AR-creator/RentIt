Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homepage#index",as: "root" #
  get "/homepage",to:"homepage#index",as: "home" #
  post "/res/post", to: "registeruser#create", as: "regis"
  get "/res", to: "registeruser#index", as: "res" #
  post "/res/:id/post", to: "registeruser#profile",as: "profile"
  get "/res/:id/profile",to:"registeruser#about", as: "form"
  get "/userboard", to:"item#show",as: "show" #
  get "/userboard/newitem",to:"item#new", as:"new" #
  post "/userboard/newitem",to:"item#create",as:"newitem" #
  get "/userboars/:id",to:"item#full",as:"itempage"
  delete "/userboar/:id",to:"item#delete",as: "delete"
  patch "/request/:id",to: "homepage#update",as: "request"
  get "homepage/item/:id",to: "homepage#itempage",as: "ite"
  get "/homepage/dash",to: "homepage#dash",as: "dash"
  patch "/sold/:id",to:"item#sold",as:"sold"
  get "userboard/rented",to: "item#rented",as: "rented"

  resource :session
  get "/login",to: "sessions#new",as: "login"     #
  get "/logout",to: "sessions#destroy",as: "logout" #

end
