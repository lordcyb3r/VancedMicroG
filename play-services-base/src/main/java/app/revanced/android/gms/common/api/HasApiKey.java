/*
 * SPDX-FileCopyrightText: 2020, microG Project Team
 * SPDX-License-Identifier: Apache-2.0
 */

package app.revanced.android.gms.common.api;

import app.revanced.android.gms.common.api.internal.ApiKey;

public interface HasApiKey<O extends Api.ApiOptions> {
    ApiKey<O> getApiKey();
}
