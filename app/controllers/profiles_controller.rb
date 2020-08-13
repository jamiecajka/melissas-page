class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
    @contacts = Contact.all
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
   @contact = Contact.find(params[:id])
   if @contact.update_attributes(contact_params)
     flash[:notice] = "Contact Updated!"
     redirect_to profiles_path
   else
     render 'edit'
   end
 end

end
