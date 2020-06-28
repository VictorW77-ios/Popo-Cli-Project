1. Plan your gem, imagine your interface 
2. Start with the project structure - GOOGLE 
3. Start with the entry point - the file run 
4. Force that ^ to build the CLI interface 
5. Stub out the interface 
6. Start making things real 
7. Discover objects 
8. Program 

a. What will your app do? What is the user experience?
- Generates a list of officers from which the user can dissect more information about each officer.

b. Where will you get your data from? (This might be a website that you will scrape or if you prefer, an API.) 
- OpenOversight.com 

c. What will you need to do with the data once you have got it? 
- I'll need to scrape the site for both department info & officer info and structure the data in a presentable way to the user using class inheritance, Nokogiri, etc!

d. What classes will you be using? 
- A Department class, Officer class, CLI class that serves as HQ for the project, and a Popo class for running the app. 

e. How will you display data one level deep to the user?
- The user chooses a department (1 level) and then chooses an officer to get more information on (2nd level). 

I may do something like this: 
A command line interface that shows police history
	greeting: “Please enter officer name, part of name, vehicle license plate number, or badge number” 

	user enters officer name, part of name, vehicle license plate, or badge number or whatever variables that are manageable.
	
	outputs first data set that matches user input as “[officer name], [police department]? Y/n”

	if Y, outputs officer badge number, rank, gender, and race

	if n, sends user to next officer name + police department 
	
	if n again, sends user to next officer name + department — loop 

	if program has no more data to output to user, program outputs "I'm sorry. That officer doesn't seem to be in the database." Then takes user back to main menu.

department class? 
	> Departments have 2 - CPD and NYPD 
		-- both have a "name" instance variable
	
AND

officer class? 
	> officer attributes: name, race, age, gender, badge number
	> race, age, gender, & badge number attributes only show when user selects an officer from a previous list 

Can’t scrape a javascript heavy site so it’s best to show the user a list of officers from the departments, maybe the first 4 (20 isn't necessary) or so & then let the user choose which officer they want more information on 

After consulting with Lantz, the new flow is: 
Welcome Page 
	Select the department 
		A list of officer names come up
			User selects the officer they think they want to get info on 
				An array of more information about the officer loads up (name, race, age, gender, badge number)
					The user can either go back to the Welcome Page, General List, or exit the app

To do list before submitting!! 06/28/2020: 

- [ ] Finish scraping for the general list of officer names for each department 
- [ ] Change the if/else statement in cli.rb to a case statement (too many conditionals)
        - [ ] Run to see if CLI is working and gets user to the general list 
- [ ] Figure out how to go from the general list to a breakdown of each officer’s info for each department 
        - [ ] Make sure to include options for the user to go back / exit if that’s even necessary 
        - [ ] Run to see if program is working, if it is - WRITE BLOG POST & DO DEMO
        - [ ] If not, go back to the drawing board 