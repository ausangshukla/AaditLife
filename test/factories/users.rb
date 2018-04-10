FactoryGirl.define do
  factory :user do
   	first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    password {email}
    phone {"2125555" + rand(999).to_s.center(3, rand(9).to_s)}
    confirmation_sent_at { Time.now }
    confirmed_at { Time.now }
    sign_in_count { 5 }
    role {"Runner"}
    gender { User::SEX[rand(2)]}
    height {rand(5.0..6.8)}
    accept_terms {true}
    birth_year {Random.new.rand(1965..2010)}
  end
end
