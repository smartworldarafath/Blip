package androidx.compose.material;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.graphics.Color;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Colors {
    public final MutableState a;
    public final MutableState b;
    public final MutableState c;
    public final MutableState d;
    public final MutableState e;
    public final MutableState f;
    public final MutableState g;
    public final MutableState h;
    public final MutableState i;
    public final MutableState j;
    public final MutableState k;
    public final MutableState l;
    public final MutableState m;

    public Colors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, boolean z) {
        this.a = SnapshotStateKt.f(new Color(j), SnapshotStateKt.m());
        this.b = SnapshotStateKt.f(new Color(j2), SnapshotStateKt.m());
        this.c = SnapshotStateKt.f(new Color(j3), SnapshotStateKt.m());
        this.d = SnapshotStateKt.f(new Color(j4), SnapshotStateKt.m());
        this.e = SnapshotStateKt.f(new Color(j5), SnapshotStateKt.m());
        this.f = SnapshotStateKt.f(new Color(j6), SnapshotStateKt.m());
        this.g = SnapshotStateKt.f(new Color(j7), SnapshotStateKt.m());
        this.h = SnapshotStateKt.f(new Color(j8), SnapshotStateKt.m());
        this.i = SnapshotStateKt.f(new Color(j9), SnapshotStateKt.m());
        this.j = SnapshotStateKt.f(new Color(j10), SnapshotStateKt.m());
        this.k = SnapshotStateKt.f(new Color(j11), SnapshotStateKt.m());
        this.l = SnapshotStateKt.f(new Color(j12), SnapshotStateKt.m());
        this.m = SnapshotStateKt.f(Boolean.valueOf(z), SnapshotStateKt.m());
    }

    public static Colors a(Colors colors, long j, long j2, int i) {
        long j3;
        long j4;
        long e = colors.e();
        long j5 = ((Color) ((SnapshotMutableStateImpl) colors.b).getValue()).a;
        long j6 = ((Color) ((SnapshotMutableStateImpl) colors.c).getValue()).a;
        long j7 = ((Color) ((SnapshotMutableStateImpl) colors.d).getValue()).a;
        if ((i & 16) != 0) {
            j3 = colors.b();
        } else {
            j3 = j;
        }
        if ((i & 32) != 0) {
            j4 = colors.f();
        } else {
            j4 = j2;
        }
        long c = colors.c();
        long j8 = ((Color) ((SnapshotMutableStateImpl) colors.h).getValue()).a;
        long j9 = ((Color) ((SnapshotMutableStateImpl) colors.i).getValue()).a;
        long j10 = ((Color) ((SnapshotMutableStateImpl) colors.j).getValue()).a;
        long d = colors.d();
        long j11 = ((Color) ((SnapshotMutableStateImpl) colors.l).getValue()).a;
        boolean g = colors.g();
        colors.getClass();
        return new Colors(e, j5, j6, j7, j3, j4, c, j8, j9, j10, d, j11, g);
    }

    public final long b() {
        return ((Color) ((SnapshotMutableStateImpl) this.e).getValue()).a;
    }

    public final long c() {
        return ((Color) ((SnapshotMutableStateImpl) this.g).getValue()).a;
    }

    public final long d() {
        return ((Color) ((SnapshotMutableStateImpl) this.k).getValue()).a;
    }

    public final long e() {
        return ((Color) ((SnapshotMutableStateImpl) this.a).getValue()).a;
    }

    public final long f() {
        return ((Color) ((SnapshotMutableStateImpl) this.f).getValue()).a;
    }

    public final boolean g() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.m).getValue()).booleanValue();
    }

    public final String toString() {
        String i = Color.i(e());
        String i2 = Color.i(((Color) ((SnapshotMutableStateImpl) this.b).getValue()).a);
        String i3 = Color.i(((Color) ((SnapshotMutableStateImpl) this.c).getValue()).a);
        String i4 = Color.i(((Color) ((SnapshotMutableStateImpl) this.d).getValue()).a);
        String i5 = Color.i(b());
        String i6 = Color.i(f());
        String i7 = Color.i(c());
        String i8 = Color.i(((Color) ((SnapshotMutableStateImpl) this.h).getValue()).a);
        String i9 = Color.i(((Color) ((SnapshotMutableStateImpl) this.i).getValue()).a);
        String i10 = Color.i(((Color) ((SnapshotMutableStateImpl) this.j).getValue()).a);
        String i11 = Color.i(d());
        String i12 = Color.i(((Color) ((SnapshotMutableStateImpl) this.l).getValue()).a);
        boolean g = g();
        StringBuilder o = q.o("Colors(primary=", i, ", primaryVariant=", i2, ", secondary=");
        q.B(o, i3, ", secondaryVariant=", i4, ", background=");
        q.B(o, i5, ", surface=", i6, ", error=");
        q.B(o, i7, ", onPrimary=", i8, ", onSecondary=");
        q.B(o, i9, ", onBackground=", i10, ", onSurface=");
        q.B(o, i11, ", onError=", i12, ", isLight=");
        o.append(g);
        o.append(")");
        return o.toString();
    }
}
