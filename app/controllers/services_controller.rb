class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      flash[:notice] = "New Service Added!"
      redirect_to user_path(current_user)
    else
      flash[:alert] = "New Service Not Created"
      render :new
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
   @service = Service.find(params[:id])
   if @service.update_attributes(service_params)
     flash[:notice] = "Service Updated!"
     redirect_to user_path(current_user)
   else
     render 'edit'
   end
 end

 def destroy
    @service = Service.find(params[:id])
    if @service.destroy
      flash[:notice] = 'Service has been deleted.'
      redirect_to user_path(current_user)
    end
  end

  private

  def service_params
    params.require(:service).permit(
      :name,
      :price,
      :description
    )
  end

end
