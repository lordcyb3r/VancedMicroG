/*
 * Copyright (C) 2017 microG Project Team
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.microg.gms.location;

import app.revanced.android.gms.common.api.GoogleApiClient;
import app.revanced.android.gms.common.api.PendingResult;
import app.revanced.android.gms.common.api.Status;
import app.revanced.android.gms.location.LocationSettingsRequest;
import app.revanced.android.gms.location.LocationSettingsResult;
import app.revanced.android.gms.location.SettingsApi;

import org.microg.gms.common.api.InstantPendingResult;

public class SettingsApiImpl implements SettingsApi {
    @Override
    public PendingResult<LocationSettingsResult> checkLocationSettings(GoogleApiClient client, LocationSettingsRequest locationSettingsRequest) {
        return new InstantPendingResult<LocationSettingsResult>(new LocationSettingsResult(Status.CANCELED));
    }
}
