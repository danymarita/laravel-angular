## Backend
create mysql DB laravel_angular

cd backend

open .env and change mysql connection below (input username and password)

DB_CONNECTION=mysql

DB_HOST=127.0.0.1

DB_PORT=3306

DB_DATABASE=laravel_angular

DB_USERNAME=

DB_PASSWORD=

composer install

php artisan migrate

composer dump-autoload

php artisan db:seed

php artisan serve --port=8080

Laravel development server started on http://localhost:8080/

## Frontend
cd frontend

npm install

ng serve -o

** Angular Live Development Server is listening on localhost:4200, open your browser on http://localhost:4200/ **