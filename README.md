#  EpiFlickr
## *By Stephanie Gurung & Katarina Tuttlet*

A Flickr Clone that has authorization using Devise, image upload using Paperclip, and allows users to upload images, comment on others' images, tag their own images, and add favorite images. 

## Technologies Used

* **Application**: *Ruby on Rails 5, Devise, Paperclip*<br>
* **Testing**: *Rspec, Capybara, Simplecov, FactoryGirl*<br>
* **Database**: *Postgres, ActiveRecord*

Installation
------------

Install *EpiFlickr* by cloning the repository.  
```
$ git clone https://github.com/stephr3/epiflickr
```

Check to make sure ruby and rails are installed on your machine.  
```
$ ruby -v
$ rails -v
```
If they are not installed, please follow instructions [here](http://guides.rubyonrails.org/getting_started.html#installing-rails) to install ruby on rails.

Install required gems:
```
$ bundle install
```

Run Postgres:
```
$ postgres
```

Navigate to project file and migrate database:
```
$ rake db: create
$ rake db: migrate
```

Start the Rails webserver:
```
$ rails server
```

Navigate to `localhost:3000` in your browser of choice.

License
-------
_This software is licensed under the MIT license._<br>
Copyright (c) 2016 **Stephanie Gurung & Katarina Tuttle**
