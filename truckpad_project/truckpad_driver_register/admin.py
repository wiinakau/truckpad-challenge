from django.contrib import admin
from .models import Gender, DriverLicense, TruckType, Driver, Trip

admin.site.register(Gender)
admin.site.register(DriverLicense)
admin.site.register(TruckType)
admin.site.register(Driver)
admin.site.register(Trip)
