Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/games_names_path", controller: "paragames", action: "name_game"
  get "/guess_path", controller: "paragames", action: "guess_game"
  get "sum_path/:first_number/:second_number", controller: "paragames", action: "sum_game"
  get "/guess_seg/:guess_number", controller: "paragames", action: "guess_game_seg"
end
