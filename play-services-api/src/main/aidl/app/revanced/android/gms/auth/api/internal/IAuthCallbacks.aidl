package app.revanced.android.gms.auth.api.internal;

import app.revanced.android.gms.auth.api.proxy.ProxyResponse;

interface IAuthCallbacks {
    void onProxyResponse(in ProxyResponse response) = 0;
    void onSpatulaHeader(String spatulaHeader) = 1;
}
