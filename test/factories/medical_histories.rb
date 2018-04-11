FactoryGirl.define do
  factory :medical_history do
    q1 {rand(2)}
    q2 {rand(2)}
    q3 {rand(2)}
    q4 {rand(2)}
    q5 {rand(2)}
    q6 {rand(2)}
    q7 {rand(2)}
    q8 {rand(2)}
    q9 {rand(2)}
    q10 {rand(2)}
    q11 {rand(2)}
    specific_issue {Faker::Simpsons.quote}
    last_medical_checkup {Date.today - rand(5).months - rand(30).days}
  end
end
