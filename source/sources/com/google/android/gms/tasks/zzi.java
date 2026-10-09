package com.google.android.gms.tasks;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zzi implements Runnable {
    public final /* synthetic */ Task j;
    public final /* synthetic */ zzj k;

    public zzi(zzj zzjVar, Task task) {
        this.j = task;
        this.k = zzjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzj zzjVar = this.k;
        synchronized (zzjVar.b) {
            zzjVar.c.h(this.j);
        }
    }
}
