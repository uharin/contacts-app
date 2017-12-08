class ContactsController < ApplicationController

  def index
    contact_list = Contact.all
    render json: contact_list.as_json
  end

  def create
    contact = Contact.new({
    first_name: params[:f_name],
    last_name: params[:l_name],
    email: params[:email],
    })
    contact.save
  end

  def show

  end

  def update

  end

  def destroy
    contact_id = params[:id]
    contact = Contact.find_by(id: contact_id)
    contact.destroy
  end

end