require 'unirest'
require 'pp'

system "clear"

base_url = "http://localhost:3000"

p "Please select an option"
p "[1] Show all contacts"
p "[2] Create a new contact"
p "[3] Show a contact"
p "[4] Update a contact"
p "[5] Delete a contact"

user_choice = gets.chomp.to_i

if user_choice == 1
  response = Unirest.get("#{base_url}/contacts")
  contacts = response.body
  pp contacts

elsif user_choice == 2
  the_parameters = {}
  p "Enter the contact's first name"
  the_parameters["f_name"] = gets.chomp
  p "Enter the contact's last name"
  the_parameters["l_name"] = gets.chomp
  p "Enter the contact's email"
  the_parameters["email"] = gets.chomp
  response = Unirest.post("#{base_url}/contacts", parameters: parameters)
  pp response.body

elsif user_choice == 3
  p "Enter the ID for the contact you wish to view"
  contact_id = gets.chomp
  response = Unirest.get("#{base_url}/contacts/#{contact_id}")
  contact = response.body
  pp contact

elsif user_input == 4
  p "Enter the ID for the contact you would like to edit"
  contact_id = gets.chomp.to_i
  response = Unirest.get("#{base_url}/products/#{contact_id}")
  pp product = response.body
  pp product
  the_parameters = {}
  p "Please enter the edited first name"
  the_parameters['f_name'] = gets.chomp
  p "Please enter the edited last name"
  the_parameters['l_name'] = gets.chomp
  p "Please enter the edited email address"
  the_parameters['email'] = gets.chomp
  p "Please enter the edited phone number"
  the_parameters['phone'] = gets.chomp
  p "Please enter the edited address"
  the_parameters[] = gets.chomp
  response = Unirest.patch("#{base_url}/products/#{contact_id}", parameters: the_parameters)
  pp response.body

elsif user_choice == 5
  p "Enter the ID of the contact you wish to delete"
  contact_id = gets.chomp.to_i
  response = Unirest.delete("#{base_url}/contacts/#{contact_id}")
  body = response.body
  pp body
  p "You destroyed the contact with with ID of #{contact_id}"

end
