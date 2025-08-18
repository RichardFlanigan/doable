# README

This app is a test to get tailwind menu to work.  

Steps to create it as is:
   
* rails new --css tailwind doable.  No node and no yarn.  I would prefer to keep them out of the equation.
* rails generate scaffold Todo name:string sequence:integer
* rails db:migrate
* drop in the menu nav html from https://codepen.io/richardjflanigan/pen/xbwYqBb into views/layouts/application.html.erb between <header></header> tags.
* rails s
* http://localhost:3000/todos

menu should look like the one in https://codepen.io/richardjflanigan/pen/xbwYqBb.  

What am I missing?  How would I debug the issue?

Things you may want to cover:

* Rails version 8.0.2
* Ruby version 3.3.0 
