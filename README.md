![LaVeeb Logo](https://user-images.githubusercontent.com/42798965/57221989-b5e1c700-7009-11e9-9b91-f5abb60c0ca6.png)

LaVeeb is a content management system for webpages of kindergartens.

## Built With

* [Ruby](https://www.ruby-lang.org/en/) - Version 2.6.1p33
* [Rails](https://rubyonrails.org/) - Version 5.2.3

Gems:

* [Devise](https://github.com/plataformatec/devise) - Version 4.6.2
* [Bootstrap](https://github.com/twbs/bootstrap-rubygem) - Version 4.3.1
* [Summernote](https://github.com/summernote/summernote-rails) - Version 0.8.10.0
* [CarrierWave](https://github.com/carrierwaveuploader/carrierwave) - Version 1.3.1
* [MiniMagick](https://github.com/minimagick/minimagick) - Version 4.9.3
* [Capistrano] (https://github.com/capistrano/capistrano) - Version 3.11.0

## Versioning

We use [Git](https://git-scm.com/) for versioning. For the versions available, see the [Laveeb](https://github.com/sandraon/Laveeb). 


## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You will need:

* Ruby installed in your computer
* Rails installed in your computer

Instructions for installing both of these are [here](https://gorails.com/setup/ubuntu/18.04).

### Installing

Cloning git repo:
```
git clone https://github.com/sandraon/Laveeb
```
Opening the repo root folder:
```
cd Laveeb
```
Installing all Gems:
```
bundle install
```
Creating database (SQLite3):
```
rails db:migrate
```
Adding default data to database (run this command only once):
```
rake db:seed
```
Starting rails server to see your result in a browser:
```
rails s
```
Open webpage in localhost:3000.
Login for admin view in localhost/login.

### Creating user

In Rails console:
```
User.create!(email: 'user e-mail', password: 'user-password')
```

## Authors

See the list of [contributors](https://github.com/sandraon/Laveeb/graphs/contributors) who participated in this project.

## License

This project is licensed under the MIT License.