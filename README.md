1. Created the app

       rails new capybara-external-redirect-test

2. Add gems to Gemfile
3. `bundle install`
4. Bootstrap Cucumber

       ruby script/rails generate cucumber:install --rspec --capybara

5. Add route, controller method, and feature
6. `rm public/index.html`
7. Run cucumber

       $ bundle exec cucumber

       Using the default profile...
       Feature: Redirect externally

         Scenario: Redirect externally # features/redirect_externally.feature:2
       ["ApplicationController#redirect_externally", "bing.com"]
       ["ApplicationController#redirect_externally", "google.com"]
       ["ApplicationController#redirect_externally", "google.com"]
       ["ApplicationController#redirect_externally", "google.com"]
       ["ApplicationController#redirect_externally", "google.com"]
       ["ApplicationController#redirect_externally", "google.com"]
           When I go to the home page  # features/step_definitions/web_steps.rb:48
             redirected more than 5 times, check for infinite redirects. (Capybara::InfiniteRedirectError)
             ./features/step_definitions/web_steps.rb:49:in `/^(?:|I )go to (.+)$/'
             features/redirect_externally.feature:3:in `When I go to the home page'

       Failing Scenarios:
       cucumber features/redirect_externally.feature:2 # Scenario: Redirect externally

       1 scenario (1 failed)
       1 step (1 failed)
       0m0.266s
