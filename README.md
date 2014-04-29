== Intro
Welcome to the Cucumber/Capybara/Selenium testing framework.  You can write Cucumber features to invoke Selenium actions.

== Installation
Once you've got Ruby 2.0 or greater installed simply run the following at the command line:

$gem install bundler
$bundle install

That's it!

== Running your first test
Assuming that you have the application running locally on port 8080:

$cucumber -p dev

To point the suite at the QA system:

$cucumber -p qa

