class CreateContacts < ActiveRecord::Migration[5.1]

#   • Add a middle name attribute to the contacts model. The attribute should be a string. Also update the as_json method to include it in the output.

# • Change your controller such that a user can create a new contact with a middle name.

# • Add a bio attribute. Be careful to choose the right datatype; someone’s bio can be more than a few sentences.

# • Change your controller such that a user can create a new contact with a bio.

# • Change your frontend to be able to create and update a contact with the new middle name and bio attributes.

  def change
    create_table :contacts do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
