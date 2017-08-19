# Welcome to the Rails Back-End for Bacon Listings


## Getting Started

clone the repository

bundle install

## Copy the following line to create database

rails db:create db:migrate db:seed


## Use postman to make restful api calls

example: http://localhost:3000/api/v1/jobs will return all jobs in the database in a json format.

## Technology/Schema

The back-end server is hosted on Heroku:  https://jason-jobs-bacon.herokuapp.com.

Seeds are created with faker gem.

rack-cors gem is enabling cross-origin access.

Json views were built with Jbuilder, which can be found in the views folder.

Played around with rubocop as a linter.

There are 3 models: JobUser, Job, and User

I chose not to create a creator association, but instead give job instances a uid attribute
to associate them to who created the job depending on the current user logged in at the time.
The logic behind this was to give sole authentication responsibilities to the front end and
have only the front end host domain access to this api.

I had previously implemented the Devise gem as a user model, and the simple authentication gem to pair
with the Devise gem to generate tokens. However, I found that this approach was a massive code endeavor.
By cutting this out and using firebase's google auth, I reduced the api code base tremendously.

A user instance is only created when a current user, who did not create the job, applys for the job.
I use the find_or_create_by method to create the user if the user uid coming from the front end is not found.
Once user is created or found, the user object/instance is then pushed to the job's applicants association array.
The front end then uses this job#applicant array to ensure that the user can not apply to the same job twice.     
