Feature: Access the QuidCo website

	@LifeWorks_Scenario_01 @Happy
	Scenario: As a visitor, I want to access the QuidCo website.
		Given I can access the QuidCo website
		Then I can see the QuidCo homepage

	@LifeWorks_Scenario_02 @Unhappy
	Scenario: As a visitor, I want to access the QuidCo website.
		Given I can not access the QuidCo website
		Then I can not see the QuidCo homepage	

	@LifeWorks_Scenario_03 @Happy @Once_Only
	Scenario: As a new user, I want to Sign-up to the QuidCo scheme.
		Given I can access the QuidCo website
		When I click the Join button
		And I fill in the form details
		Then I will receive a confirmation message

	@LifeWorks_Scenario_04 @Unhappy
	Scenario: As a new user, I want to Sign-up to the QuidCo scheme.
		Given I can access the QuidCo website
		When I click the Join button
		And I fill in the form details incorrectly
		Then I will not receive a confirmation message

	@LifeWorks_Scenario_05 @Happy
	Scenario: As a user, I want to validate that I joined QuidCo successfully.
		Given I can access the Google Mail website
		When I verify my credentials
		Then I will see an Authentication E-Mail from QuidCo

	@LifeWorks_Scenario_06 @Unhappy
	Scenario: As a user, I want to validate that I joined QuidCo successfully.
		Given I can access the Google Mail website
		When I do not verify my credentials
		Then I will not see an Authentication E-Mail from QuidCo

	@LifeWorks_Scenario_07 @Happy
	Scenario: As an existing user, I want to login to the QuidCo scheme.
		Given I can access the QuidCo website
		When I click the Sign in button
		And I enter valid user details
		Then I will be logged in to the QuidCo scheme

	@LifeWorks_Scenario_08 @Unhappy
	Scenario: As an existing user, I want to login to the QuidCo scheme.
		Given I can access the QuidCo website
		When I click the Sign in button
		And I enter invalid user details
		Then I will not be logged in to the QuidCo scheme

	@LifeWorks_Scenario_09 @Happy
	Scenario: As a logged-in user, I want to view the Argos Credit Card stats
		Given I am logged in to the QuidCo scheme
		When I search for "Argos" 
		And I navigate to Argos Credit Card details page
		Then I will see the statistics

	@LifeWorks_Scenario_10 @Unhappy
	Scenario: As a logged-in user, I want to view the Argos Credit Card stats
		Given I am logged in to the QuidCo scheme
		When I do not search for "Argos" 
		Then I will not see the Argos Credit Card details page

	@LifeWorks_Scenario_11 @Unhappy
	Scenario: As a logged-in user, I want to view the Argos Credit Card stats
		Given I am logged in to the QuidCo scheme
		When I search for "Argos"
		And I do not navigate to Argos Credit Card details page
		Then I will not see the statistics

	@LifeWorks_Scenario_12 @Happy
	Scenario: As a logged-in user, I want to save statistics of a card.
		Given I am logged in to the QuidCo scheme
		When I search for "Argos" 
		And I navigate to Argos Credit Card details page
		And I save the Stats section to a file
		Then a file will be created for me

	@LifeWorks_Scenario_13 @Unhappy
	Scenario: As a logged-in user, I want to save statistics of a card.
		Given I am logged in to the QuidCo scheme
		When I search for "Argos" 
		And I navigate to Argos Credit Card details page
		And I do not save the Stats section to a file
		Then a file will not be created for me

	@LifeWorks_Scenario_14 @Happy
	Scenario: As a logged-in user, I want to log out of the QuidCo scheme
		Given I am logged in to the QuidCo scheme
		When I click on the Logout button
		Then I am logged out of the Quidco scheme

	@LifeWorks_Scenario_15 @Unhappy
	Scenario: As a logged-in user, I want to log out of the QuidCo scheme
		Given I am logged in to the QuidCo scheme
		When I do not click on the Logout button
		Then I am not logged out of the Quidco scheme