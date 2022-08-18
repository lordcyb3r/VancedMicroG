/*
 * Copyright (C) 2013-2017 microG Project Team
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

package org.microg.gms.cast;

import android.content.Context;
import android.os.Looper;

import app.revanced.android.gms.cast.Cast;

import org.microg.gms.common.api.ApiClient;
import org.microg.gms.common.api.ApiClientBuilder;
import org.microg.gms.common.api.ApiClientSettings;
import org.microg.gms.common.api.ConnectionCallbacks;
import org.microg.gms.common.api.OnConnectionFailedListener;

public class CastApiClientBuilder implements ApiClientBuilder<Cast.CastOptions> {
    @Override
    public ApiClient build(Cast.CastOptions options, Context context, Looper looper, ApiClientSettings clientSettings, ConnectionCallbacks callbacks, OnConnectionFailedListener connectionFailedListener) {
        return new CastClientImpl(context, options, callbacks, connectionFailedListener);
    }
}
