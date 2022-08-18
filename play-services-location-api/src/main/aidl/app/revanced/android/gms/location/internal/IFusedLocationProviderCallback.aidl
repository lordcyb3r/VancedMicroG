package app.revanced.android.gms.location.internal;

import app.revanced.android.gms.location.internal.FusedLocationProviderResult;

interface IFusedLocationProviderCallback {
    oneway void onFusedLocationProviderResult(in FusedLocationProviderResult result) = 0;
}
