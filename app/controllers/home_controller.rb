class HomeController < ApplicationController
	skip_before_action :authenticate_user!
  def index
  	@garment_types = GarmentType.all.order(name: :asc)
  	@garment = Garment.new
  	@look = @user.looks.first
  	if params[:garment_type]
  		@garment_type = GarmentType.find(params[:garment_type])
       @garments = @garment_type.garments

  	else
  		
  		@garment_type = GarmentType.first
      @garments = @garment_type.garments
  	end
  end
end
