package androidx.compose.runtime;

import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OffsetApplier<N> implements Applier<N> {
    public final Applier a;
    public final int b;
    public int c;

    public OffsetApplier(Applier applier, int i) {
        this.a = applier;
        this.b = i;
    }

    @Override // androidx.compose.runtime.Applier
    public final Object a() {
        return this.a.a();
    }

    @Override // androidx.compose.runtime.Applier
    public final void b(int i, Object obj) {
        int i2;
        if (this.c == 0) {
            i2 = this.b;
        } else {
            i2 = 0;
        }
        this.a.b(i + i2, obj);
    }

    @Override // androidx.compose.runtime.Applier
    public final void c(Object obj) {
        this.c++;
        this.a.c(obj);
    }

    @Override // androidx.compose.runtime.Applier
    public final void d() {
        this.a.d();
    }

    @Override // androidx.compose.runtime.Applier
    public final void e(int i, int i2, int i3) {
        int i4;
        if (this.c == 0) {
            i4 = this.b;
        } else {
            i4 = 0;
        }
        this.a.e(i + i4, i2 + i4, i3);
    }

    @Override // androidx.compose.runtime.Applier
    public final void f(int i, int i2) {
        int i3;
        if (this.c == 0) {
            i3 = this.b;
        } else {
            i3 = 0;
        }
        this.a.f(i + i3, i2);
    }

    @Override // androidx.compose.runtime.Applier
    public final void g() {
        if (this.c <= 0) {
            ComposerKt.a("OffsetApplier up called with no corresponding down");
        }
        this.c--;
        this.a.g();
    }

    @Override // androidx.compose.runtime.Applier
    public final void h(Object obj, Function2 function2) {
        this.a.h(obj, function2);
    }

    @Override // androidx.compose.runtime.Applier
    public final void i(int i, Object obj) {
        int i2;
        if (this.c == 0) {
            i2 = this.b;
        } else {
            i2 = 0;
        }
        this.a.i(i + i2, obj);
    }
}
