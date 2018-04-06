class User < ApplicationRecord
  
  acts_as_paranoid

  validates_presence_of :first_name, :last_name, :email, :role, :phone


  SEX = ["M", "F"]
  ROLE = ["Runner", "Coach", "Company Admin", "Super User"]
  TITLE = ["Mr", "Mrs", "Miss"]


  # Include default devise modules.
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :confirmable, :omniauthable

  include DeviseTokenAuth::Concerns::User

end
