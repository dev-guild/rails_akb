
# rails_akb
Step by step create web application using rails

# Pastikan rvm / rbenv sudah terinstall dan sudah menggunakan rails 2.3.1
rvm list
rvm use 2.3.1 --default
# Install rails dan generate app baru
gem install rails
rails new dev_guild
rails server
git init .
git add . -A
git commit -m "initial commit"
# Buat controller baru bernama 'home'
rails generate controller home
git add . -A
git commit -m "add controller home"
buat method `index` di app/controllers/home_controller.rb
buat file `index.html.erb` di app/views/home
modif config/routes.rb
git add . -A
git commit -m "finishing home controller"
buat method `about` di app/controllers/home_controller.rb
buat file `about.html.erb` di app/views/home
modif config/routes.rb
git add . -A
git commit -m "Create home#about"
add `gem ‘devise’` di Gemfile (paling bawah)
bundle install
rails g devise:install
git add . -A
git commit -m "Initial devise configuration"
rails g model user
rails g devise user
rake db:create
rake db:migrate
git add . -A
git commit -m "Create model user & generate devise for user"
Insert snippet into `app/views/layouts/application.html.erb`
```
  <% if user_signed_in? %>
    Logged in as <strong><%= current_user.email %></strong>.
    <%= link_to 'Edit profile', edit_user_registration_path, :class => 'navbar-link' %> |
    <%= link_to "Logout", destroy_user_session_path, method: :delete, :class => 'navbar-link'  %>
  <% else %>
    <%= link_to "Sign up", new_user_registration_path, :class => 'navbar-link'  %> |
    <%= link_to "Login", new_user_session_path, :class => 'navbar-link'  %>
  <% end %>
```
git add . -A
git commit -m "Create sign in and sign up links on all pages"
