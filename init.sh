sudo cp etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo cp etc/hello.py /etc/gunicorn.d/hello.py
# sudo gunicorn -c /etc/gunicorn.d/hello.py hello:app
sudo gunicorn -b 0.0.0.0:8080 hello:app
sudo /etc/init.d/gunicorn restart