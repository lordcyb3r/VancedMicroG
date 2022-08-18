package app.revanced.android.gms.common.internal;

import app.revanced.android.gms.common.internal.GoogleCertificatesQuery;
import app.revanced.android.gms.dynamic.IObjectWrapper;

interface IGoogleCertificatesApi {
    IObjectWrapper getGoogleCertficates();
    IObjectWrapper getGoogleReleaseCertificates();
    boolean isGoogleReleaseSigned(String packageName, IObjectWrapper certData);
    boolean isGoogleSigned(String packageName, IObjectWrapper certData);
    boolean isGoogleOrPlatformSigned(in GoogleCertificatesQuery query, IObjectWrapper packageManager);
}