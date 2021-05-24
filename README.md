# Rapid Application Development: Fashion Website with RoR 5

**Group members:** Reuben Abraham s3717497, Jeff Madrid s3707189

**Contribution:** 50/50

**Level Attempted:** 90+ (Multiple Browser feature only)

**Time Sheet:** [Summary](../master/Toggl_Track_summary_report_2021-04-04_2021-05-31.pdf) and [Detailed time entries](../master/Toggl_time_entries_2021-04-04_to_2021-05-31.pdf) (access via the repo)

**Deployed App:** [Heroku](https://tranquil-crag-04131.herokuapp.com)

**Last Heroku log:** 

jefferson.imadrid@gmail.com: Deployed 5de12b21
Today at 1:35 PM · v30

**Git Repository:** [RAD2021_s3707189_s3717497](https://github.com/jeffmadrid/RAD2021_s3707189_s3717497)

## Notes
Due to Turbolinks, some javascript features may not seem to work. For these, refresh the page to get it working. Eg: Sidebar feature

You can see the database here
![Database](../master/RAD%20Assignment.png)





# For student purposes only

## Assignment commands
```
rails g scaffold Item name:string description:text image_link:text price:float arrival_date:date
rails g controller collections index men women kids new_ins
rails g model visitor email:string
rails g model collection_item category:integer item:references
rails g controller saved index
rails g model user name:string email:string password_digest:string provider:string uid:string token:string secret:string profile_image:string checkouts:integer // needs bcrypt and put has_secure_password in user class
rails g model tag_item tag:integer item:references
rails g model item_image item:references image_link
rails g mailer User reset_password
rails g model item_variant colour:integer size:integer item:references
rails g model bag_item quantity:integer purchased:boolean item_variant:references user:references
rails g model saved_item item:references user:references
rails g model rating value:integer user:references
```

Can undo all migrations with `rails db:migrate VERSION=0`. 
Then call `rails db:migrate`
Then `rails db:reset`
It also does the job of seeding data, and means migration files can be edited directly

## Commands to run
```
ruby -v
rails -v

rvm list
rvm remove ruby-2.6.3
rvm use --default --install 2.7.2

gem install railties -v '5.2.5'
```

```
rails new RAD2021_s3707189_s3717497 --database=postgresql

# An error occurred while installing pg (1.2.3), and Bundler cannot continue.

# make sure all gems are installed, ensure by installing bundler first
gem install bundler

bundle install
# still pg gem cannot be installed, this is dependent on postgres installed on the OS
```

```
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt install postgresql postgresql-contrib

sudo service postgresql start
sudo sudo -u postgres psql
CREATE USER ubuntu SUPERUSER PASSWORD 'password';
```

```
bundle install

# if it fails try 
gem install pg -v '1.2.3' --source 'https://rubygems.org/'

# if it still fails install libpq-dev
sudo apt-get update
sudo apt install libpq-dev

# we only need the client side of postgres, so app can act as client to postgres db

# now this should be fine
bundle install
```

```
rails s

# app should be runnning but there is not database on postgres created yet
rails db:create
```

```
npm uninstall -g heroku-cli
sudo snap install heroku --classic
npm install -g heroku

heroku login -i
# login using your own heroku credentials
heroku create

git remote -v

# deploy git:master to heroku:master
git push heroku master

# deploy git:HEAD (curent branch checked out) to heroku:master
git push heroku +HEAD:master

# now app should be on the the heroku endpoint

```


