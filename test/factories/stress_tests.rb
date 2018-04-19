FactoryGirl.define do
  factory :stress_test do
    unexpected_upset {StressTest::RESPONSES.sample}
    unable_to_control {StressTest::RESPONSES.sample}
    nervous {StressTest::RESPONSES.sample}
    confident {StressTest::RESPONSES.sample}
    things_going_right {StressTest::RESPONSES.sample}
    cannot_cope {StressTest::RESPONSES.sample}
    control_irritation {StressTest::RESPONSES.sample}
    top_of_things {StressTest::RESPONSES.sample}
    anger {StressTest::RESPONSES.sample}
    difficulties_piling {StressTest::RESPONSES.sample}
    test_date {Date.today - rand(7).days}
  end
end
