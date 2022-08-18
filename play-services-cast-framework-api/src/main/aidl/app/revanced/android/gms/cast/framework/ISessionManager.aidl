package app.revanced.android.gms.cast.framework;

import android.os.Bundle;

import app.revanced.android.gms.dynamic.IObjectWrapper;
import app.revanced.android.gms.cast.framework.ISessionManagerListener;
import app.revanced.android.gms.cast.framework.ICastStateListener;

interface ISessionManager {
    IObjectWrapper getWrappedCurrentSession() = 0;
    void addSessionManagerListener(ISessionManagerListener listener) = 1;
    void removeSessionManagerListener(ISessionManagerListener listener) = 2;
    void addCastStateListener(ICastStateListener listener) = 3;
    void removeCastStateListener(ICastStateListener listener) = 4;
    void endCurrentSession(boolean b, boolean stopCasting) = 5;
    IObjectWrapper getWrappedThis() = 6;
    int getCastState() = 7;
    void startSession(in Bundle options) = 8;
}
