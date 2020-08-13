class DirectionsController < ApplicationController

  def new
    @direction = Direction.new
  end

  def create
    @direction = Direction.new(direction_params)
    if @direction.save
      flash[:notice] = "New direction Added!"
      redirect_to contacts_path
    else
      flash[:alert] = "New direction Not Created"
      render :new
    end
  end

  def edit
    @direction = Direction.find(params[:id])
  end

  def update
   @direction = Direction.find(params[:id])
   if @direction.update_attributes(direction_params)
     flash[:notice] = "direction Updated!"
     redirect_to contacts_path
   else
     render 'edit'
   end
 end

 def destroy
    @direction = Direction.find(params[:id])
    if @direction.destroy
      flash[:notice] = 'direction has been deleted.'
      redirect_to contacts_path
    end
  end

  private

  def direction_params
    params.require(:direction).permit(
      :starting_location,
      :step_one,
      :step_two,
      :step_three,
      :step_four,
      :step_five,
      :step_six,
    )
  end

end
