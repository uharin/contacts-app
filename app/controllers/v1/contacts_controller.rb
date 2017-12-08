class v1::ContactsController < ApplicationController

  def list_contacts
    render json: {
      first_name: Contact.first.f_name,
      last_name: Contact.first.l_name,
      email: Contact.first.email
    }
  end

  def display_all_contacts
    
    contact_list = Contact.all
    
    all_contacts.collect do |contact|
      {
      id: contact.id,
      f_name: contact.f_name,
      l_name: contact.l_name,
      email: contact.email,
      phone: contact.phone
    }

      render json: {
  
    }
    end  
  end
end