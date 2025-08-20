# README

This app is a test to get tailwind menu to work.  

Steps to create it as is:
   
* rails new --css tailwind -T doable.  No node and no yarn.  I would prefer to keep them out of the equation.
* add the following to main part of the Gemfile:
	    # Use Tailwind CSS [https://github.com/rails/tailwindcss-rails]
        gem "tailwindcss-rails"
        # Use simple_form_tailwind
        gem "simple_form"
        gem "simple_form-tailwind"rails tailwindcss:install was what was needed.
* add the following to group :development, :test
		# Use rspec testing environment
        gem “rspec-rails”
* bundle install
* rails tailwindcss:install
* rails generate simple_form install
* rails generate simple_form:tailwind:install
* rails generate rspec:install
* rails generate scaffold Todo desc:string sequence:integer
* rails db:migrate
* drop in the menu nav html from https://codepen.io/richardjflanigan/pen/xbwYqBb into views/layouts/application.html.erb between <header></header> tags.
* rails s
* http://localhost:3000/todos

Things you may want to cover:

* Rails version 8.0.2
* Ruby version 3.3.0 
