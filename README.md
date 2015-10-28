# API Service

## Tasks


i. Get all tasks

ii. Get a single task


### Get all tasks

```GET  topicos-api.herokuapp.com/tasks```


#### Response


    {
      "id":"562ee1e0ef5842739000002d",
      "title":"Some Title",
      "course_title":"Some Course Title",       
      "delivery_date":"2015-10-27T02:30:56.306Z"
    }


### Get a single task

```GET  topicos-api.herokuapp.com/tasks/:task_id```


#### Response


    {
      "id":"562ee1e0ef5842739000002d",
      "title":"Some Title",
      "course_title":"Topicos I",
      "status":"open",
      "delivery_date":"2015-10-27T02:30:56.306Z",
      "description":"Some Description",
      "attachment":"Some URL"
    }



# How to install

## Install MongoDB

1. Follow the instructions on https://www.mongodb.org/downloads#production

## Install Application

## How to install
1. Install RVM (https://rvm.io/rvm/install) which includes Ruby;
2. Install Rails: `gem install rails`;
3. Clone - `git clone https://github.com/topicos20152/API.git`
4. Enter in the project's folder: `cd API`;
3. Install the deps: `bundle install`;
4. Run the local server: `rails s`;
5. Open: http://127.0.0.1:3000/admin

# How to code

Follow this if you want to contribute.

1. Choose a issue and comment on it telling the people you will make it.
2. Update your master code: `$ git pull origin master`.
3. Create a branch for your issue: `$ git checkout -b feature-my-awesome-code`.
4. Commit your changes.
5. Push your branch: `$ git push origin feature-my-awesome-code`.
6. Create a Pull-request, from your branch to the Master.
7. Wait for people to revise and apply his changes.
8. Merge the Pull-request and close the issue.