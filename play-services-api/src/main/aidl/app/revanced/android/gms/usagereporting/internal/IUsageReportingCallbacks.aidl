package app.revanced.android.gms.usagereporting.internal;

import app.revanced.android.gms.common.api.Status;
import app.revanced.android.gms.usagereporting.UsageReportingOptInOptions;

interface IUsageReportingCallbacks {
    oneway void onOptInOptions(in Status status, in UsageReportingOptInOptions options) = 1;
    oneway void onOptInOptionsSet(in Status status) = 2;
    oneway void onOptInOptionsChangedListenerAdded(in Status status) = 3;
    oneway void onOptInOptionsChangedListenerRemoved(in Status status) = 4;
}
