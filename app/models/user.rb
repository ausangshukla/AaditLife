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

  belongs_to :company
  has_many :goals
  has_many :medical_histories

  has_many :workouts
  has_many :schedules
  has_many :targets
  has_many :fitness_tests

  has_many :current_workouts, -> (object) { 
           where("workouts.current = ?", true)
         },
         :class_name => 'Workout'

  has_one :current_fitness_test, -> (object) { 
           where("fitness_tests.current = ?", true)
         },
         :class_name => 'FitnessTest'

  scope :runners, -> { where role: "Runner" }
  scope :coaches, -> { where role: "Coach" }
  
end
