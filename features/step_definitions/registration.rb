Given("there are companies") do
  (1..3).each do |i|
    FactoryGirl.create(:company)
  end
end


Given(/^I am at the registration page$/) do
  visit("/")
  click_on("Register")
  sleep 0.5
end

When("I fill and submit the registration page as {string}") do |runner_type|

  #role_label = @user.role == "Runner" ? "Company Admin" : @user.role
  click_on(runner_type)
  sleep(0.5)

  if(runner_type == "Corporate Sponsored Runner")
    ionic_select(Company.all.sample.name, "company_id", true)
  end

  ionic_select(@user.gender == "M" ? "Male" : "Female", "gender", true)

  fields = [  "first_name", "last_name", "email", "phone", "password", "birth_year", "height"]
  fields.each do |k|
    fill_in(k, with: @user[k])
  end

  fill_in("password", with: @user.email)
  fill_in("confirm_password", with: @user.email)

  sleep(0.5)

  find("#accept_terms").click
  click_on("Save")
end

Then(/^when I click the confirmation link$/) do
  @saved_user = User.last
  visit("http://localhost:3000/auth/confirmation?config=default&confirmation_token=#{@saved_user.confirmation_token}&redirect_url=http://localhost:8100")
end

Then(/^the user should be confirmed$/) do
  @saved_user.reload
  @saved_user.confirmed_at.should_not be_nil


  fields = [  "first_name", "last_name", "email", "phone", "height", "gender", "birth_date"]
  fields.each do |k|
    expect(@user[k]).to eql(@saved_user[k])
  end

end

Then("the user company should be set") do
  @saved_user.company.should_not be_nil
end



