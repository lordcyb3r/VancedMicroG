package app.revanced.android.gms.cast.framework;

import app.revanced.android.gms.dynamic.IObjectWrapper;

interface IAppVisibilityListener {
    IObjectWrapper getThisObject() = 0;
    void onAppEnteredForeground() = 1;
    void onAppEnteredBackground() = 2;
    int getSupportedVersion() = 3;
}