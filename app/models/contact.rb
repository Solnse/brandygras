class Contact < ActiveRecord::Base
  attr_accessor :fname, :lname, :comment, :address, :address2, :city, :state, :zip, :created_at, :updated_at, :email, :guests
end
