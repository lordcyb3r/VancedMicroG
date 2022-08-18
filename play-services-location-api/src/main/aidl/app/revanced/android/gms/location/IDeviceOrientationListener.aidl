package app.revanced.android.gms.location;

import app.revanced.android.gms.location.DeviceOrientation;

interface IDeviceOrientationListener {
    void onDeviceOrientationChanged(in DeviceOrientation deviceOrientation);
}
