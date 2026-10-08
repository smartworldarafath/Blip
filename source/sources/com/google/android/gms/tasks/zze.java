package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zze implements Runnable {
    public final /* synthetic */ Task j;
    public final /* synthetic */ zzf k;

    public zze(zzf zzfVar, Task task) {
        this.j = task;
        this.k = zzfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzf zzfVar = this.k;
        try {
            Task task = (Task) zzfVar.b.g(this.j);
            if (task == null) {
                zzfVar.d(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = TaskExecutors.b;
            task.c(executor, zzfVar);
            zzw zzwVar = (zzw) task;
            zzr zzrVar = zzwVar.b;
            zzrVar.a(new zzl(executor, zzfVar));
            zzwVar.q();
            zzrVar.a(new zzh(executor, zzfVar));
            zzwVar.q();
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                zzfVar.c.n((Exception) e.getCause());
            } else {
                zzfVar.c.n(e);
            }
        } catch (Exception e2) {
            zzfVar.c.n(e2);
        }
    }
}
