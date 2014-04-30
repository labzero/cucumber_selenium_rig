## Intro
Welcome to a Cucumber/Capybara/Selenium testing framework.  You can write Cucumber features to invoke Selenium actions.

## Installation
Once you've got Ruby 2.0 or greater installed simply run the following at the command line:

```
$ gem install bundler
```

```
$ bundle install
```

That's it!

## Configuration

Update config/environments.yml and config/cucumber.yml to match the config info in your environments.

Create a SauceLabs account for your organization and use the code 'labzero' to get some extra free minutes.  Then edit support/drivers.rb with your SauceLabs API credentials.

You will also likely need to either use those credentials in the Sauce Connect Jenkins plugin or install SauceConnect as a daemon somewhere that has access to the environments managed by CI.

## Example Usage

```
$ cucumber -p dev
```

To point the suite at the QA system:
```
$ cucumber -p qa
```

To smoke test the QA system with Chrome on Windows 7:
```
$ cucumber -p qa-smoke BROWSER=sauce_chrome_win7
```


To run only the @foo scenarios against qa in an Android browser and grab screenshots:
```
$ cucumber --tags @foo SCREENS=true ENVIRONMENT=qa BROWSER=sauce_android_4_0
```

## License
This example selenium rig is released under the MIT License.

