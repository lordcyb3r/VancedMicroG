package app.revanced.android.gms.facs.cache.internal;

import app.revanced.android.gms.common.api.Status;
import app.revanced.android.gms.facs.cache.ForceSettingsCacheRefreshResult;
import app.revanced.android.gms.facs.cache.GetActivityControlsSettingsResult;
import app.revanced.android.gms.facs.cache.ReadDeviceLevelSettingsResult;
import app.revanced.android.gms.facs.cache.UpdateActivityControlsSettingsResult;

interface IFacsCacheCallbacks {
    void onForceSettingsCacheRefreshResult(in Status status, in ForceSettingsCacheRefreshResult result) = 0;
    void onUpdateActivityControlsSettingsResult(in Status status, in UpdateActivityControlsSettingsResult result) = 1;
    void onGetActivityControlsSettingsResult(in Status status, in GetActivityControlsSettingsResult result) = 2;
    void onWriteDeviceLevelSettingsResult(in Status status) = 3;
    void onReadDeviceLevelSettingsResult(in Status status, in ReadDeviceLevelSettingsResult result) = 4;
}
