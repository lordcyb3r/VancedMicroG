package app.revanced.android.gms.search.global.internal;

import app.revanced.android.gms.search.global.GetCurrentExperimentIdsRequest;
import app.revanced.android.gms.search.global.GetGlobalSearchSourcesRequest;
import app.revanced.android.gms.search.global.GetPendingExperimentIdsRequest;
import app.revanced.android.gms.search.global.SetExperimentIdsRequest;
import app.revanced.android.gms.search.global.SetIncludeInGlobalSearchRequest;
import app.revanced.android.gms.search.global.internal.IGlobalSearchAdminCallbacks;

interface IGlobalSearchAdminService {
    void getGlobalSearchSources(in GetGlobalSearchSourcesRequest request, IGlobalSearchAdminCallbacks callbacks) = 1;
    void setExperimentIds(in SetExperimentIdsRequest request, IGlobalSearchAdminCallbacks callbacks) = 2;
    void getCurrentExperimentIds(in GetCurrentExperimentIdsRequest request, IGlobalSearchAdminCallbacks callbacks) = 3;
    void getPendingExperimentIds(in GetPendingExperimentIdsRequest request, IGlobalSearchAdminCallbacks callbacks) = 4;

    void setIncludeInGlobalSearch(in SetIncludeInGlobalSearchRequest request, IGlobalSearchAdminCallbacks callbacks) = 7;
}
