# truckpad-challenge
API - TruckPad Challenge

### Getting Started

1. Install the virtualenv:
* sudo apt-get install python3-venv
2. Create a virtyal environment:
* python3 -m venv venv
3. Active the virtual environment:
* source venv/bin/activate
4. Install the requirements of the project:
* pip install -r requirements.txt
5. On path (/truckpad_project) make the migrations of the models:
* python manage.py makemigrations
6. Migrate the models:
* python manage.py migrate
7. Load the data in db.sql:
* python manage.py loaddata db.json
8. Run the server:
* python manage.py runserver

### Routers/URLs

** Drivers **
Show all drivers
GET
- drivers/

Create a new driver	
POST
- drivers/

Update the driver
PUT/PATCH
- drivers/:id/

Delete the driver
DELETE
- drivers/:id

** Driver with cargo day **
GET
- driver_has_cargo_day/

** Driver with cargo week
GET
- driver_has_cargo_week/

** Driver with cargo month **
GET
- driver_has_cargo_month/

** Drivers with own Vehicle **
GET
- drivers_with_own_vehicle/

** Drivers without cargo **
GET
- drivers_without_cargo/

** Trucks **
Show all trucks
GET
- truck_types/

** Trips **
Show all trips
GET
- trips/
