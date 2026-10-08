package androidx.collection;

import defpackage.u2;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CircularArray<E> {
    public Object[] a;
    public int b;
    public int c;
    public int d;

    public final void a(Object obj) {
        Object[] objArr = this.a;
        int i = this.c;
        objArr[i] = obj;
        int i2 = this.d & (i + 1);
        this.c = i2;
        int i3 = this.b;
        if (i2 == i3) {
            int length = objArr.length;
            int i4 = length - i3;
            int i5 = length << 1;
            if (i5 >= 0) {
                Object[] objArr2 = new Object[i5];
                ArraysKt.g(0, i3, length, objArr, objArr2);
                ArraysKt.g(i4, 0, this.b, this.a, objArr2);
                this.a = objArr2;
                this.b = 0;
                this.c = length;
                this.d = i5 - 1;
                return;
            }
            u2.n("Max array capacity exceeded");
        }
    }
}
