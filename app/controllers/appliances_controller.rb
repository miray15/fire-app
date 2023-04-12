class AppliancesController < ApplicationController

  def index
    @appliances = Appliance.all
    render :index
  end
  
  def create
    @appliance = Appliance.create(
      name: params[:name],
      color: params[:color],
      location: params[:location],
    )
    render :show
  end
  
  # test "show" do
  #   get "/appliances/#{Appliance.first.id}.json"
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal ["id", "name", "color", "location", "created_at", "updated_at"], data.keys
  # end

  def update
    @appliance = Appliance.find_by(id: params[:id])
    @appliance.update(
      name: params[:name] || @appliance.name,
      color: params[:color] || @appliance.color,
      location: params[:location] || @appliance.location,
    )
    render :show
  end


  
end

