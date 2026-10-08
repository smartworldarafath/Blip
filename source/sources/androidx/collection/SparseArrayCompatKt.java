package androidx.collection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SparseArrayCompatKt {
    public static final Object a = new Object();

    public static final void a(SparseArrayCompat sparseArrayCompat) {
        int i = sparseArrayCompat.m;
        int[] iArr = sparseArrayCompat.k;
        Object[] objArr = sparseArrayCompat.l;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != a) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        sparseArrayCompat.j = false;
        sparseArrayCompat.m = i2;
    }
}
