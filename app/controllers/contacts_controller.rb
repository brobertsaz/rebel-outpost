class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    if @contact.save
      ContactMailer.deliver_lead(@contact).deliver
      render 'pages/thank_you'
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :company, :message)
  end
end
