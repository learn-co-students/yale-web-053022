# Intro to Rails

<img src="pics/Ruby_On_Rails_Logo.svg.png" alt="Ruby On Rails Logo" width="700"/>

## SWBATs

1. Create a new Rails application
2. Describe differences between Sinatra routing & Rails routing
3. Generate a model
4. Create routes
5. Generate a controller
6. Create actions/methods for a RESTful controller
7. Create views

---

### Outline

- [ ] Compare creating an app with Sinatra to creating an app with Rails
- [ ] Generate a model
- [ ] Create controller, routes, and views
  - [ ] Make route and controller action for `index` and `show` with custom routes
  - [ ] Demonstrate implicit rendering
- [ ] Demonstrate `link_to` helper and path helpers
  - [ ] `rails routes` and `/rails/info/routes`

---

### Demo

\*Use stopwatch

#### Create a new app in Sinatra

```bash
# make new app with subdirectories
corneal new users-app

# make a new model
corneal model Users

# make a new migration
rake db:create_migration NAME=create_users



# migrate
rake db:migrate
```

#### Create a new app in Rails

```bash

```

---

<img src="pics/server-cheer.jpg" alt="server is down" width="500"/>

---

### Rails Commands

- `rails new <app-name>` - create a new Rails app
- `rails c` - open a console
- `rails s` / `rails server` - start server
- `rails routes` - display all the routes in your app, also can viewed at http://localhost:3000/rails/info/routes
- `rails g migration <migration-name> <attribute:data-type> <attribute:data-type>` - generate a migration
- `rails g model <model-name> <attribute:data-type> <attribute:data-type>` - generate a model and a migration to create the table with specified columns
- `rails db:migrate` - run all pending migrations (same as `rake db:migrate` in Phase 1/Sinatra)

---

#### Helpful Bookmarks / Extra Resources

- [Rails Routing From The Outside In](https://guides.rubyonrails.org/routing.html)
- [link_to](https://apidock.com/rails/ActionView/Helpers/UrlHelper/link_to)
- [`byebug`](https://edgeguides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-byebug-gem)
- [List of some companies using Ruby on Rails](https://skillcrush.com/blog/37-rails-sites/)

---

`rails new app-name`

`rails g scaffold user name:string`
`rails generate scaffold modelname attribute:datatype`

`rails d scaffold user name:string`

`rails db:migrate` -> same as `rake db:migrate`

`rails s`
`rails server`
