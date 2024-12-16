# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version
  3.2.2
  rails:7.3.1.2
- System dependencies

- Configuration

- Database creation
  rails db:create

- Database initialization
  create table:
  project,
  users,
  users_project

- How to run the test suite

  # Welcome to My Basecamp 1

---

## Task

problem
The problem to be solved in this project was multifaceted and very varied. We encountered certain problems including the following:
-Syntax errors: Fixed syntax errors in views, controllers or models.
-Data Validation: Ensure proper validation of incoming data to avoid inconsistencies or database errors.
-User Management: Implementation of user authentication and authorization, including login, registration and role management.
-User Interface Design: Created a friendly and responsive user interface using HTML, CSS and JavaScript.
Feature integration: Integration of features such as adding and removing projects or users etc.
challenge:
The main thing in this application was to quickly identify problems, resolve them efficiently and continually improve the application:
1-Debugging: Identifying and correcting code errors
2- Tests: test the correct functioning of the application in order to detect any possible problems.
3- Collaboration: we worked as a team to share knowledge and resolve problems more effectively.

## Description

How have you solved the problem?
to solve the problem submitted to us, we started by building a ror project after taking preliminary
steps from this project we analyzed then designed the application, the main problem lay in debugging the
errors present in the code and the understanding the mechanism of the ruby on rail framework

## Installation

How to install your project? npm install? make? make re?
To install this project it is necessary to follow the following steps:
1-download and install the latest version of ruby via rubyinstaller.org
2-install ruby on rail the framework used in this program via gem install rails
3-Create a new Rails project: Use the rails new command to create a new Rails project: rails new project_name
4-Database configuration: Configure your database in the config/database.yml file. Choose the database you want to use, here we use sqlite3
5-Create the database: Run the rails db:create command to create the database defined in database.yml:rails db:create
6-Generate resources: Use Rails generators to create resources such as models, controllers, views, etc: rails generate scaffold
7-Running migrations: Run migrations to apply schema changes to the :rails db:migrate database
8-Start the server: Start the Rails server to start your application: rails server
9-then access the project in your browser via the following url: http://127.0.0.1:3000

## Usage

the operation of our project is as follows, for more understanding we will only base ourselves on
everything that has the right to an interface, so accessing the first time in the browser takes you to
a connection page with recovery or recovery options. creation, a new user can be created, after this step
the user is redirected to a home page with user or project management options, clicking on user management
allows you to grant or withdraw the right to admin to a user, we can also delete a user, back on the home
page, clicking on project management allows us to visualize, to create a new project by clicking on
new project, it also gives us the possibility of view a project, by clicking on a project we view it and
we have the possibility to edit it, delete it or add users to this project, the user has the possibility
at any time to disconnect by clicking on the log button out present on the navbar, here is a complete
explanation of how our application works

rails server

### The Core Team

working in pairs allowed us to bring this project to fruition, it was a great delight to be able to talk
with a complete stranger and to do something concrete with this person, we hope to be able to complete our course

<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering School's Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px' /></span>

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
