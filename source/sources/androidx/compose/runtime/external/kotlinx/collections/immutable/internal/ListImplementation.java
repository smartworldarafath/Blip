package androidx.compose.runtime.external.kotlinx.collections.immutable.internal;

import defpackage.fe;
import defpackage.jb;
import defpackage.q;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ListImplementation {
    public static final void a(int i, int i2) {
        if (i >= 0 && i < i2) {
            return;
        }
        u2.o(q.f(i, i2, "index: ", ", size: "));
    }

    public static final void b(int i, int i2) {
        if (i >= 0 && i <= i2) {
            return;
        }
        u2.o(q.f(i, i2, "index: ", ", size: "));
    }

    public static final void c(int i, int i2, int i3) {
        if (i >= 0 && i2 <= i3) {
            if (i <= i2) {
                return;
            }
            u2.g(q.f(i, i2, "fromIndex: ", " > toIndex: "));
            return;
        }
        fe.k(i3, jb.k("fromIndex: ", i, ", toIndex: ", i2, ", size: "));
    }
}
