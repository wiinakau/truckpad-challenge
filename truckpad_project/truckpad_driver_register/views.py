from rest_framework.viewsets import ModelViewSet, ReadOnlyModelViewSet
from .models import TruckType, Driver, Trip
from .serializers import TruckTypeSerializer, DriverSerializer, TripSerializer
from datetime import date


class TruckTypeViewSet(ModelViewSet):
    queryset = TruckType.objects.all()
    serializer_class = TruckTypeSerializer


class DriverViewSet(ModelViewSet):
    queryset = Driver.objects.all()
    serializer_class = DriverSerializer


class DriverWithOwnVehicle(ReadOnlyModelViewSet):
    queryset = Driver.objects.filter(has_vehicle=True)
    serializer_class = DriverSerializer


class DriverWithoutCargo(ReadOnlyModelViewSet):
    queryset = Driver.objects.filter(has_cargo=False)
    serializer_class = DriverSerializer


class DriverHasCargoDay(ReadOnlyModelViewSet):
    queryset = Driver.objects.filter(has_cargo=True,
                                     created_at__day=int(date.today().strftime('%d')))
    serializer_class = DriverSerializer


class DriverHasCargoMonth(ReadOnlyModelViewSet):
    queryset = Driver.objects.filter(has_cargo=True,
                                     created_at__month=(date.today().strftime('%-m')))
    serializer_class = DriverSerializer


class DriverHasCargoYear(ReadOnlyModelViewSet):
    queryset = Driver.objects.filter(has_cargo=True,
                                     created_at__year=(date.today().strftime('%Y')))
    serializer_class = DriverSerializer


class TripViewSet(ModelViewSet):
    queryset = Trip.objects.all()
    serializer_class = TripSerializer
