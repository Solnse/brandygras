class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :fname
      t.string :lname
      t.string :comment
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
