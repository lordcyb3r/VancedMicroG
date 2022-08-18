package app.revanced.android.gms.location.internal;

import app.revanced.android.gms.location.LocationSettingsResult;

interface ISettingsCallbacks {
    void onLocationSettingsResult(in LocationSettingsResult result);
}
