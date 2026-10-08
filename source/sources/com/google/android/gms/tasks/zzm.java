package com.google.android.gms.tasks;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zzm implements Runnable {
    public final /* synthetic */ Task j;
    public final /* synthetic */ zzn k;

    public zzm(zzn zznVar, Task task) {
        this.j = task;
        this.k = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzn zznVar = this.k;
        synchronized (zznVar.b) {
            try {
                OnSuccessListener onSuccessListener = zznVar.c;
                if (onSuccessListener != null) {
                    onSuccessListener.a(this.j.g());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
