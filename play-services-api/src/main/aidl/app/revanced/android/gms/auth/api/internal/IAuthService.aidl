package app.revanced.android.gms.auth.api.internal;

import app.revanced.android.gms.auth.api.internal.IAuthCallbacks;
//import app.revanced.android.gms.auth.api.proxy.ProxyGrpcRequest;
import app.revanced.android.gms.auth.api.proxy.ProxyRequest;

interface IAuthService {
    void performProxyRequest(IAuthCallbacks callbacks, in ProxyRequest request) = 0;
//    void performProxyGrpcRequest(IAuthCallback callbacks, in ProxyGrpcRequest request) = 1;
    void getSpatulaHeader(IAuthCallbacks callbacks) = 2;
}
