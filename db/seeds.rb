gem 'faker'


50.times do 
  contact = Contact.new({
    f_name: Faker::Name.first_name,
    l_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number})
  contact.save
end