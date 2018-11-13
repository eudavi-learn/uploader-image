# Uploader Image

Example how to use cloudinary with carrierwave.

### Clone the repository

```shell
git clone https://github.com/Davigl/uploader-image.git
cd uploader-image
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.5.1`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.5.1
```

### Install dependencies


```shell
1. Install Dependencies: `bundle install`
```

### Set environment variables

Using [Figaro](https://github.com/laserlemon/figaro):

See [config/cloudinary.yml](https://github.com/Davigl/uploader-image/blob/master/config/cloudinary.yml) and set with cloudinary settings.

### Initialize the database

```shell
rails db:create db:migrate
```

### Add heroku remotes

Using [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli):

```shell
heroku git:remote -a project
heroku git:remote --remote heroku-staging -a project-staging
```

## Server

```shell
rails s
```

## Deploy

### With Heroku pipeline (recommended)

Push to Heroku staging remote:

```shell
git push heroku-staging
```

Go to the Heroku Dashboard and [promote the app to production](https://devcenter.heroku.com/articles/pipelines) or use Heroku CLI:

```shell
heroku pipelines:promote -a project-staging
```

### Directly to production (not recommended)

Push to Heroku production remote:

```shell
git push heroku
```
