package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzj implements zzq {
    public final Executor a;
    public final Object b = new Object();
    public final OnCompleteListener c;

    public zzj(Executor executor, OnCompleteListener onCompleteListener) {
        this.a = executor;
        this.c = onCompleteListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void b(Task task) {
        synchronized (this.b) {
        }
        this.a.execute(new zzi(this, task));
    }
}
