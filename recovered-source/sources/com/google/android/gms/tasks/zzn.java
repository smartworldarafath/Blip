package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzn implements zzq {
    public final Executor a;
    public final Object b = new Object();
    public final OnSuccessListener c;

    public zzn(Executor executor, OnSuccessListener onSuccessListener) {
        this.a = executor;
        this.c = onSuccessListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void b(Task task) {
        if (task.k()) {
            synchronized (this.b) {
                try {
                    if (this.c == null) {
                        return;
                    }
                    this.a.execute(new zzm(this, task));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
