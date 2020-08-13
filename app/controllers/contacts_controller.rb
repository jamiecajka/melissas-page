class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    @directions = Direction.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = "New Contact Added!"
      redirect_to contacts_path
    else
      flash[:alert] = "New Contact Not Created"
      render :new
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
   @contact = Contact.find(params[:id])
   if @contact.update_attributes(contact_params)
     flash[:notice] = "Contact Updated!"
     redirect_to contacts_path
   else
     render 'edit'
   end
 end

 def destroy
    @contact = Contact.find(params[:id])
    if @contact.destroy
      flash[:notice] = 'Contact has been deleted.'
      redirect_to contacts_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(
      :name,
      :address,
      :city,
      :zip,
      :phone,
      :email,
      :bio,
      :facebook,
      :instagram,
      :snapcht,
      :extra_one,
      :extra_two,
      :picture
    )
  end

end
