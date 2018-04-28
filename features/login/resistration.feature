Feature: Registration
  Registration should work properly

Scenario Outline: Non corporate User Registration Successfully
  Given there is an unsaved user "<user>"
  And I am at the registration page 
  When I fill and submit the registration page as "Individual Runner"
  Then I should see the "<msg1>"
  Then when I click the confirmation link
  Then the user should be confirmed
  And I am at the login page
  When I fill and submit the login page
  Then I should see the "<msg2>"
  Examples:
  	|user						      |msg1											                      |msg2		                    |
  	|role=Runner     	    |Please check your email for verification link	|Please setup your goals	  |
    |role=Runner          |Please check your email for verification link  |Please setup your goals    |


Scenario Outline: Corporate User Registration Successfully
  Given there are companies
  Given there is an unsaved user "<user>"
  And I am at the registration page 
  When I fill and submit the registration page as "Corporate Sponsored Runner"
  Then I should see the "<msg1>"
  Then when I click the confirmation link
  Then the user should be confirmed
  And the user company should be set
  And I am at the login page
  When I fill and submit the login page
  Then I should see the "<msg2>"
  Examples:
    |user                 |msg1                                           |msg2                       |
    |role=Runner          |Please check your email for verification link  |Please setup your goals    |
    |role=Runner          |Please check your email for verification link  |Please setup your goals    |


