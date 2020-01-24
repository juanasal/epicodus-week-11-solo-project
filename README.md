# Foodee Review

#### An app for reviewing specialty foods, January 24, 2020

#### By Jonathan Salfen

## Description

Foodee Review is an app for users to review specialty food products.  See specifications for further detail.

Find this project at https://github.com/jonathansalfen/epicodus-week-11-solo-project

## Project Learning Goals


- Database is set up correctly and backup in root directory.
- Correct set up of a one-to-many relationship.
- Sinatra has required CRUD functionality.
- Project demonstrates a thorough understanding of this weeks concepts. If prompted, you can discuss your with an instructor using correct terminology.
- Project is in a polished, portfolio-quality state.
- Objects are created from a custom class with custom methods.
- Specs have complete coverage for the behaviors that need to be tested.
- All specs are passing.
- Logic is easy to understand.
- Code has proper indentation and spacing.
- Variable names are descriptive.
- Good Git documentation (regular commits with clear, consistently formatted messages and complete README).
- Message syntax should complete the sentence "This commit will..."; for example "update image files on the home page".
- README should include application name, author name, description, setup instructions, licensing.

EDIT ABOVE AFTER


## Specifications / Routing

| HTTP/CRUD | Route | Class -> Method |
| ----------- | ----------- | ----------- |
<!-- | GET/READ | / | Project -> .all(), Volunteer -> .find_by_project() |
| POST/CREATE | / | Project -> .new() |
| GET/READ | /:project_id | Project -> .all() |
| DELETE | /:project_id | Project -> .delete() |
| DELETE | /:project_id | Project -> .remove_volunteer() |
| POST/CREATE | /:project_id | Project -> .add_volunteer() |
| PATCH/UPDATE | /:project_id | Project -> .edit_name() |
| GET/READ | /project_unassigned | Volunteer -> .find_unassigned() |
| DELETE | /project_unassigned | Volunteer -> .delete() |
| PATCH/UPDATE | /project_unassigned | Volunteer -> .edit_name() |
| POST/CREATE | /project_unassigned | Volunteer -> .new() | -->

## User Stories

- Any others.....?
- As an admin, I should be able to log in and log out of the application.
- As an admin, I should be able to add, update and delete products.
- As an admin, I should be able to add reviews.
- As an admin, I want to ensure that other users don't have access to CRUD functionality.
- As a user, I want to be able to create an account and add a review to a product. (A product can have many comments.) This is the only CRUD functionality a user can have.

## Setup/Installation Requirements

** You will need Ruby 2.5.1 installed on your machine for this program to work properly**

1. Go to the [project repository on GitHub](https://github.com/jonathansalfen/epicodus-week-9-solo-project).
2. Select the **Clone or Download** button and copy the link.

In your machines terminal, type:
3. `git clone [insert link here]` to download the file.
4. `cd [file name]` into the home directory of the file.
5. `bundle` to install the gems in the Gemfile.
6. `ceatedb volunteer_tracker` to create the PSQL database (You need Postgres installed on your computer for this step.)
7. `psql database_backup.sql < volunteer_tracker` in the home directory to upload the database.
8. `createdb -T volunteer_tracker volunteer_tracker_test` to create a test copy of the database.
9. `postgres` to start the Postgres server.

Leave the Postgres server running, and in a different terminal window, type:
10. `ruby app.rb` to run the program.

EDIT ABOVE AFTER

## Known Bugs

At this time there are no known bugs.

## Support and contact details

If you have any issues, contact the creator through github @jonathansalfen.

## Technologies Used

This project uses:
- Ruby version 2.5.1
- Sinatra
- Postgres
- PostgreSQL

EDIT ABOVE AFTER


### License

*Use of this program is free and open to the public*
