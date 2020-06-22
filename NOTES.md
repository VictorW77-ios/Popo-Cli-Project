1. Plan your gem, imagine your interface 
2. Start with the project structure - GOOGLE 
3. Start with the entry point - the file run 
4. Force that ^ to build the CLI interface 
5. Stub out the interface 
6. Start making things real 
7. Discover objects 
8. Program 

a. What will your app do? What is the user experience?


b. Where will you get your data from? (This might be a website that you will scrape or if you prefer, an API.) 


c. What will you need to do with the data once you have got it? 


d. What classes will you be using? 


e. How will you display data one level deep to the user?


A command line interface that shows police history/reviews 
	greeting: “Please enter officer name, part of name, vehicle license plate number, or badge number” 

	user enters officer name, part of name, vehicle license plate, or badge number
	
	outputs first data set that matches user input as “[officer name], [police department]? Y/n”

	if Y, outputs a rating of that officer, the number of a lawyer in the city with the police department, and gives user the option to input a rating/review of their own 

	if n, sends user to next officer name + police department 
	
	if n again, sends user to next officer name + department — loop 

	if program has no more data to output to user, program asks for additional info


