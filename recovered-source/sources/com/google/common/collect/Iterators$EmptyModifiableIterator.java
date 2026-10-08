package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Iterators$EmptyModifiableIterator implements Iterator<Object> {
    public static final Iterators$EmptyModifiableIterator j;
    public static final /* synthetic */ Iterators$EmptyModifiableIterator[] k;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.common.collect.Iterators$EmptyModifiableIterator] */
    static {
        ?? r0 = new Enum("INSTANCE", 0);
        j = r0;
        k = new Iterators$EmptyModifiableIterator[]{r0};
    }

    public static Iterators$EmptyModifiableIterator valueOf(String str) {
        return (Iterators$EmptyModifiableIterator) Enum.valueOf(Iterators$EmptyModifiableIterator.class, str);
    }

    public static Iterators$EmptyModifiableIterator[] values() {
        return (Iterators$EmptyModifiableIterator[]) k.clone();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        Preconditions.m("no calls to next() since the last call to remove()", false);
    }
}
