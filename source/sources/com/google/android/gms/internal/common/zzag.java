package com.google.android.gms.internal.common;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzag extends zzah {
    public final transient int l;
    public final transient int m;
    public final /* synthetic */ zzah n;

    public zzag(zzah zzahVar, int i, int i2) {
        this.n = zzahVar;
        this.l = i;
        this.m = i2;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final Object[] b() {
        return this.n.b();
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final int c() {
        return this.n.c() + this.l;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final int d() {
        return this.n.c() + this.l + this.m;
    }

    @Override // com.google.android.gms.internal.common.zzah, java.util.List
    /* renamed from: g */
    public final zzah subList(int i, int i2) {
        zzr.b(i, i2, this.m);
        int i3 = this.l;
        return this.n.subList(i + i3, i2 + i3);
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzr.a(i, this.m);
        return this.n.get(i + this.l);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.m;
    }
}
