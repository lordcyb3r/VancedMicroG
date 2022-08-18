package app.revanced.android.gms.clearcut.internal;

import app.revanced.android.gms.clearcut.internal.IClearcutLoggerCallbacks;
import app.revanced.android.gms.clearcut.LogEventParcelable;

interface IClearcutLoggerService {
    oneway void log(IClearcutLoggerCallbacks callbacks, in LogEventParcelable event) = 0;
    oneway void forceUpload(IClearcutLoggerCallbacks callbacks) = 1;
    oneway void startCollectForDebug(IClearcutLoggerCallbacks callbacks) = 2;
    oneway void stopCollectForDebug(IClearcutLoggerCallbacks callbacks) = 3;
    oneway void getCollectForDebugExpiryTime(IClearcutLoggerCallbacks callbacks) = 4;
    oneway void getLogEventParcelablesLegacy(IClearcutLoggerCallbacks callbacks) = 5;
    oneway void getLogEventParcelables(IClearcutLoggerCallbacks callbacks) = 6;
}
