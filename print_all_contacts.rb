require 'Unirest'

response = Unirest.get("http://localhost:3000/contacts_list")

contact1 = response.body

p contact1