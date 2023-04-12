Rails.application.routes.draw do

get "/appliances" => "appliances#index"

post "/appliances" => "appliances#create"

patch "/appliances/:id" => "appliances#update"

delete "/appliances:/id" => "appliances#destroy"
end
