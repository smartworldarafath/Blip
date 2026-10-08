package kotlin.collections;

import defpackage.jb;
import defpackage.u2;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class CollectionsKt__CollectionsKt extends CollectionsKt__CollectionsJVMKt {
    public static final List a(List list) {
        int size = list.size();
        if (size != 0) {
            if (size != 1) {
                return list;
            }
            return CollectionsKt.B(list.get(0));
        }
        return EmptyList.j;
    }

    public static final void b(int i, int i2) {
        if (i2 >= 0) {
            if (i2 <= i) {
                return;
            }
            u2.o(jb.e("toIndex (", i2, ") is greater than size (", i, ")."));
            return;
        }
        u2.g(jb.d("fromIndex (0) is greater than toIndex (", i2, ")."));
    }
}
