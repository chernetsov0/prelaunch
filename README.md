## Prelaunch

Prelaunch allows you to restrict access to the Rails app while it is still in development. It supports Rails 3.2.6 and onwards (4 included).

### Installation
Add **Prelaunch** to your Gemfile with:

```ruby
gem 'prelaunch'
```

Run the bundle command to install it.

After you install prelaunch, generate routes and initializer with:

```console
rails generate prelaunch
```

Take a second to ensure that `prelaunch_routes` is at the top of your routes table, like this:

```ruby
Example::Application.routes.draw do
  prelaunch_routes
    
  ...
```

You can also take a look at `config/initializers/prelaunch.rb` to see configuration options.

If you want to customize placeholder page just do:

```console
rails generate prelaunch:view
```

and edit `app/views/prelaunch/index.html`.


### Usage

Immediately after installing gem your app in production environment for every route will show:

```html
Under construction
```

To view contents of your app navigate to:

[http://localhost:3000/prelaunch/letmein](http://localhost:3000/prelaunch/letmein)

After doing so you can continue to use your app normally.

You can configure path prefix `prelaunch` and token `letmein` in `config/initializers/prelaunch.rb`. You can also pass `Array`, `Proc` or `lambda` instead of `String` to `config.token` for more complex token verification.

To give user ability to end the session and logout on some view add:

```ruby
<%= prelaunch_logout_link 'Logout' %>
```

### License

Prelaunch is released under the [MIT License](http://www.opensource.org/licenses/MIT).
