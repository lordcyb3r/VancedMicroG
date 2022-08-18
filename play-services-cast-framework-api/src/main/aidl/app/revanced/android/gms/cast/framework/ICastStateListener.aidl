package app.revanced.android.gms.cast.framework;

import app.revanced.android.gms.dynamic.IObjectWrapper;

interface ICastStateListener {
    IObjectWrapper getWrappedThis() = 0;
    void onCastStateChanged(int newState) = 1;
    int getSupportedVersion() = 2;
}
