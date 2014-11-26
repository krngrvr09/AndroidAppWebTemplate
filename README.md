AndroidAppWebTemplate
=====================

Backend for the android template.

To use this template
* Go to https://github.com/krngrvr09/AndroidAppTemplate and follow instructions.
* Go to the directory where you want you rails backend to exist.
* ``git clone https://github.com/krngrvr09/AndroidAppWebTemplate.git``
* ``cd AndroidAppWebTemplate``
* ``bundle install``
* ``rake db:migrate``
* ``rails server``

Understanding how this works:

* As soon as you open the android app, it sends a request to '<serverURL>/api/temp/show'. 
* A namespace for api routes have been created. It knows which controller to run, on which request.
* The controller template_models#show is run. The controller is in app/controllers/api/template_models.rb
* The controller has a show method, which is responsible for sending a JSON file back to your app.
* The JSON file exists in app/views/api/template_models/show.json.erb.
* The JSON in this file is sent back to your app as a string. 
* A TextView in the app, displayes this string. which is ' "lol":"lol" '.

What you can do now.
* Create your own models and controllers in the rails web app, and similarly send results on different requests, requesting different types of data.
* Create your own Activities and fragments in the app. Request different types of data, and parse them show it your way.



