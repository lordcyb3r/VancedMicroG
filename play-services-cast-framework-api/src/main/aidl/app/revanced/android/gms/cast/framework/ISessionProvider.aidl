package app.revanced.android.gms.cast.framework;

import app.revanced.android.gms.dynamic.IObjectWrapper;

interface ISessionProvider {
    IObjectWrapper getSession(String sessionId) = 0;
    boolean isSessionRecoverable() = 1;
    String getCategory() = 2;
    int getSupportedVersion() = 3;
}
