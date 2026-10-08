package kotlin.collections;

import defpackage.jb;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class ArraysKt__ArraysJVMKt {
    public static final void a(int i, int i2) {
        if (i <= i2) {
            return;
        }
        u2.o(jb.e("toIndex (", i, ") is greater than size (", i2, ")."));
    }
}
