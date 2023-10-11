# Travel-Partner


## Project Installation

Make sure you refer to the django version you are using. A quick way to start a new django project is to run the
following command:

* Install Django:

```shell
pip install django
```

* Install Python Pipenv:

```shell script
pip install pipenv
```

* Go to your desired development folder and create a new django project:

```shell
django-admin startproject Codemonk && cd Codemonk
```

* Install Django on you virtual environment.

```shell
pipenv install django
```

* Install  Requirements

```shell script
pip install requirements.txt
```

* Activate your new virtual environment:

```shell
pipenv shell
```

* create a new django App:

```shell
python manage.py startproject Travel
```

* Add Travel to INSTALLED_APPS in you new Django Project.

```python
INSTALLED_APPS = [
    ...,
    'Travel',
    ...,
]
```

* Perform database migrations:

```shell
python manage.py migrate
```

* Add Django SuperUser and follow the prompts.

```shell
python manage.py createsuperuser
```

* Run your project:

```shell
python manage.py runserver
```

* Navigate to Project root view assigned in your project urlpatterns setting (typically http://127.0.0.1:8000/
if you followed this installation guide).
* Use your superuser credentials to login.


## Make Changes


Settings.py
{

    Billing Process
    -----------------

        EMAIL_HOST_USER =  ' YOUR MAIL ID'
        EMAIL_HOST_PASSWORD = 'MAIL PASSWORD '



    Storage of the project
    ------------------------

        CLOUDINARY_STORAGE={ "YOUR API KEY "}

}

views.py

{

    email process
    ------------------------

        add_booking():
            from_email = 'Travel Partner <Your Mail ID>'


}

main.html

    script file :

        online Chatbot
        -------------------

            kommunicateSettings = "Your API Key";
