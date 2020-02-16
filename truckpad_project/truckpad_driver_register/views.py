from rest_framework.viewsets import ModelViewSet
from .models import Driver
from .serializers import DriverListSerializer


class DriverViewSet(ModelViewSet):
    queryset = Driver.objects.all()
    serializer_class = DriverListSerializer
