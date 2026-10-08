package com.google.android.gms.internal.common;

import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzaj extends zzah {
    public static final zzah n = new zzaj(0, new Object[0]);
    public final transient Object[] l;
    public final transient int m;

    public zzaj(int i, Object[] objArr) {
        this.l = objArr;
        this.m = i;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final Object[] b() {
        return this.l;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final int c() {
        return 0;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final int d() {
        return this.m;
    }

    @Override // com.google.android.gms.internal.common.zzah, com.google.android.gms.internal.common.zzac
    public final int e(Object[] objArr) {
        Object[] objArr2 = this.l;
        int i = this.m;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzr.a(i, this.m);
        Object obj = this.l[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.m;
    }
}
