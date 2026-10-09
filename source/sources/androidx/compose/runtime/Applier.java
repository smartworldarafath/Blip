package androidx.compose.runtime;

import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Applier<N> {
    Object a();

    void b(int i, Object obj);

    void c(Object obj);

    void d();

    void e(int i, int i2, int i3);

    void f(int i, int i2);

    void g();

    default void h(Object obj, Function2 function2) {
        function2.n(a(), obj);
    }

    void i(int i, Object obj);

    default void j() {
    }
}
