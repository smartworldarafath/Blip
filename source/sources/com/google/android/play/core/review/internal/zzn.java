package com.google.android.play.core.review.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzn extends zzj {
    public final /* synthetic */ zzt k;

    public zzn(zzt zztVar) {
        this.k = zztVar;
    }

    @Override // com.google.android.play.core.review.internal.zzj
    public final void a() {
        synchronized (this.k.f) {
            try {
                if (this.k.k.get() > 0 && this.k.k.decrementAndGet() > 0) {
                    this.k.b.a("Leaving the connection open for other ongoing calls.", new Object[0]);
                    return;
                }
                zzt zztVar = this.k;
                if (zztVar.m != null) {
                    zztVar.b.a("Unbind from service.", new Object[0]);
                    zzt zztVar2 = this.k;
                    zztVar2.a.unbindService(zztVar2.l);
                    zzt zztVar3 = this.k;
                    zztVar3.g = false;
                    zztVar3.m = null;
                    zztVar3.l = null;
                }
                this.k.e();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
