package com.google.android.gms.tasks;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zzo implements Runnable {
    public final /* synthetic */ Task j;
    public final /* synthetic */ zzp k;

    public zzo(zzp zzpVar, Task task) {
        this.j = task;
        this.k = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzp zzpVar = this.k;
        try {
            Task a = zzpVar.b.a(this.j.g());
            Executor executor = TaskExecutors.b;
            a.c(executor, zzpVar);
            zzw zzwVar = (zzw) a;
            zzr zzrVar = zzwVar.b;
            zzrVar.a(new zzl(executor, zzpVar));
            zzwVar.q();
            zzrVar.a(new zzh(executor, zzpVar));
            zzwVar.q();
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                zzpVar.d((Exception) e.getCause());
            } else {
                zzpVar.c.n(e);
            }
        } catch (CancellationException unused) {
            zzpVar.c();
        } catch (Exception e2) {
            zzpVar.c.n(e2);
        }
    }
}
