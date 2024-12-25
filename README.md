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
  attachments
  messages
  t_threads
- How to run the test suite

  # Welcome to My Basecamp 2

---

## Task

Problem
The problem to be solved in this project was multifaceted and very varied. Some of the problems we encountered were:
-Syntax Errors: Fixing syntax errors in views, controllers or models.
-Data Validation: Ensuring proper validation of incoming data to avoid inconsistencies or database errors.
-User Management: Implementing user authentication and authorization including login, registration and role management.
-UI Design: Creating a user-friendly and responsive user interface using HTML, bootstrap.
Feature Integration: Integrating features like adding and deleting projects or users etc.
Challenge:
The main thing in this application was to quickly identify problems, solve them efficiently and continuously improve the application:
1-Debugging: Identifying and correcting code errors
2-Testing: testing the proper functioning of the application in order to detect possible problems.
3-Collaboration: this project was supposed to be a group project, but due to the absence of a second member, I had to do it alone

## Description

How did you solve the problem?
to solve the problem that was submitted to us, I continued with the project my basecamp1 ROR after having made
preliminary steps from this project I analyzed then adjusted the application to meet the new expectations, the main problem lay in debugging the
errors present in the code and understanding the mechanism of the ruby ​​​​on rail framework

not having been able to do this project in docode, I do it in my personal git, here is the link, it will allow
you to follow the version history and see all the files because there are too many to copy on docode
in what docode told me, so I only copied the most important files
https://github.com/Kougang/My_basecamp2.git

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
everything that has the right to an interface, so accessing it the first time in the browser takes you to
a login page with recovery or resume options. creation, a new user can be created, after this step
the user is redirected to a home page with user or project management options, clicking on user management
allows to grant or remove administrator rights to a user, we can also delete a user, back on the home page
, clicking on project management allows us to view, create a new project by clicking on
new project, this also gives us the possibility to view a project, by clicking on a project we view it and
we have the possibility to modify it, delete it (to delete a project on which we have already added users requires to first delete these users to be able to delete the project) or add users to this project, the user has the possibility
at any time to disconnect by clicking on the disconnect button on the navigation bar,
once in a project any user can create, delete attachments regardless of the format and moreover admin users can create threads, after the creation of the thread when the admin user clicks on it, he can edit or delete it.
in a thread is associated a mini chat that allows to send messages, users can communicate via the chat with possibilities to edit or delete their messages. an administrator can delete the message of any user in this chat, I let you discover this work

railsserver

# credentials

admin
email:k@gmail.com
pwd: 11111111

user:
email: kougang@gmail.com
pwd: 11111111

you can create your own users and make experimentations

### The Core Team

It was a great pleasure for me to take over an application that I had coded in pairs for 8 months and to be able to get together to add new features.
