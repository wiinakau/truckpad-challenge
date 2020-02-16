from rest_framework.serializers import ModelSerializer
from .models import Driver, TruckType, Trip


class DriverListSerializer(ModelSerializer):
    class Meta:
        model = Driver
        fields = ['id', 'name', 'age', 'gender', 'license_type',
                  'truck_type', 'has_vehicle', 'has_shipment',
                  'created_at', 'updated_at']


class TruckTypeSerializer(ModelSerializer):
    class Meta:
        model = TruckType
        fields = ['truck_code', 'type_name', 'created_at']


class TripSerializer(ModelSerializer):
    class Meta:
        model = Trip
        fields = ['id', 'trip_date', 'driver',
                  'origin_name', 'origin_latitude', 'origin_longitude',
                  'destiny_name', 'destiny_latitude', 'destiny_longitude',
                   'created_at', 'updated_at']
