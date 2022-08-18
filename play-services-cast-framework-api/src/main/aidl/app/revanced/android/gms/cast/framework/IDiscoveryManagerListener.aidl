package app.revanced.android.gms.cast.framework;

import app.revanced.android.gms.dynamic.IObjectWrapper;

interface IDiscoveryManagerListener {
    IObjectWrapper getWrappedThis() = 0;
    void onDeviceAvailabilityChanged(boolean deviceAvailable) = 1;
}
