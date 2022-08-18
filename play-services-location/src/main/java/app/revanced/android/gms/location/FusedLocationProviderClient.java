/*
 * SPDX-FileCopyrightText: 2020, microG Project Team
 * SPDX-License-Identifier: Apache-2.0
 */

package app.revanced.android.gms.location;

import android.content.Context;
import android.location.Location;

import app.revanced.android.gms.common.api.Api;
import app.revanced.android.gms.common.api.GoogleApi;
import app.revanced.android.gms.tasks.Task;
import app.revanced.android.gms.tasks.TaskCompletionSource;

import org.microg.gms.common.PublicApi;
import org.microg.gms.common.api.InstantGoogleApiCall;
import org.microg.gms.common.api.PendingGoogleApiCall;
import org.microg.gms.location.LocationClientImpl;

@PublicApi
public class FusedLocationProviderClient extends GoogleApi<Api.ApiOptions.NoOptions> {
    @PublicApi(exclude = true)
    public FusedLocationProviderClient(Context context) {
        super(context, LocationServices.API);
    }

    public Task<Void> flushLocations() {
        return scheduleTask(new PendingGoogleApiCall<Void, LocationClientImpl>() {
            @Override
            public void execute(LocationClientImpl client, TaskCompletionSource<Void> completionSource) {
                completionSource.setResult(null);
            }
        });
    }

    public Task<Location> getLastLocation() {
        return scheduleTask((InstantGoogleApiCall<Location, LocationClientImpl>) LocationClientImpl::getLastLocation);
    }


}
