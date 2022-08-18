package app.revanced.android.gms.location;

import android.location.Location;

interface ILocationListener {
    void onLocationChanged(in Location location);
}
