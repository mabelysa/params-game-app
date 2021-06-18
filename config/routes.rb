Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/query_params" => "params_game#name"
  get "/query_params" => "params_game#guessgame"

  get "/segment_params/:this_is_a_key" => "params_game#segment_params"

  get "/segment_guess/:the_users_guess" => "params_game#guessgame"

  post "/body_params" => "params_game#guessgame"

  post ""
end
