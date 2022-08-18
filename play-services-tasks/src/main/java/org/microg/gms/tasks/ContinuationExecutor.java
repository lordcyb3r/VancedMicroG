/*
 * SPDX-FileCopyrightText: 2020, microG Project Team
 * SPDX-License-Identifier: Apache-2.0
 */

package org.microg.gms.tasks;

import app.revanced.android.gms.tasks.Continuation;
import app.revanced.android.gms.tasks.Task;
import app.revanced.android.gms.tasks.TaskCompletionSource;

import java.util.concurrent.Executor;

public class ContinuationExecutor<TResult, TContinuationResult> extends UpdateExecutor<TResult> {
    private Continuation<TResult, TContinuationResult> continuation;
    private TaskCompletionSource<TContinuationResult> completionSource = new TaskCompletionSource<>();

    public ContinuationExecutor(Executor executor, Continuation<TResult, TContinuationResult> continuation) {
        super(executor);
        this.continuation = continuation;
    }

    @Override
    public void onTaskUpdate(Task<TResult> task) {
        if (task.isComplete()) {
            execute(() -> {
                try {
                    completionSource.setResult(continuation.then(task));
                } catch (Exception e) {
                    completionSource.setException(e);
                }
            });
        }
    }

    public Task<TContinuationResult> getTask() {
        return completionSource.getTask();
    }

    @Override
    public void cancel() {
        super.cancel();
        continuation = null;
        completionSource = null;
    }
}
