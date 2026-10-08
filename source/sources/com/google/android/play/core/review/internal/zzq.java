package com.google.android.play.core.review.internal;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zzq extends zzj {
    public final /* synthetic */ zzr k;

    public zzq(zzr zzrVar) {
        this.k = zzrVar;
    }

    @Override // com.google.android.play.core.review.internal.zzj
    public final void a() {
        zzt zztVar = this.k.j;
        zztVar.b.a("unlinkToDeath", new Object[0]);
        zztVar.m.asBinder().unlinkToDeath(zztVar.j, 0);
        zztVar.m = null;
        zztVar.g = false;
    }
}
