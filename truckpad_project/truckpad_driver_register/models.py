from django.db import models
from datetime import datetime


class Gender(models.Model):
    gender = models.CharField(max_length=30)

    def __str__(self):
        return self.gender


class DriverLicense(models.Model):
    driver_license = models.CharField(max_length=1)

    def __str__(self):
        return self.driver_license


class TruckType(models.Model):
    truck_code = models.PositiveIntegerField(primary_key=True)
    type_name = models.CharField(max_length=30)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.type_name


class Driver(models.Model):
    name = models.CharField(max_length=100)
    age = models.DecimalField(max_digits=3, decimal_places=0)
    gender = models.ForeignKey(Gender, on_delete=models.CASCADE)
    license_type = models.ForeignKey(DriverLicense, on_delete=models.CASCADE)
    truck_type = models.ForeignKey(TruckType, on_delete=models.CASCADE)
    has_vehicle = models.BooleanField(default=False)
    has_shipment = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name


class Trip(models.Model):
    trip_date = models.DateTimeField(auto_now=False, auto_now_add=False,
                                     default=datetime.now())
    driver = models.ForeignKey(Driver, on_delete=models.CASCADE)
    origin_name = models.CharField(max_length=150)
    origin_latitude = models.CharField(max_length=15)
    origin_longitude = models.CharField(max_length=15)
    destiny_name = models.CharField(max_length=150)
    destiny_latitude = models.CharField(max_length=15)
    destiny_longitude = models.CharField(max_length=15)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.origin_name
