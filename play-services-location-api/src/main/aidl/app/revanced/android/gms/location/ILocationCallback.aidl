package app.revanced.android.gms.location;

import android.location.Location;

import app.revanced.android.gms.location.LocationAvailability;
import app.revanced.android.gms.location.LocationResult;

interface ILocationCallback {
    void onLocationResult(in LocationResult result) = 0;
    void onLocationAvailability(in LocationAvailability availability) = 1;
}
