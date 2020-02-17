"""truckpad_project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from rest_framework.routers import DefaultRouter
from truckpad_driver_register.views import *

router = DefaultRouter()
router.register(r'truck_types', TruckTypeViewSet, 'truck_types')
router.register(r'drivers', DriverViewSet, 'drivers')
router.register(r'drivers_with_own_vehicle', DriverWithOwnVehicle, 'drivers_with_own_vehicle')
router.register(r'drivers_without_cargo', DriverWithoutCargo, 'drivers_without_cargo')
router.register(r'driver_has_cargo_day', DriverHasCargoDay, 'driver_has_cargo_day')
router.register(r'driver_has_cargo_week', DriverHasCargoWeek, 'driver_has_cargo_week')
router.register(r'driver_has_cargo_month', DriverHasCargoMonth, 'driver_has_cargo_month')
router.register(r'trips', TripViewSet, 'trips')

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include(router.urls)),
]
