package app.revanced.android.gms.cast.framework;

import app.revanced.android.gms.cast.framework.IDiscoveryManagerListener;
import app.revanced.android.gms.dynamic.IObjectWrapper;

interface IDiscoveryManager {
    void startDiscovery() = 0; // Maybe?
    void stopDiscovery() = 1; // Maybe?
    void addDiscoveryManagerListener(IDiscoveryManagerListener listener) = 2;
    void removeDiscoveryManagerListener(IDiscoveryManagerListener listener) = 3;
    IObjectWrapper getWrappedThis() = 4;
}
