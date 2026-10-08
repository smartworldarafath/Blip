package androidx.recyclerview.widget;

import android.view.View;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class ViewBoundsCheck {
    public final Callback a;
    public final BoundFlags b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class BoundFlags {
        public int a;
        public int b;
        public int c;
        public int d;
        public int e;

        public final boolean a() {
            int i;
            int i2;
            int i3;
            int i4 = this.a;
            int i5 = 2;
            if ((i4 & 7) != 0) {
                int i6 = this.d;
                int i7 = this.b;
                if (i6 > i7) {
                    i3 = 1;
                } else if (i6 == i7) {
                    i3 = 2;
                } else {
                    i3 = 4;
                }
                if ((i3 & i4) == 0) {
                    return false;
                }
            }
            if ((i4 & 112) != 0) {
                int i8 = this.d;
                int i9 = this.c;
                if (i8 > i9) {
                    i2 = 1;
                } else if (i8 == i9) {
                    i2 = 2;
                } else {
                    i2 = 4;
                }
                if (((i2 << 4) & i4) == 0) {
                    return false;
                }
            }
            if ((i4 & 1792) != 0) {
                int i10 = this.e;
                int i11 = this.b;
                if (i10 > i11) {
                    i = 1;
                } else if (i10 == i11) {
                    i = 2;
                } else {
                    i = 4;
                }
                if (((i << 8) & i4) == 0) {
                    return false;
                }
            }
            if ((i4 & 28672) != 0) {
                int i12 = this.e;
                int i13 = this.c;
                if (i12 > i13) {
                    i5 = 1;
                } else if (i12 != i13) {
                    i5 = 4;
                }
                if (((i5 << 12) & i4) == 0) {
                    return false;
                }
            }
            return true;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Callback {
        int a(View view);

        int b();

        int c();

        View d(int i);

        int e(View view);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, androidx.recyclerview.widget.ViewBoundsCheck$BoundFlags] */
    public ViewBoundsCheck(Callback callback) {
        this.a = callback;
        ?? obj = new Object();
        obj.a = 0;
        this.b = obj;
    }

    public final View a(int i, int i2, int i3, int i4) {
        int i5;
        Callback callback = this.a;
        int b = callback.b();
        int c = callback.c();
        if (i2 > i) {
            i5 = 1;
        } else {
            i5 = -1;
        }
        View view = null;
        while (i != i2) {
            View d = callback.d(i);
            int a = callback.a(d);
            int e = callback.e(d);
            BoundFlags boundFlags = this.b;
            boundFlags.b = b;
            boundFlags.c = c;
            boundFlags.d = a;
            boundFlags.e = e;
            if (i3 != 0) {
                boundFlags.a = i3;
                if (boundFlags.a()) {
                    return d;
                }
            }
            if (i4 != 0) {
                boundFlags.a = i4;
                if (boundFlags.a()) {
                    view = d;
                }
            }
            i += i5;
        }
        return view;
    }

    public final boolean b(View view) {
        Callback callback = this.a;
        int b = callback.b();
        int c = callback.c();
        int a = callback.a(view);
        int e = callback.e(view);
        BoundFlags boundFlags = this.b;
        boundFlags.b = b;
        boundFlags.c = c;
        boundFlags.d = a;
        boundFlags.e = e;
        boundFlags.a = 24579;
        return boundFlags.a();
    }
}
