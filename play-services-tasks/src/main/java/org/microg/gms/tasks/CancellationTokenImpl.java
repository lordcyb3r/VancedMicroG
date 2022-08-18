/*
 * SPDX-FileCopyrightText: 2020, microG Project Team
 * SPDX-License-Identifier: Apache-2.0
 */

package org.microg.gms.tasks;

import app.revanced.android.gms.tasks.CancellationToken;
import app.revanced.android.gms.tasks.DuplicateTaskCompletionException;
import app.revanced.android.gms.tasks.OnTokenCanceledListener;

public class CancellationTokenImpl extends CancellationToken {
    private final TaskImpl<Void> task = new TaskImpl<>();

    @Override
    public boolean isCancellationRequested() {
        return task.isComplete();
    }

    @Override
    public CancellationToken onCanceledRequested(OnTokenCanceledListener listener) {
        task.addOnSuccessListener(aVoid -> listener.onCanceled());
        return this;
    }

    public void cancel() {
        try {
            task.cancel();
        } catch (DuplicateTaskCompletionException ignored) {
        }
    }
}
