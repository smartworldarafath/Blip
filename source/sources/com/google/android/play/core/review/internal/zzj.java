package com.google.android.play.core.review.internal;

import com.google.android.gms.tasks.TaskCompletionSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class zzj implements Runnable {
    public final TaskCompletionSource j;

    public zzj() {
        this.j = null;
    }

    public abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (Exception e) {
            TaskCompletionSource taskCompletionSource = this.j;
            if (taskCompletionSource != null) {
                taskCompletionSource.c(e);
            }
        }
    }

    public zzj(TaskCompletionSource taskCompletionSource) {
        this.j = taskCompletionSource;
    }
}
