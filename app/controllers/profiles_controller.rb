class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
    @contacts = Contact.all
  end

end
