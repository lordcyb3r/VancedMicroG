package app.revanced.android.gms.usagereporting.internal;

import app.revanced.android.gms.usagereporting.internal.IUsageReportingCallbacks;
import app.revanced.android.gms.usagereporting.internal.IUsageReportingOptInOptionsChangedListener;
import app.revanced.android.gms.usagereporting.UsageReportingOptInOptions;

interface IUsageReportingService {
    oneway void getOptInOptions(IUsageReportingCallbacks callbacks) = 1;
    oneway void setOptInOptions(in UsageReportingOptInOptions options, IUsageReportingCallbacks callbacks) = 2;
    oneway void addOptInOptionsChangedListener(IUsageReportingOptInOptionsChangedListener listener, IUsageReportingCallbacks callbacks) = 3;
    oneway void removeOptInOptionsChangedListener(IUsageReportingOptInOptionsChangedListener listener, IUsageReportingCallbacks callbacks) = 4;
}
