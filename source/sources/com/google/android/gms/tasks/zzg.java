package com.google.android.gms.tasks;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zzg implements Runnable {
    public final /* synthetic */ zzh j;

    public zzg(zzh zzhVar) {
        this.j = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzh zzhVar = this.j;
        synchronized (zzhVar.b) {
            try {
                OnCanceledListener onCanceledListener = zzhVar.c;
                if (onCanceledListener != null) {
                    onCanceledListener.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
