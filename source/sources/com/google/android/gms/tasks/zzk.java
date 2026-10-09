package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zzk implements Runnable {
    public final /* synthetic */ Task j;
    public final /* synthetic */ zzl k;

    public zzk(zzl zzlVar, Task task) {
        this.j = task;
        this.k = zzlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzl zzlVar = this.k;
        synchronized (zzlVar.b) {
            try {
                OnFailureListener onFailureListener = zzlVar.c;
                if (onFailureListener != null) {
                    Exception f = this.j.f();
                    Preconditions.e(f);
                    onFailureListener.d(f);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
