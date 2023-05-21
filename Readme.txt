

pip install pipenv

python.exe -m pip install --upgrade pip

pipenv shell

pip install django 

django-admin startproject Travel .

python manage.py runserver

python manage.py startapp Travel_Partner

pip install mysqlclient

DATABASES = {
	'default': {
		'ENGINE': 'django.db.backends.mysql',
		'NAME': 'mydb',
		'USER': 'root',
		'PASSWORD': 'admin',
		'HOST':'localhost',
		'PORT':'3306',
	}
}

pip install django_cloudinary_storage

pip install django-jazzmin