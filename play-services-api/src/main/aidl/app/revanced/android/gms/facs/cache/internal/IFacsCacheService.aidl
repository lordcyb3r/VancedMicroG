package app.revanced.android.gms.facs.cache.internal;

import app.revanced.android.gms.facs.cache.FacsCacheCallOptions;
import app.revanced.android.gms.facs.cache.internal.IFacsCacheCallbacks;

interface IFacsCacheService {
    void forceSettingsCacheRefresh(IFacsCacheCallbacks callbacks, in FacsCacheCallOptions options) = 0;
    void updateActivityControlsSettings(IFacsCacheCallbacks callbacks, in byte[] bytes, in FacsCacheCallOptions options) = 1;
    void getActivityControlsSettings(IFacsCacheCallbacks callbacks, in FacsCacheCallOptions options) = 2;
    void readDeviceLevelSettings(IFacsCacheCallbacks callbacks) = 3;
    void writeDeviceLevelSettings(IFacsCacheCallbacks callbacks, in byte[] bytes) = 4;
}
