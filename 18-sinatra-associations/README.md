# Sinatra Associations

![recipe 1](pics/recipe2.jpg)

---

## SWBATs

1. Use ActiveRecord association methods on models in a Sinatra application
2. Create multiple controllers to handle multiple RESTful resources
3. Use ActiveRecord associations to look up information in a view file
4. Use the `<select>` tag to display a dropdown menu

---

### Outline

- [ ] Add a second model to our domain

- [ ] Solve user stories for our application and see how they can be solved with RESTful conventions

  - As a user, I can view all the recipes for one user on the show page

  - As a user, I can create new recipes

- [ ] List the instances related model on the show page for the class that `has_many` of the other class
- [ ] Create the `new` and `create` routes for the other model (with `belongs_to`)

---

![recipe 2](pics/recipe3.jpg)

```
$ corneal model user username:string age:integer
```

This will generate a migration file for the model with the attributes you specify, as well as creating a class in your `app/models` folder that inherits from ActiveRecord.

```
$ corneal controller users
```

This will generate a `users_controller` file with the 7 RESTful routes, and their corresponding view files for the `index`, `new`, `show` and `edit` routes. It also updates your `config.ru` file to use the newly created controller.

More info: [Corneal Documentation](https://github.com/thebrianemory/corneal)

---

![recipe 3](pics/recipe1.jpg)

## Controllers in Sinatra

_app/controllers/users_controller.rb_

```rb
  class UsersController < ApplicationController
    # user routes here!
  end
```
