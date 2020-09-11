# README

# Blush Esthetics

This was created for a local esthetics studio. She needed a simple page that could attract
new customers by: giving her personal information, studio contact information, prices,
and any other updates she wanted to add.
This is still a work in progress. Once the project has been completed to Melissa's
standards, the site will be deployed and a link to the site will be added to this
repository.

Link to the demo site: https://ancient-fortress-25656.herokuapp.com/

## To Be Finished

-styling (the colors and fonts currently in use are demo colors)
-correct data to be entered
-tests

## Technologies

This app has been build using Ruby on Rails, version 6.0.3.1.
For the database  I used PostgreSql with ActiveRecord.
For user authentication: Devise
For picture uploading: Carrierwave

## Setup

  To get setup, run:
  ```
  bundle
  rake db:create
  rake db:migrate
  rake db:seed
  rails s
  ```
  Navigate to ```localhost:3000```
  To have access to the user content, use email: 'melissaann4883@yahoo.com' password: password. To access the user login screen, click on the cat icon at the bottom of every page.
