Feature: Login
  Login should be allowed only if there are valid credentials

Scenario Outline: Login Successfully
  Given there is a user "<user>"
  And I am at the login page
  When I fill and submit the login page
  Then I should see the "<msg>"

  Examples:
  	|user								      |msg	    |
  	|role=Runner	            |Welcome  |
    |role=Coach               |Welcome  |
  	|role=Company Admin		    |Welcome  |
    |role=Runner;goals_setup=false       |Goals           |
    |role=Runner;medical_setup=false     |Medical History |



Scenario Outline: Login Incorrectly
  Given there is a user "<user>"
  And I am at the login page
  When I fill the password incorrectly and submit the login page
  Then I should see the "<msg>"

  Examples:
  	|user								    |msg	                    |
  	|role=Runner     	      |Invalid login credentials|
    |role=Coach             |Invalid login credentials|
  	|role=Company Admin		  |Invalid login credentials|
