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
  parameters = {}
  p "Enter the contact's first name"
  parameters["first_name"] = gets.chomp
  p "Enter the contact's last name"
  parameters["last_name"] = gets.chomp
  p "Enter the contact's email"
  parameters["email"] = gets.chomp
  response = Unirest.post("#{base_url}/photos", parameters: parameters)
  pp response.body

elsif user_choice == 3


elsif user_choice == 4


elsif user_choice == 5
  p "Enter the ID of the contact you wish to delete"
  contact_id = gets.chomp.to_i
  response = Unirest.delete("#{base_url}/contacts/#{contact_id}")
  body = response.body
  pp body
  p "You destroyed the contact with with ID of #{contact_id}"
end
