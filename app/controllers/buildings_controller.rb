class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end
  
  def new
    @building = Building.new
  end

  def create 
    building = Building.create building_params
    redirect_to building
  end

  def edit
    @building = Building.find params[:id]
  end

  def update 
    building = Building.find params[:id]
    building.update building_params
    redirect_to building
  end

  def show
    @building = Building.find params[:id]
    # url = URI("https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=Museum%20of%20Contemporary%20Art%20Australia&inputtype=textquery&fields=formatted_address%2Cname%2Crating%2Copening_hours%2Cgeometry&key=YOUR_API_KEY")

    # https = Net::HTTP.new(url.host, url.port)
    # https.use_ssl = true

    # request = Net::HTTP::Get.new(url)

    # response = https.request(request)
    # puts response.read_body
  end

  def destroy
    building = Building.find params[:id]
    building.destroy
    redirect_to buildings_path
  end

  private 
  def building_params
    params.require(:building).permit(:name, :year, :style, :place, :image, :architect_id)
  end
end
