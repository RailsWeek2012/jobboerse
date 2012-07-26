class UserProfile < ActiveRecord::Base
  belongs_to(:user)
  attr_accessible :user_id, :application, :city, :email, :firstname, :house_number, :mobile, :name, :phone, :postal_code, :street, :surname
end
