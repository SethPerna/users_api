# Users API

![languages](https://img.shields.io/github/languages/top/SethPerna/users_api?color=red)
![PRs](https://img.shields.io/github/issues-pr-closed/SethPerna/users_api)
![rspec](https://img.shields.io/gem/v/rspec?color=blue&label=rspec)
![simplecov](https://img.shields.io/gem/v/simplecov?color=blue&label=simplecov) <!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/contributors-1-orange.svg?style=flat)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->


## Background and Description

Users API has two endpoints. The first a index to retreive all users and their data. Phone numbers are validated for US format and can take any type of valid input regarding special characters. The second endpoint is a post to users create which takes CSV data and uploads each row to the database. Only valid records will be created.


## Requirements and Setup (for Mac):

### Ruby and Rails
- Ruby Version 2.7.4
- Rails Version 5.2.7

### Gems Utilized
- RSpec 
- Pry
- SimpleCov
- Capybara
- Shoulda-Matchers 
- Factory_Bot_Rails
- Faker
- jsonapi-serialize
- Figaro
- Webmock
- VCR
- csv
- phonelib

## Setup
1. Clone this repository:
On your local machine open a terminal session and enter the following commands for SSH or HTTPS to clone the repositiory.


- using ssh key <br>
```shell
$ git clone git@github.com:SethPerna/users_api.git
```

- using https <br>
```shell
$ git clone https://github.com/SethPerna/users_api
```

Once cloned, you'll have a new local copy in the directory you ran the clone command in.

2. Change to the project directory:<br>
In terminal, use `$cd` to navigate to the backend Application project directory.

```shell
$ cd users_api
```

3. Install required Gems utilizing Bundler: <br>
In terminal, use Bundler to install any missing Gems. If Bundler is not installed, first run the following command.

```shell
$ gem install bundler
```

If Bundler is already installed or after it has been installed, run the following command.

```shell
$ bundle install
```

There should be be verbose text diplayed of the installation process that looks similar to below. (this is not an actual copy of what will be output).

```shell
$ bundle install
Using rake 13.0.6
Using concurrent-ruby 1.1.9
Using i18n 1.9.1
Using minitest 5.15.0
Using thread_safe 0.3.6
Using tzinfo 1.2.9
Using activesupport 5.2.6
Using builder 3.2.4
Using erubi 1.10.0
Using mini_portile2 2.7.1
Using racc 1.6.0
Using nokogiri 1.13.1
Using rails-dom-testing 2.0.3
Using crass 1.0.6
Using loofah 2.13.0
Using rails-html-sanitizer 1.4.2
Using actionview 5.2.6
Using rack 2.2.3
Using rack-test 1.1.0
Using actionpack 5.2.6
Using nio4r 2.5.8
Using websocket-extensions 0.1.5
Using websocket-driver 0.7.5
Using actioncable 5.2.6
Using globalid 1.0.0
Using activejob 5.2.6
Using mini_mime 1.1.2
Using mail 2.7.1
Using actionmailer 5.2.6
Using activemodel 5.2.6
Using arel 9.0.0
Using activerecord 5.2.6
Using marcel 1.0.2
Using activestorage 5.2.6
Using msgpack 1.4.4
Using bootsnap 1.10.3
Using bundler 2.1.4
Using byebug 11.1.3
Using coderay 1.1.3
Using diff-lcs 1.5.0
Using docile 1.4.0
Using factory_bot 6.2.0
Using method_source 1.0.0
Using thor 1.2.1
Using railties 5.2.6
Using factory_bot_rails 6.2.0
Using faker 2.19.0
Using ffi 1.15.5
Using jsonapi-serializer 2.2.0
Using rb-fsevent 0.11.1
Using rb-inotify 0.10.1
Using ruby_dep 1.5.0
Using listen 3.1.5
Using pg 1.3.1
Using pry 0.14.1
Using puma 3.12.6
Using sprockets 4.0.2
Using sprockets-rails 3.4.2
Using rails 5.2.6
Using rspec-support 3.10.3
Using rspec-core 3.10.2
Using rspec-expectations 3.10.2
Using rspec-mocks 3.10.3
Using rspec-rails 5.1.0
Using shoulda-matchers 5.1.0
Using simplecov-html 0.12.3
Using simplecov_json_formatter 0.1.3
Using simplecov 0.21.2
Using spring 2.1.1
Using spring-watcher-listen 2.0.1
```

If there are any errors, verify that bundler, Rails, and your ruby environment are correctly setup.

4. Database Migration<br>
Before using the web application you will need to setup your databases locally by running the following command

```shell
$ rails db:{:drop,:create,:migrate,:seed}
```


5. Startup and Access<br>
Finally, in order to use the web app you will have to start the server locally and access the app through a web browser. 
- Start server

```shell
$ rails s
```

- Open web browser and visit link
    http://localhost:3000/api/v1/users
    
At this point you should be taken to a page with an example JSON response for a user

## Endpoints provided 


get '/api/v1/users' 

before post 

![Screen Shot 2022-03-21 at 7 05 25 PM](https://user-images.githubusercontent.com/90224504/159377348-e230b82f-9649-4f48-967d-e259170cc21a.png)

post '/api/v1/users'

![Screen Shot 2022-03-21 at 10 51 15 PM](https://user-images.githubusercontent.com/90224504/159398247-5b988680-fb53-40f3-9fe5-b2f86c8963e3.png)

after post 

get '/api/v1/users'

![Screen Shot 2022-03-21 at 10 52 04 PM](https://user-images.githubusercontent.com/90224504/159398342-1597bed0-8abd-436e-b39e-7937cd035808.png)

CSV data used 

![Screen Shot 2022-03-21 at 10 52 29 PM](https://user-images.githubusercontent.com/90224504/159398392-4b38cc95-bdf1-4c50-9798-47701daef681.png)



## **Contributors** ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
    
  <tr>
      
   <td align="center"><a href="https://github.com/sethperna"><img src="https://avatars.githubusercontent.com/u/90224504?s=400&u=b0c82b444d7708000e2747f860d4d2c3efb616cc&v=4" width="100px;" alt=""/><br /><sub><b>Seth (he/him)</b></sub></a><br /><a href="https://github.com/sethperna/users_api/commits?author=sethperna" title="Code">💻</a> <a href="#ideas-sethperna" title="Ideas, Planning, & Feedback">�</a> <a href="https://github.com/sethperna/users_api/commits?author=sethperna" title="Tests">⚠️</a> <a href="https://github.com/sethperna/users_api/pulls?q=is%3Apr+reviewed-by%3sethperna" title="Reviewed Pull Requests">👀</a></td>
      
    </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification.
<!--
