package com.google.android.gms.tasks;

import java.util.concurrent.Callable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zzx implements Runnable {
    public final /* synthetic */ zzw j;
    public final /* synthetic */ Callable k;

    public zzx(zzw zzwVar, Callable callable) {
        this.j = zzwVar;
        this.k = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzw zzwVar = this.j;
        try {
            zzwVar.m(this.k.call());
        } catch (Exception e) {
            zzwVar.n(e);
        } catch (Throwable th) {
            zzwVar.n(new RuntimeException(th));
        }
    }
}
