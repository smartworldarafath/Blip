package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class RegularImmutableList<E> extends ImmutableList<E> {
    public static final ImmutableList n = new RegularImmutableList(0, new Object[0]);
    public final transient Object[] l;
    public final transient int m;

    public RegularImmutableList(int i, Object[] objArr) {
        this.l = objArr;
        this.m = i;
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    public final int c(int i, Object[] objArr) {
        Object[] objArr2 = this.l;
        int i2 = this.m;
        System.arraycopy(objArr2, 0, objArr, i, i2);
        return i + i2;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final Object[] d() {
        return this.l;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int e() {
        return this.m;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int f() {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean g() {
        return false;
    }

    @Override // java.util.List
    public final Object get(int i) {
        Preconditions.h(i, this.m);
        Object obj = this.l[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.m;
    }
}
