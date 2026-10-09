package com.google.android.gms.internal.common;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzaf extends zzah {
    public final transient zzah l;

    public zzaf(zzah zzahVar) {
        this.l = zzahVar;
    }

    @Override // com.google.android.gms.internal.common.zzah, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.l.contains(obj);
    }

    @Override // com.google.android.gms.internal.common.zzah
    public final zzah f() {
        return this.l;
    }

    @Override // com.google.android.gms.internal.common.zzah, java.util.List
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public final zzah subList(int i, int i2) {
        zzah zzahVar = this.l;
        zzr.b(i, i2, zzahVar.size());
        return zzahVar.subList(zzahVar.size() - i2, zzahVar.size() - i).f();
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzah zzahVar = this.l;
        zzr.a(i, zzahVar.size());
        return zzahVar.get((zzahVar.size() - 1) - i);
    }

    @Override // com.google.android.gms.internal.common.zzah, java.util.List
    public final int indexOf(Object obj) {
        int lastIndexOf = this.l.lastIndexOf(obj);
        if (lastIndexOf < 0) {
            return -1;
        }
        return (r1.size() - 1) - lastIndexOf;
    }

    @Override // com.google.android.gms.internal.common.zzah, java.util.List
    public final int lastIndexOf(Object obj) {
        int indexOf = this.l.indexOf(obj);
        if (indexOf < 0) {
            return -1;
        }
        return (r1.size() - 1) - indexOf;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.l.size();
    }
}
