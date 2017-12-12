class ContactsController < ApplicationController

  def index
    contact_list = Contact.all
    render json: contact_list.as_json
  end

  def create
    contact = Contact.new({
    f_name: params[:f_name],
    l_name: params[:l_name],
    email: params[:email],
    })
    contact.save
  end

  def show
    contact_id = params[:id]
    contact = Contact.find_by(id: contact_id)
    render json: contact.as_json
  end

  def update
    contact_id = params[:id]
    contact = Contact.find_by(id: contact_id)
    # will get to this later
  end

  def destroy
    contact_id = params[:id]
    contact = Contact.find_by(id: contact_id)
    contact.destroy
  end

end