package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TrieNodeKt {
    public static final Object[] a(Object[] objArr, int i, Object obj, Object obj2) {
        Object[] objArr2 = new Object[objArr.length + 2];
        ArraysKt.j(0, i, 6, objArr, objArr2);
        ArraysKt.g(i + 2, i, objArr.length, objArr, objArr2);
        objArr2[i] = obj;
        objArr2[i + 1] = obj2;
        return objArr2;
    }

    public static final Object[] b(int i, Object[] objArr) {
        Object[] objArr2 = new Object[objArr.length - 2];
        ArraysKt.j(0, i, 6, objArr, objArr2);
        ArraysKt.g(i, i + 2, objArr.length, objArr, objArr2);
        return objArr2;
    }

    public static final Object[] c(int i, Object[] objArr) {
        Object[] objArr2 = new Object[objArr.length - 1];
        ArraysKt.j(0, i, 6, objArr, objArr2);
        ArraysKt.g(i, i + 1, objArr.length, objArr, objArr2);
        return objArr2;
    }

    public static final int d(int i, int i2) {
        return (i >> i2) & 31;
    }
}
