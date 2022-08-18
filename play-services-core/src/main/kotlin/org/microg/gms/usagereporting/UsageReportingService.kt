/*
 * SPDX-FileCopyrightText: 2022 microG Project Team
 * SPDX-License-Identifier: Apache-2.0
 */

package org.microg.gms.usagereporting

import android.os.Bundle
import android.os.Parcel
import android.util.Log
import app.revanced.android.gms.common.api.CommonStatusCodes
import app.revanced.android.gms.common.api.Status
import app.revanced.android.gms.common.internal.GetServiceRequest
import app.revanced.android.gms.common.internal.IGmsCallbacks
import app.revanced.android.gms.usagereporting.UsageReportingOptInOptions
import app.revanced.android.gms.usagereporting.internal.IUsageReportingCallbacks
import app.revanced.android.gms.usagereporting.internal.IUsageReportingOptInOptionsChangedListener
import app.revanced.android.gms.usagereporting.internal.IUsageReportingService
import org.microg.gms.BaseService
import org.microg.gms.common.GmsService
import org.microg.gms.utils.warnOnTransactionIssues

private const val TAG = "UsageReportingService"

class UsageReportingService : BaseService(TAG, GmsService.USAGE_REPORTING) {
    override fun handleServiceRequest(callback: IGmsCallbacks, request: GetServiceRequest, service: GmsService) {
        callback.onPostInitComplete(CommonStatusCodes.SUCCESS, UsageReportingServiceImpl(), Bundle())
    }
}

class UsageReportingServiceImpl : IUsageReportingService.Stub() {
    override fun getOptInOptions(callbacks: IUsageReportingCallbacks) {
        // Don't log to prevent log spam
        callbacks.onOptInOptions(Status.SUCCESS, UsageReportingOptInOptions().apply { optInUsageReporting = 2 })
    }

    override fun setOptInOptions(options: UsageReportingOptInOptions, callbacks: IUsageReportingCallbacks) {
        Log.d(TAG, "setOptInOptions($options)")
        callbacks.onOptInOptionsSet(Status.SUCCESS)
    }

    override fun addOptInOptionsChangedListener(listener: IUsageReportingOptInOptionsChangedListener, callbacks: IUsageReportingCallbacks) {
        Log.d(TAG, "addOptInOptionsChangedListener($listener)")
        callbacks.onOptInOptionsChangedListenerAdded(Status.SUCCESS)
    }

    override fun removeOptInOptionsChangedListener(listener: IUsageReportingOptInOptionsChangedListener, callbacks: IUsageReportingCallbacks) {
        Log.d(TAG, "removeOptInOptionsChangedListener($listener)")
        callbacks.onOptInOptionsChangedListenerRemoved(Status.SUCCESS)
    }

    override fun onTransact(code: Int, data: Parcel, reply: Parcel?, flags: Int): Boolean = warnOnTransactionIssues(code, reply, flags) { super.onTransact(code, data, reply, flags) }
}
