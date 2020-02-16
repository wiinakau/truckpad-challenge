from rest_framework.viewsets import ModelViewSet
from .models import TruckType, Driver, Trip
from .serializers import TruckTypeSerializer, DriverSerializer, TripSerializer


class TruckTypeViewSet(ModelViewSet):
    queryset = TruckType.objects.all()
    serializer_class = TruckTypeSerializer


class DriverViewSet(ModelViewSet):
    queryset = Driver.objects.all()
    serializer_class = DriverSerializer


class DriverWithOwnVehicle(ModelViewSet):
    queryset = Driver.objects.filter(has_vehicle=True)
    serializer_class = DriverSerializer


class DriverWithoutCargo(ModelViewSet):
    queryset = Driver.objects.filter(has_cargo=False)
    serializer_class = DriverSerializer


class TripViewSet(ModelViewSet):
    queryset = Trip.objects.all()
    serializer_class = TripSerializer
