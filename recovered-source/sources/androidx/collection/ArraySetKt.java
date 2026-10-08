package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.u2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ArraySetKt {
    public static final int a(ArraySet arraySet, Object obj, int i) {
        int i2 = arraySet.l;
        if (i2 == 0) {
            return -1;
        }
        try {
            int a = ContainerHelpersKt.a(i2, i, arraySet.j);
            if (a < 0 || Intrinsics.a(obj, arraySet.k[a])) {
                return a;
            }
            int i3 = a + 1;
            while (i3 < i2 && arraySet.j[i3] == i) {
                if (Intrinsics.a(obj, arraySet.k[i3])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = a - 1; i4 >= 0 && arraySet.j[i4] == i; i4--) {
                if (Intrinsics.a(obj, arraySet.k[i4])) {
                    return i4;
                }
            }
            return ~i3;
        } catch (IndexOutOfBoundsException unused) {
            u2.d();
            return 0;
        }
    }
}
