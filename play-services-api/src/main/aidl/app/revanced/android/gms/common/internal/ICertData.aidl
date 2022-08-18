package app.revanced.android.gms.common.internal;

import app.revanced.android.gms.dynamic.IObjectWrapper;

interface ICertData {
    IObjectWrapper getWrappedBytes();
    int remoteHashCode();
}