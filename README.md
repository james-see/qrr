# what

the code for qrr.codes

## how

This project is vue.js and django for the backend.

### Pre-requisites:

Python 3.9+ (recommend using pyenv and installing it)

You should be familiar with python and javascript to make this work.

Vue via `npm install -g @vue/cli`

### quickstart steps

1. run pipenv shell
2. run pipenv install which reads from the Pipfile, if not, there is a requirements.txt file in qrrserver folder
3. start the django server
4. in a separate terminal window transpile the code for production and run python http.server from the public folder

## faqnp

1. How did you create this?

Following [this guide](https://medium.com/@samy_raps/simple-movies-web-app-with-vue-vuetify-and-django-part-1-setup-6351c02327a5) originally and building off of it from there.

Actually, that guide really sucks. [This](https://stackabuse.com/single-page-apps-with-vue-js-and-flask-jwt-authentication/) one may be better.

2. Where are the clean and build and run commands in a Makefile?

Coming soon.
