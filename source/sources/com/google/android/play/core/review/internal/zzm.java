package com.google.android.play.core.review.internal;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzm extends zzj {
    public final /* synthetic */ TaskCompletionSource k;
    public final /* synthetic */ zzj l;
    public final /* synthetic */ zzt m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzm(zzt zztVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, zzj zzjVar) {
        super(taskCompletionSource);
        this.k = taskCompletionSource2;
        this.l = zzjVar;
        this.m = zztVar;
    }

    @Override // com.google.android.play.core.review.internal.zzj
    public final void a() {
        synchronized (this.m.f) {
            try {
                final zzt zztVar = this.m;
                final TaskCompletionSource taskCompletionSource = this.k;
                zztVar.e.add(taskCompletionSource);
                taskCompletionSource.a.a(new OnCompleteListener() { // from class: com.google.android.play.core.review.internal.zzl
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void h(Task task) {
                        zzt zztVar2 = zzt.this;
                        TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                        synchronized (zztVar2.f) {
                            zztVar2.e.remove(taskCompletionSource2);
                        }
                    }
                });
                if (this.m.k.getAndIncrement() > 0) {
                    this.m.b.a("Already connected to the service.", new Object[0]);
                }
                zzt.b(this.m, this.l);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
