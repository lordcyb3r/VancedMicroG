package app.revanced.android.gms.auth.api.credentials.internal;

import app.revanced.android.gms.common.api.Status;
import app.revanced.android.gms.auth.api.credentials.Credential;

interface ICredentialsCallbacks {
    void onStatusAndCredential(in Status status, in Credential credential) = 0;
    void onStatus(in Status status) = 1;
    void onStatusAndString(in Status status, String string) = 2;
}