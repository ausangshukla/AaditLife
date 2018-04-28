Given(/^I am at the registration page$/) do
  visit("/")
  click_on("Register")
  sleep 1
end

When(/^I fill and submit the registration page$/) do

  #role_label = @user.role == "Runner" ? "Company Admin" : @user.role
  click_on("Individual Runner")
  sleep(1)

  ionic_select(@user.gender, "gender", true)
  sleep(0.5)  

  fields = [  "first_name", "last_name", "email", "phone", "password", "birth_year", "height"]
  fields.each do |k|
    fill_in(k, with: @user[k])
    sleep(0.5)
  end

  fill_in("password", with: @user.email)
  fill_in("confirm_password", with: @user.email)

  sleep(1)

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


  fields = [  "first_name", "last_name", "email", "phone"]
  fields.each do |k|
    expect(@user[k]).to eql(@saved_user[k])
  end


  if(@user.role == 'Care Giver' || @user.role == 'Nurse')
    fields = [ "pref_commute_distance", "postcode"]
    fields.each do |k|
      expect(@user[k]).to eql(@saved_user[k])
    end
  end
end


