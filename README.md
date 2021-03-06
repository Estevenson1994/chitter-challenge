Chitter Challenge
=================

The aim of this challenge was to build a twitter clone which follows the user stories found below:


```
STRAIGHT UP

As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made

As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

HARDER

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

ADVANCED

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep

```

This solution is completed not including the Advanced user story

Follow these instructions to run this program:

1. Fork this repo
2. Run 'bundle install'
3. Set up database (see next section)
4. run 'rackup' and go to your local host (9292 by default)


Database Set Up:
------
```
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE Chitter_Manager;
3. Create the test database using the psql command CREATE DATABASE Chitter_Manager_Test;
3. Connect to each database using psql command \c Chitter_Manager or \c Chitter_Manager_Test;
4. Run the query saved in '01_create_peeps_table.sql' for both;
5. Run the query saved in '02_create_user_table.sql' for both;
```
Once you have set up the project and databases, the program works as follows:

1. You are initially greeted by the Chitter homepage where you can chose to 'view peeps':

![Screenshot](https://i.imgur.com/IQjofUA.png)

2. Once you enter Chitter, you will need to either Log in or Sign Up depending on whether you have an account or not. In this step, when signing up, the information will be stored into the 'users' table where all usernames and emails entered must be unique and the passwords are  encrypted using the ruby gem BCrpyt.

![Screenshot](https://i.imgur.com/orlAH5G.png)

If you already have an account, when logging in, the system will search the 'users' table in the Chitter Managers database, to see if the user exists and the password entered is correct. If neither of these are correct, you will be told so and asked to try again.

![Screenshot](https://i.imgur.com/PANtfYb.png)

3. If username and password are correct you will be taken to the peeps page where you can see all peeps made, at what time they were made and who created that peep.

![Screenshot](https://i.imgur.com/FB6lF0l.png)

4. You can create a new peep, by selecting the 'add new peep' button. Peeps added are stored into the 'peeps' table in the data base.

![Screenshot](https://i.imgur.com/VWFKv8U.png)

5. Once you are done viewing, you can log out and will be given confirmations.

![Screenshot](https://i.imgur.com/H4AlN1y.png) 


Things I would have liked to have done if I had he time:

1. I would have styled the UI using html and css to make the pages more attractive.
2. I would have used an Object Relational Mapper such as Datamapper to make my code look more eligant.
