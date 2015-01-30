class AddEmailToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :email, :string
    add_column :contacts, :guests, :integer
  end
end
