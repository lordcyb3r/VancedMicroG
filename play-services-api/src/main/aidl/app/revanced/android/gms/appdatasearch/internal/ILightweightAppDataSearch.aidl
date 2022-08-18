package app.revanced.android.gms.appdatasearch.internal;

import app.revanced.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks;
import app.revanced.android.gms.appdatasearch.UsageInfo;

interface ILightweightAppDataSearch {
    void view(ILightweightAppDataSearchCallbacks callbacks, String packageName, in UsageInfo[] usageInfos);
}
