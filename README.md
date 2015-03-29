Qiang Books
===========

The books I have read.

# Information

- Hosted on [Heroku](http://qiang-books.herokuapp.com)
- Powered by [Ruby on Rails](http://rubyonrails.org)

# Installation

```ruby
heroku config:set EMAIL=[...]
heroku config:set ABOUT_ME=[...]
heroku run rake db:migrate db:seed_fu
heroku run rails console
Admin.create!({ :email => '...', :password => '...', :password_confirmation => '...' })
```

# License

[MIT](http://opensource.org/licenses/MIT)