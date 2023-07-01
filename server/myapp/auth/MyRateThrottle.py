from rest_framework.throttling import AnonRateThrottle


class MyRateThrottle(AnonRateThrottle):
    THROTTLE_RATES = {"anon": "5/min"}
