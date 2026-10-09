package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zzf<TResult, TContinuationResult> implements OnSuccessListener<TContinuationResult>, OnFailureListener, OnCanceledListener, zzq {
    public final Executor a;
    public final Continuation b;
    public final zzw c;

    public zzf(Executor executor, Continuation continuation, zzw zzwVar) {
        this.a = executor;
        this.b = continuation;
        this.c = zzwVar;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void a(Object obj) {
        this.c.m(obj);
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void b(Task task) {
        this.a.execute(new zze(this, task));
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void c() {
        this.c.o();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void d(Exception exc) {
        this.c.n(exc);
    }
}
