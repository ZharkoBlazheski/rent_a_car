class StaticController < ApplicationController

  skip_before_action :authenticate_user!, only: [:home, :about, :contact, :create_contact]

  def home
  end

  def about
  end

  def contact
    @contact = Contact.new()
  end

  def create_contact
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to static_home_path, notice: "Contact was successfully created."
    else
      render :contact
    end
  end

  def message
    @messages = Contact.all
  end

  private

    def contact_params
      params.require(:contact).permit(:full_name, :email, :message)
    end
end
