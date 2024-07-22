# Blog-rails

A project made with ruby ​​on rails and Bootstrap

# Requirements

The following are requirements to be able to build and run this application:

- Ruby 3.3.3
- Rails 6.1.7.8
- Gems:
  - Devise
  - simple_form   

# Build

The following are steps for building and running this application:

1. Clone the repository
Run the following commands in your terminal:

```
git clone git@github.com:serialexperimentscarina/rails-blog.git
cd rails-blog
```

2. Install dependencies
Run the following command to install all gem dependencies:

```
bundle install
```

3. Create and initialize databases

Run the following commands to set up the databases:

```
rails db:setup
rails db:migrate
```

4. Run the server
Run the following command to start the server:

```
rails s
```

Now, just visit 'localhost:3000' to see the application
