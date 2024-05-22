cd src
if [ ! -d ./app/ ]; then
    django-admin startproject app
fi
cd app
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:8000