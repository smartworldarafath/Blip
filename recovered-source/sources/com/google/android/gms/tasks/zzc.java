package com.google.android.gms.tasks;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zzc implements Runnable {
    public final /* synthetic */ Task j;
    public final /* synthetic */ zzd k;

    public zzc(zzd zzdVar, Task task) {
        this.j = task;
        this.k = zzdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Task task = this.j;
        boolean z = ((zzw) task).d;
        zzd zzdVar = this.k;
        if (z) {
            zzdVar.c.o();
            return;
        }
        try {
            this.k.c.m(zzdVar.b.g(task));
        } catch (RuntimeExecutionException e) {
            boolean z2 = e.getCause() instanceof Exception;
            zzd zzdVar2 = this.k;
            if (z2) {
                zzdVar2.c.n((Exception) e.getCause());
            } else {
                zzdVar2.c.n(e);
            }
        } catch (Exception e2) {
            this.k.c.n(e2);
        }
    }
}
