package androidx.collection;

import defpackage.jb;
import defpackage.u2;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ObjectListKt {
    public static final Object[] a = new Object[0];
    public static final MutableObjectList b = new MutableObjectList(0);

    public static final void a(int i, List list) {
        int size = list.size();
        if (i >= 0 && i < size) {
            return;
        }
        u2.o(jb.e("Index ", i, " is out of bounds. The list has ", size, " elements."));
    }

    public static final void b(int i, int i2, List list) {
        int size = list.size();
        if (i <= i2) {
            if (i >= 0) {
                if (i2 <= size) {
                    return;
                }
                throw new IndexOutOfBoundsException("toIndex (" + i2 + ") is more than than the list size (" + size + ')');
            }
            u2.o(jb.d("fromIndex (", i, ") is less than 0."));
            return;
        }
        u2.g(jb.e("Indices are out of order. fromIndex (", i, ") is greater than toIndex (", i2, ")."));
    }
}
