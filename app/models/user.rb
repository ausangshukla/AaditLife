class User < ApplicationRecord
  
  acts_as_paranoid

  validates_presence_of :first_name, :last_name, :email, :role, :phone, :height, :accept_terms, :gender


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
  has_many :stress_tests

  has_many :workouts
  has_many :schedules
  has_many :targets
  has_many :fitness_tests
  has_many :food_logs
  has_many :strength_workouts

  has_many :current_workouts, -> (object) { 
           where("workouts.current = ?", true)
         },
         :class_name => 'Workout'

  has_one :current_fitness_test, -> (object) { 
           where("fitness_tests.current = ?", true)
         },
         :class_name => 'FitnessTest'

  has_one :current_strength_workout, -> (object) { 
           where("strength_workouts.current = ? and strength_workouts.is_target = ?", true, false)
         },
         :class_name => 'StrengthWorkout'

  has_one :target_strength_workout, -> (object) { 
           where("strength_workouts.current = ? and strength_workouts.is_target = ? ", true, true)
         },
         :class_name => 'StrengthWorkout'

  scope :runners, -> { where role: "Runner" }
  scope :coaches, -> { where role: "Coach" }
  
end
