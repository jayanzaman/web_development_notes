# A Fully Working Rails App
- - - -
## Terminal Commands
### Setting Up the App
* `rails new app_name —database=postgresql`
- `cd app_name`
- `rails db:create`
- `rails g model Model_name item1:string item2:integer` Notice how the Model_name is ~Capitalized~ and ~Singular~
> Migrate folder with a new migration should have been created  
* `rails db:migrate` - migrations files only run once
* Check to see if **db/schema.rb** file has been updates
* If we want to use a gem such as ‘faker’ we have to edit the **Gemfile** and then run `bundle install`
* Once **schema.rb** is updated then seed the database in **db/seeds.rb**
* Run migration file using rails `db:migrate`
> Once a migration file has been fun in a computer, it doesn’t run again so don’t edit migration file unless necessary. If you do need to edit see [these notes](https://gist.github.com/bryanmytko/b0407ead43bac5e93c4f8153ba3b9aae)  
- - - -
> Another to create a full CRUD is to use scaffold but be careful with scaffold because it does things magically and debugging magic is HARD  
*  `rails g scaffold Model_name item1:string item2:integer`
> To create database using scaffold with multiple tables with association you can do the following:  
*  `rails g scaffold Model1 item1:string item2:integer`
*  `rails g scaffold Model2 model1:references item1:string item2:integer`
- [ ] Need to figure out how to reference using scaffold
- - - -

### Important Commands to know
* `rails routes` commands returns 
```
       Prefix Verb   URI Pattern                   Controller#Action
    appjayans GET    /appjayans(.:format)          appjayans#index
              POST   /appjayans(.:format)          appjayans#create
 new_appjayan GET    /appjayans/new(.:format)      appjayans#new
edit_appjayan GET    /appjayans/:id/edit(.:format) appjayans#edit
     appjayan GET    /appjayans/:id(.:format)      appjayans#show
              PATCH  /appjayans/:id(.:format)      appjayans#update
              PUT    /appjayans/:id(.:format)      appjayans#update
              DELETE /appjayans/:id(.:format)      appjayans#destroy
```
* `rails s` to start server
* `ctrl + c` to get out of server
* `rails c` to get into rails console
* `command + d` to get out of console
## Folders
1. Config
	* routes.rb
2. db
	1. migrate
		* yyyymmddhhmmss_create_table.rb
	* schema.rb
	* seeds.rb
3. app
	1. controllers
		* application_controller.rb
		* users_controller.rb
		* modelname_controller.rb
	2. models
		1. concerns
		* application_record.rb
		* user.rb
	3. views
		1. layouts
		2. users
			* index.html.erb
			* show.html.erb
			* edit.html.erb
			* _form.html.erb
			* new.html.erb
	4. assets
		1. images
		2. javascripts
		3. stylesheets

## Files
### routes.rb
```
Rails.application.routes.draw do
	root to: "table_name#index"
  resources :users, only: [:index,:create,:destroy,:show,:update]
end
```
### schema.rb
* Check if code similar to this exists. 
> Typically schema file should be created by the computer and there shouldn’t be need to edit it ourselves unless we want to add references to other tables.  
```
  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "company"
    t.string   "feedback"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
```
### seeds.rb
* Seeding the database should follow something like below: Notice how ‘faker’ is being used for this
```
User.delete_all

100.times do 
  name = Faker::Name.name
  User.create(name: name,
              email: Faker::Internet.email(name),
              company: Faker::Company.name,
              feedback: Faker::Hacker.say_something_smart)
end
```

### Gemfile
* Add any gem that you might need that’s not already in the file
* Example: `gem ‘faker’` 
* Run `bundle install` in the terminal after any addition of gem
 ~**List of popular gems**~
* [faker](https://github.com/stympy/faker)
### models/application_record.rb
```
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
```
### models/user.rb
```
class User < ApplicationRecord
end
```
> User inherits the properties of ApplicationRecord which in turn inherits from ActiveRecord::Base  
### controllers/application_controller.rb
Check to see if something similar to this exists.
```
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
```

### controllers/users_controllers.rb
This is what a basic controller file should look like:
```
class UsersController < ApplicationController
def index
    @users = User.all
end  

def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
```

