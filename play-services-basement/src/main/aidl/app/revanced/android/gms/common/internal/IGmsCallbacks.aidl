package app.revanced.android.gms.common.internal;

import android.os.Bundle;

interface IGmsCallbacks {
    void onPostInitComplete(int statusCode, IBinder binder, in Bundle params);
}
