package androidx.core.view;

import android.annotation.SuppressLint;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import defpackage.fe;
import defpackage.q;
import defpackage.u2;
import defpackage.xh;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class WindowInsetsCompat {
    public static final WindowInsetsCompat b;
    public final Impl a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Type {
        public static int a(int i) {
            if (i != 1) {
                if (i == 2) {
                    return 1;
                }
                if (i == 4) {
                    return 2;
                }
                if (i != 8) {
                    if (i == 16) {
                        return 4;
                    }
                    if (i != 32) {
                        if (i != 64) {
                            if (i != 128) {
                                if (i == 256) {
                                    return 8;
                                }
                                if (i == 512) {
                                    return 9;
                                }
                                u2.g(q.g(i, "type needs to be >= FIRST and <= LAST, type="));
                                return 0;
                            }
                            return 7;
                        }
                        return 6;
                    }
                    return 5;
                }
                return 3;
            }
            return 0;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TypeImpl30 {
        public static int a(int i) {
            int statusBars;
            int i2 = 0;
            for (int i3 = 1; i3 <= 512; i3 <<= 1) {
                if ((i & i3) != 0) {
                    if (i3 == 1) {
                        statusBars = WindowInsets.Type.statusBars();
                    } else if (i3 == 2) {
                        statusBars = WindowInsets.Type.navigationBars();
                    } else if (i3 == 4) {
                        statusBars = WindowInsets.Type.captionBar();
                    } else if (i3 == 8) {
                        statusBars = WindowInsets.Type.ime();
                    } else if (i3 == 16) {
                        statusBars = WindowInsets.Type.systemGestures();
                    } else if (i3 == 32) {
                        statusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i3 == 64) {
                        statusBars = WindowInsets.Type.tappableElement();
                    } else if (i3 == 128) {
                        statusBars = WindowInsets.Type.displayCutout();
                    }
                    i2 |= statusBars;
                }
            }
            return i2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TypeImpl34 {
        public static int a(int i) {
            int statusBars;
            int i2 = 0;
            for (int i3 = 1; i3 <= 512; i3 <<= 1) {
                if ((i & i3) != 0) {
                    if (i3 == 1) {
                        statusBars = WindowInsets.Type.statusBars();
                    } else if (i3 == 2) {
                        statusBars = WindowInsets.Type.navigationBars();
                    } else if (i3 == 4) {
                        statusBars = WindowInsets.Type.captionBar();
                    } else if (i3 == 8) {
                        statusBars = WindowInsets.Type.ime();
                    } else if (i3 == 16) {
                        statusBars = WindowInsets.Type.systemGestures();
                    } else if (i3 == 32) {
                        statusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i3 == 64) {
                        statusBars = WindowInsets.Type.tappableElement();
                    } else if (i3 == 128) {
                        statusBars = WindowInsets.Type.displayCutout();
                    } else if (i3 == 512) {
                        statusBars = WindowInsets.Type.systemOverlays();
                    }
                    i2 |= statusBars;
                }
            }
            return i2;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            b = Impl34.x;
        } else if (i >= 30) {
            b = Impl30.w;
        } else {
            b = Impl.b;
        }
    }

    public WindowInsetsCompat(WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat != null) {
            Impl impl = windowInsetsCompat.a;
            int i = Build.VERSION.SDK_INT;
            if (i >= 35 && (impl instanceof Impl35)) {
                this.a = new Impl35(this, (Impl35) impl);
            } else if (i >= 34 && (impl instanceof Impl34)) {
                this.a = new Impl34(this, (Impl34) impl);
            } else if (i >= 31 && (impl instanceof Impl31)) {
                this.a = new Impl31(this, (Impl31) impl);
            } else if (i >= 30 && (impl instanceof Impl30)) {
                this.a = new Impl30(this, (Impl30) impl);
            } else if (i >= 29 && (impl instanceof Impl29)) {
                this.a = new Impl29(this, (Impl29) impl);
            } else if (impl instanceof Impl28) {
                this.a = new Impl28(this, (Impl28) impl);
            } else if (impl instanceof Impl21) {
                this.a = new Impl21(this, (Impl21) impl);
            } else if (impl instanceof Impl20) {
                this.a = new Impl20(this, (Impl20) impl);
            } else {
                this.a = new Impl(this);
            }
            impl.e(this);
            return;
        }
        this.a = new Impl(this);
    }

    public static Insets o(Insets insets, int i, int i2, int i3, int i4) {
        int max = Math.max(0, insets.a - i);
        int max2 = Math.max(0, insets.b - i2);
        int max3 = Math.max(0, insets.c - i3);
        int max4 = Math.max(0, insets.d - i4);
        if (max == i && max2 == i2 && max3 == i3 && max4 == i4) {
            return insets;
        }
        return Insets.b(max, max2, max3, max4);
    }

    public static WindowInsetsCompat s(View view, WindowInsets windowInsets) {
        windowInsets.getClass();
        WindowInsetsCompat windowInsetsCompat = new WindowInsetsCompat(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            Field field = ViewCompat.a;
            WindowInsetsCompat a = ViewCompat.Api23Impl.a(view);
            Impl impl = windowInsetsCompat.a;
            impl.y(a);
            View rootView = view.getRootView();
            impl.d(rootView);
            impl.p(rootView);
            impl.q();
            impl.A(view.getWindowSystemUiVisibility());
        }
        return windowInsetsCompat;
    }

    public final WindowInsetsCompat a() {
        return this.a.a();
    }

    public final WindowInsetsCompat b() {
        return this.a.b();
    }

    public final WindowInsetsCompat c() {
        return this.a.c();
    }

    public final DisplayCutoutCompat d() {
        return this.a.h();
    }

    public final Insets e(int i) {
        return this.a.i(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WindowInsetsCompat)) {
            return false;
        }
        return Objects.equals(this.a, ((WindowInsetsCompat) obj).a);
    }

    public final Insets f(int i) {
        return this.a.j(i);
    }

    public final Insets g() {
        return this.a.k();
    }

    public final int h() {
        return this.a.n().d;
    }

    public final int hashCode() {
        Impl impl = this.a;
        if (impl == null) {
            return 0;
        }
        return impl.hashCode();
    }

    public final int i() {
        return this.a.n().a;
    }

    public final int j() {
        return this.a.n().c;
    }

    public final int k() {
        return this.a.n().b;
    }

    public final Insets l() {
        return this.a.n();
    }

    public final boolean m() {
        Impl impl = this.a;
        Insets i = impl.i(-1);
        Insets insets = Insets.e;
        if (i.equals(insets) && impl.j(-9).equals(insets) && impl.h() == null) {
            return false;
        }
        return true;
    }

    public final WindowInsetsCompat n(int i, int i2, int i3, int i4) {
        return this.a.r(i, i2, i3, i4);
    }

    public final boolean p() {
        return this.a.s();
    }

    public final boolean q(int i) {
        return this.a.u(i);
    }

    public final WindowInsets r() {
        Impl impl = this.a;
        if (impl instanceof Impl20) {
            return ((Impl20) impl).c;
        }
        return null;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class BuilderImpl30 extends BuilderImpl29 {
        public BuilderImpl30() {
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void d(int i, Insets insets) {
            this.e.setInsets(TypeImpl30.a(i), insets.d());
        }

        public BuilderImpl30(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class BuilderImpl31 extends BuilderImpl30 {
        public BuilderImpl31() {
        }

        public BuilderImpl31(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class BuilderImpl34 extends BuilderImpl31 {
        public BuilderImpl34() {
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl30, androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void d(int i, Insets insets) {
            this.e.setInsets(TypeImpl34.a(i), insets.d());
        }

        public BuilderImpl34(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class BuilderImpl36 extends BuilderImpl35 {
        public BuilderImpl36() {
        }

        public BuilderImpl36(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl28 extends Impl21 {
        public Impl28(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public WindowInsetsCompat a() {
            return WindowInsetsCompat.s(null, this.c.consumeDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Impl28)) {
                return false;
            }
            Impl28 impl28 = (Impl28) obj;
            if (Objects.equals(this.c, impl28.c) && Objects.equals(this.g, impl28.g) && Impl20.M(this.h, impl28.h)) {
                return true;
            }
            return false;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public DisplayCutoutCompat h() {
            DisplayCutout displayCutout = this.c.getDisplayCutout();
            if (displayCutout == null) {
                return null;
            }
            return new DisplayCutoutCompat(displayCutout);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public int hashCode() {
            return this.c.hashCode();
        }

        public Impl28(WindowInsetsCompat windowInsetsCompat, Impl28 impl28) {
            super(windowInsetsCompat, impl28);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl30 extends Impl29 {
        public static final WindowInsetsCompat w;

        static {
            WindowInsets windowInsets;
            windowInsets = WindowInsets.CONSUMED;
            w = WindowInsetsCompat.s(null, windowInsets);
        }

        public Impl30(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public Insets i(int i) {
            android.graphics.Insets insets;
            insets = this.c.getInsets(TypeImpl30.a(i));
            return Insets.c(insets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public Insets j(int i) {
            android.graphics.Insets insetsIgnoringVisibility;
            insetsIgnoringVisibility = this.c.getInsetsIgnoringVisibility(TypeImpl30.a(i));
            return Insets.c(insetsIgnoringVisibility);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public boolean u(int i) {
            boolean isVisible;
            isVisible = this.c.isVisible(TypeImpl30.a(i));
            return isVisible;
        }

        public Impl30(WindowInsetsCompat windowInsetsCompat, Impl30 impl30) {
            super(windowInsetsCompat, impl30);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public final void d(View view) {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl31 extends Impl30 {
        public Impl31(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        public Impl31(WindowInsetsCompat windowInsetsCompat, Impl31 impl31) {
            super(windowInsetsCompat, impl31);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl34 extends Impl31 {
        public static final WindowInsetsCompat x;

        static {
            WindowInsets windowInsets;
            windowInsets = WindowInsets.CONSUMED;
            x = WindowInsetsCompat.s(null, windowInsets);
        }

        public Impl34(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl30, androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public Insets i(int i) {
            android.graphics.Insets insets;
            insets = this.c.getInsets(TypeImpl34.a(i));
            return Insets.c(insets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl30, androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public Insets j(int i) {
            android.graphics.Insets insetsIgnoringVisibility;
            insetsIgnoringVisibility = this.c.getInsetsIgnoringVisibility(TypeImpl34.a(i));
            return Insets.c(insetsIgnoringVisibility);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl30, androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public boolean u(int i) {
            boolean isVisible;
            isVisible = this.c.isVisible(TypeImpl34.a(i));
            return isVisible;
        }

        public Impl34(WindowInsetsCompat windowInsetsCompat, Impl34 impl34) {
            super(windowInsetsCompat, impl34);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public void p(View view) {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl35 extends Impl34 {
        public Impl35(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public List<Rect> f(int i) {
            List<Rect> boundingRects;
            boundingRects = this.c.getBoundingRects(TypeImpl34.a(i));
            return boundingRects;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public List<Rect> g(int i) {
            List<Rect> boundingRectsIgnoringVisibility;
            boundingRectsIgnoringVisibility = this.c.getBoundingRectsIgnoringVisibility(TypeImpl34.a(i));
            return boundingRectsIgnoringVisibility;
        }

        public Impl35(WindowInsetsCompat windowInsetsCompat, Impl35 impl35) {
            super(windowInsetsCompat, impl35);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public void q() {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class BuilderImpl35 extends BuilderImpl34 {
        public BuilderImpl35(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            windowInsetsCompat.a.s();
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl34, androidx.core.view.WindowInsetsCompat.BuilderImpl30, androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void d(int i, Insets insets) {
            super.d(i, insets);
        }

        public BuilderImpl35() {
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void c(WindowInsetsCompat windowInsetsCompat) {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class BuilderImpl20 extends BuilderImpl {
        public static Field g = null;
        public static boolean h = false;
        public static Constructor i = null;
        public static boolean j = false;
        public WindowInsets e;
        public Insets f;

        public BuilderImpl20() {
            this.e = j();
        }

        private static WindowInsets j() {
            if (!h) {
                try {
                    g = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e);
                }
                h = true;
            }
            Field field = g;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException e2) {
                    Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e2);
                }
            }
            if (!j) {
                try {
                    i = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e3) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e3);
                }
                j = true;
            }
            Constructor constructor = i;
            if (constructor != null) {
                try {
                    return (WindowInsets) constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException e4) {
                    Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e4);
                }
            }
            return null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public WindowInsetsCompat b() {
            a();
            WindowInsetsCompat s = WindowInsetsCompat.s(null, this.e);
            Insets[] insetsArr = this.b;
            Impl impl = s.a;
            impl.w(insetsArr);
            impl.z(this.f);
            impl.v(null);
            impl.B(this.c);
            impl.C(this.d);
            return s;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void f(Insets insets) {
            this.f = insets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void h(Insets insets) {
            WindowInsets windowInsets = this.e;
            if (windowInsets != null) {
                this.e = windowInsets.replaceSystemWindowInsets(insets.a, insets.b, insets.c, insets.d);
            }
        }

        public BuilderImpl20(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            this.e = windowInsetsCompat.r();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl21 extends Impl20 {
        public Insets s;

        public Impl21(WindowInsetsCompat windowInsetsCompat, Impl21 impl21) {
            super(windowInsetsCompat, impl21);
            this.s = null;
            this.s = impl21.s;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public WindowInsetsCompat b() {
            return WindowInsetsCompat.s(null, this.c.consumeStableInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public WindowInsetsCompat c() {
            return WindowInsetsCompat.s(null, this.c.consumeSystemWindowInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public final Insets l() {
            if (this.s == null) {
                WindowInsets windowInsets = this.c;
                this.s = Insets.b(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
            }
            return this.s;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public boolean s() {
            return this.c.isConsumed();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void z(Insets insets) {
            this.s = insets;
        }

        public Impl21(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.s = null;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl29 extends Impl28 {
        public Insets t;
        public Insets u;
        public Insets v;

        public Impl29(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.t = null;
            this.u = null;
            this.v = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public Insets k() {
            android.graphics.Insets mandatorySystemGestureInsets;
            if (this.u == null) {
                mandatorySystemGestureInsets = this.c.getMandatorySystemGestureInsets();
                this.u = Insets.c(mandatorySystemGestureInsets);
            }
            return this.u;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public Insets m() {
            android.graphics.Insets systemGestureInsets;
            if (this.t == null) {
                systemGestureInsets = this.c.getSystemGestureInsets();
                this.t = Insets.c(systemGestureInsets);
            }
            return this.t;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public Insets o() {
            android.graphics.Insets tappableElementInsets;
            if (this.v == null) {
                tappableElementInsets = this.c.getTappableElementInsets();
                this.v = Insets.c(tappableElementInsets);
            }
            return this.v;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public WindowInsetsCompat r(int i, int i2, int i3, int i4) {
            WindowInsets inset;
            inset = this.c.inset(i, i2, i3, i4);
            return WindowInsetsCompat.s(null, inset);
        }

        public Impl29(WindowInsetsCompat windowInsetsCompat, Impl29 impl29) {
            super(windowInsetsCompat, impl29);
            this.t = null;
            this.u = null;
            this.v = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl21, androidx.core.view.WindowInsetsCompat.Impl
        public void z(Insets insets) {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class BuilderImpl {
        public final WindowInsetsCompat a;
        public Insets[] b;
        public final Rect[][] c;
        public final Rect[][] d;

        public BuilderImpl(WindowInsetsCompat windowInsetsCompat) {
            this.c = new Rect[10];
            this.d = new Rect[10];
            this.a = windowInsetsCompat;
            c(windowInsetsCompat);
        }

        public final void a() {
            Insets[] insetsArr = this.b;
            if (insetsArr != null) {
                Insets insets = insetsArr[0];
                Insets insets2 = insetsArr[1];
                WindowInsetsCompat windowInsetsCompat = this.a;
                if (insets2 == null) {
                    insets2 = windowInsetsCompat.a.i(2);
                }
                if (insets == null) {
                    insets = windowInsetsCompat.a.i(1);
                }
                h(Insets.a(insets, insets2));
                Insets insets3 = this.b[Type.a(16)];
                if (insets3 != null) {
                    g(insets3);
                }
                Insets insets4 = this.b[Type.a(32)];
                if (insets4 != null) {
                    e(insets4);
                }
                Insets insets5 = this.b[Type.a(64)];
                if (insets5 != null) {
                    i(insets5);
                }
            }
        }

        public abstract WindowInsetsCompat b();

        public void c(WindowInsetsCompat windowInsetsCompat) {
            for (int i = 1; i <= 512; i <<= 1) {
                List<Rect> f = windowInsetsCompat.a.f(i);
                int a = Type.a(i);
                this.c[a] = (Rect[]) f.toArray(new Rect[f.size()]);
                if (i != 8) {
                    List<Rect> g = windowInsetsCompat.a.g(i);
                    this.d[a] = (Rect[]) g.toArray(new Rect[g.size()]);
                }
            }
        }

        public void d(int i, Insets insets) {
            if (this.b == null) {
                this.b = new Insets[10];
            }
            for (int i2 = 1; i2 <= 512; i2 <<= 1) {
                if ((i & i2) != 0) {
                    this.b[Type.a(i2)] = insets;
                }
            }
        }

        public abstract void f(Insets insets);

        public abstract void h(Insets insets);

        public BuilderImpl() {
            this(new WindowInsetsCompat((WindowInsetsCompat) null));
        }

        public void e(Insets insets) {
        }

        public void g(Insets insets) {
        }

        public void i(Insets insets) {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl20 extends Impl {
        public static boolean n = false;
        public static Method o;
        public static Class p;
        public static Field q;
        public static Field r;
        public final WindowInsets c;
        public Insets[] d;
        public Insets e;
        public WindowInsetsCompat f;
        public Insets g;
        public int h;
        public DisplayShapeCompat i;
        public int j;
        public int k;
        public Rect[][] l;
        public Rect[][] m;

        public Impl20(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat);
            this.e = null;
            this.l = new Rect[10];
            this.m = new Rect[10];
            this.c = windowInsets;
        }

        private DisplayShapeCompat D(View view) {
            Display display;
            int i;
            int i2;
            int i3;
            if (view == null || (display = view.getDisplay()) == null) {
                return null;
            }
            Point point = new Point();
            display.getRealSize(point);
            if (this.a.a.t()) {
                return DisplayShapeCompat.a(point.x, point.y, true, 0, 0, 0, 0);
            }
            int i4 = 0;
            RoundedCornerCompat a = DisplayCompat.a(display, 0);
            RoundedCornerCompat a2 = DisplayCompat.a(display, 1);
            RoundedCornerCompat a3 = DisplayCompat.a(display, 2);
            RoundedCornerCompat a4 = DisplayCompat.a(display, 3);
            int i5 = point.x;
            int i6 = point.y;
            if (a != null) {
                i = a.b;
            } else {
                i = 0;
            }
            if (a2 != null) {
                i2 = a2.b;
            } else {
                i2 = 0;
            }
            if (a3 != null) {
                i3 = a3.b;
            } else {
                i3 = 0;
            }
            if (a4 != null) {
                i4 = a4.b;
            }
            return DisplayShapeCompat.a(i5, i6, false, i, i2, i3, i4);
        }

        private static List<Rect> E(Rect[][] rectArr, int i) {
            Rect[] rectArr2;
            Rect[] rectArr3 = null;
            for (int i2 = 1; i2 <= 512; i2 <<= 1) {
                if ((i & i2) != 0 && (rectArr2 = rectArr[Type.a(i2)]) != null) {
                    if (rectArr3 == null) {
                        rectArr3 = rectArr2;
                    } else {
                        Rect[] rectArr4 = new Rect[rectArr3.length + rectArr2.length];
                        System.arraycopy(rectArr3, 0, rectArr4, 0, rectArr3.length);
                        System.arraycopy(rectArr2, 0, rectArr4, rectArr3.length, rectArr2.length);
                        rectArr3 = rectArr4;
                    }
                }
            }
            if (rectArr3 == null) {
                return Collections.EMPTY_LIST;
            }
            return Arrays.asList(rectArr3);
        }

        private Rect[] F(Insets insets) {
            ArrayList arrayList = new ArrayList();
            int i = insets.a;
            int i2 = insets.d;
            int i3 = insets.c;
            int i4 = insets.b;
            if (i != 0) {
                arrayList.add(new Rect(0, 0, insets.a, this.j));
            }
            if (i4 != 0) {
                arrayList.add(new Rect(0, 0, this.k, i4));
            }
            if (i3 != 0) {
                int i5 = this.k;
                arrayList.add(new Rect(i5 - i3, 0, i5, this.j));
            }
            if (i2 != 0) {
                int i6 = this.j;
                arrayList.add(new Rect(0, i6 - i2, this.k, i6));
            }
            return (Rect[]) arrayList.toArray(new Rect[arrayList.size()]);
        }

        @SuppressLint({"WrongConstant"})
        private Insets G(int i, boolean z) {
            Insets insets = Insets.e;
            for (int i2 = 1; i2 <= 512; i2 <<= 1) {
                if ((i & i2) != 0) {
                    insets = Insets.a(insets, H(i2, z));
                }
            }
            return insets;
        }

        private Insets I() {
            WindowInsetsCompat windowInsetsCompat = this.f;
            if (windowInsetsCompat != null) {
                return windowInsetsCompat.a.l();
            }
            return Insets.e;
        }

        private Insets J(View view) {
            if (Build.VERSION.SDK_INT < 30) {
                if (!n) {
                    L();
                }
                Method method = o;
                if (method != null && p != null && q != null) {
                    try {
                        Object invoke = method.invoke(view, null);
                        if (invoke == null) {
                            Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                            return null;
                        }
                        Rect rect = (Rect) q.get(r.get(invoke));
                        if (rect == null) {
                            return null;
                        }
                        return Insets.b(rect.left, rect.top, rect.right, rect.bottom);
                    } catch (ReflectiveOperationException e) {
                        Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
                    }
                }
                return null;
            }
            fe.t("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            return null;
        }

        @SuppressLint({"PrivateApi"})
        private static void L() {
            try {
                o = View.class.getDeclaredMethod("getViewRootImpl", null);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                p = cls;
                q = cls.getDeclaredField("mVisibleInsets");
                r = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
                q.setAccessible(true);
                r.setAccessible(true);
            } catch (ReflectiveOperationException e) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
            }
            n = true;
        }

        public static boolean M(int i, int i2) {
            if ((i & 6) == (i2 & 6)) {
                return true;
            }
            return false;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void A(int i) {
            this.h = i;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void B(Rect[][] rectArr) {
            Objects.requireNonNull(rectArr);
            this.l = (Rect[][]) rectArr.clone();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void C(Rect[][] rectArr) {
            Objects.requireNonNull(rectArr);
            this.m = (Rect[][]) rectArr.clone();
        }

        public Insets H(int i, boolean z) {
            int i2;
            DisplayCutoutCompat h;
            Insets insets = Insets.e;
            if (i != 1) {
                Insets insets2 = null;
                if (i != 2) {
                    if (i != 8) {
                        if (i != 16) {
                            if (i != 32) {
                                if (i != 64) {
                                    if (i == 128) {
                                        WindowInsetsCompat windowInsetsCompat = this.f;
                                        if (windowInsetsCompat != null) {
                                            h = windowInsetsCompat.a.h();
                                        } else {
                                            h = h();
                                        }
                                        if (h != null) {
                                            DisplayCutout displayCutout = h.a;
                                            return Insets.b(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom());
                                        }
                                    }
                                } else {
                                    return o();
                                }
                            } else {
                                return k();
                            }
                        } else {
                            return m();
                        }
                    } else {
                        Insets[] insetsArr = this.d;
                        if (insetsArr != null) {
                            insets2 = insetsArr[Type.a(8)];
                        }
                        if (insets2 != null) {
                            return insets2;
                        }
                        Insets n2 = n();
                        Insets I = I();
                        int i3 = n2.d;
                        if (i3 > I.d) {
                            return Insets.b(0, 0, 0, i3);
                        }
                        Insets insets3 = this.g;
                        if (insets3 != null && !insets3.equals(insets) && (i2 = this.g.d) > I.d) {
                            return Insets.b(0, 0, 0, i2);
                        }
                    }
                } else {
                    if (z) {
                        Insets I2 = I();
                        Insets l = l();
                        return Insets.b(Math.max(I2.a, l.a), 0, Math.max(I2.c, l.c), Math.max(I2.d, l.d));
                    }
                    if ((this.h & 2) == 0) {
                        Insets n3 = n();
                        WindowInsetsCompat windowInsetsCompat2 = this.f;
                        if (windowInsetsCompat2 != null) {
                            insets2 = windowInsetsCompat2.a.l();
                        }
                        int i4 = n3.d;
                        if (insets2 != null) {
                            i4 = Math.min(i4, insets2.d);
                        }
                        return Insets.b(n3.a, 0, n3.c, i4);
                    }
                }
            } else {
                if (z) {
                    return Insets.b(0, Math.max(I().b, n().b), 0, 0);
                }
                if ((this.h & 4) == 0) {
                    return Insets.b(0, n().b, 0, 0);
                }
            }
            return insets;
        }

        public boolean K(int i) {
            if (i != 1 && i != 2) {
                if (i == 4) {
                    return false;
                }
                if (i != 8 && i != 128) {
                    return true;
                }
            }
            return !H(i, false).equals(Insets.e);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void d(View view) {
            this.k = view.getWidth();
            this.j = view.getHeight();
            Insets J = J(view);
            if (J == null) {
                J = Insets.e;
            }
            x(J);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void e(WindowInsetsCompat windowInsetsCompat) {
            windowInsetsCompat.a.y(this.f);
            Insets insets = this.g;
            Impl impl = windowInsetsCompat.a;
            impl.x(insets);
            impl.A(this.h);
            impl.v(this.i);
            impl.B(this.l);
            impl.C(this.m);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public boolean equals(Object obj) {
            if (!super.equals(obj)) {
                return false;
            }
            Impl20 impl20 = (Impl20) obj;
            if (!Objects.equals(this.g, impl20.g) || !M(this.h, impl20.h)) {
                return false;
            }
            return true;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public List<Rect> f(int i) {
            return E(this.l, i);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public List<Rect> g(int i) {
            return E(this.m, i);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public Insets i(int i) {
            return G(i, false);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public Insets j(int i) {
            return G(i, true);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public final Insets n() {
            if (this.e == null) {
                WindowInsets windowInsets = this.c;
                this.e = Insets.b(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
            }
            return this.e;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void p(View view) {
            this.i = D(view);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @SuppressLint({"WrongConstant"})
        public void q() {
            for (int i = 1; i <= 512; i <<= 1) {
                int a = Type.a(i);
                this.l[a] = F(i(i));
                if (i != 8) {
                    this.m[a] = F(j(i));
                }
            }
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public WindowInsetsCompat r(int i, int i2, int i3, int i4) {
            Builder builder = new Builder(WindowInsetsCompat.s(null, this.c));
            builder.b(WindowInsetsCompat.o(n(), i, i2, i3, i4));
            Insets o2 = WindowInsetsCompat.o(l(), i, i2, i3, i4);
            BuilderImpl builderImpl = builder.a;
            builderImpl.f(o2);
            return builderImpl.b();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public boolean t() {
            return this.c.isRound();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @SuppressLint({"WrongConstant"})
        public boolean u(int i) {
            for (int i2 = 1; i2 <= 512; i2 <<= 1) {
                if ((i & i2) != 0 && !K(i2)) {
                    return false;
                }
            }
            return true;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void v(DisplayShapeCompat displayShapeCompat) {
            this.i = displayShapeCompat;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void w(Insets[] insetsArr) {
            this.d = insetsArr;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void x(Insets insets) {
            this.g = insets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void y(WindowInsetsCompat windowInsetsCompat) {
            this.f = windowInsetsCompat;
        }

        public Impl20(WindowInsetsCompat windowInsetsCompat, Impl20 impl20) {
            this(windowInsetsCompat, new WindowInsets(impl20.c));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class BuilderImpl29 extends BuilderImpl {
        public final WindowInsets.Builder e;

        public BuilderImpl29(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            WindowInsets.Builder j;
            WindowInsets r = windowInsetsCompat.r();
            if (r != null) {
                j = xh.k(r);
            } else {
                j = xh.j();
            }
            this.e = j;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public WindowInsetsCompat b() {
            WindowInsets build;
            a();
            build = this.e.build();
            WindowInsetsCompat s = WindowInsetsCompat.s(null, build);
            Insets[] insetsArr = this.b;
            Impl impl = s.a;
            impl.w(insetsArr);
            impl.v(null);
            impl.B(this.c);
            impl.C(this.d);
            return s;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void e(Insets insets) {
            this.e.setMandatorySystemGestureInsets(insets.d());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void f(Insets insets) {
            this.e.setStableInsets(insets.d());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void g(Insets insets) {
            this.e.setSystemGestureInsets(insets.d());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void h(Insets insets) {
            this.e.setSystemWindowInsets(insets.d());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void i(Insets insets) {
            this.e.setTappableElementInsets(insets.d());
        }

        public BuilderImpl29() {
            this.e = xh.j();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl {
        public static final WindowInsetsCompat b = new Builder().a.b().a.a().a.b().a.c();
        public final WindowInsetsCompat a;

        public Impl(WindowInsetsCompat windowInsetsCompat) {
            this.a = windowInsetsCompat;
        }

        public WindowInsetsCompat a() {
            return this.a;
        }

        public WindowInsetsCompat b() {
            return this.a;
        }

        public WindowInsetsCompat c() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Impl)) {
                return false;
            }
            Impl impl = (Impl) obj;
            if (t() == impl.t() && s() == impl.s() && Objects.equals(n(), impl.n()) && Objects.equals(l(), impl.l()) && Objects.equals(h(), impl.h())) {
                return true;
            }
            return false;
        }

        public List<Rect> f(int i) {
            return Collections.EMPTY_LIST;
        }

        public List<Rect> g(int i) {
            return Collections.EMPTY_LIST;
        }

        public DisplayCutoutCompat h() {
            return null;
        }

        public int hashCode() {
            return Objects.hash(Boolean.valueOf(t()), Boolean.valueOf(s()), n(), l(), h());
        }

        public Insets i(int i) {
            return Insets.e;
        }

        public Insets j(int i) {
            if ((i & 8) == 0) {
                return Insets.e;
            }
            u2.g("Unable to query the maximum insets for IME");
            return null;
        }

        public Insets k() {
            return n();
        }

        public Insets l() {
            return Insets.e;
        }

        public Insets m() {
            return n();
        }

        public Insets n() {
            return Insets.e;
        }

        public Insets o() {
            return n();
        }

        public WindowInsetsCompat r(int i, int i2, int i3, int i4) {
            return b;
        }

        public boolean s() {
            return false;
        }

        public boolean t() {
            return false;
        }

        public boolean u(int i) {
            return true;
        }

        public void q() {
        }

        public void A(int i) {
        }

        public void B(Rect[][] rectArr) {
        }

        public void C(Rect[][] rectArr) {
        }

        public void d(View view) {
        }

        public void e(WindowInsetsCompat windowInsetsCompat) {
        }

        public void p(View view) {
        }

        public void v(DisplayShapeCompat displayShapeCompat) {
        }

        public void w(Insets[] insetsArr) {
        }

        public void x(Insets insets) {
        }

        public void y(WindowInsetsCompat windowInsetsCompat) {
        }

        public void z(Insets insets) {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final BuilderImpl a;

        public Builder() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 36) {
                this.a = new BuilderImpl36();
                return;
            }
            if (i >= 35) {
                this.a = new BuilderImpl35();
                return;
            }
            if (i >= 34) {
                this.a = new BuilderImpl34();
                return;
            }
            if (i >= 31) {
                this.a = new BuilderImpl31();
                return;
            }
            if (i >= 30) {
                this.a = new BuilderImpl30();
            } else if (i >= 29) {
                this.a = new BuilderImpl29();
            } else {
                this.a = new BuilderImpl20();
            }
        }

        public final WindowInsetsCompat a() {
            return this.a.b();
        }

        public final void b(Insets insets) {
            this.a.h(insets);
        }

        public Builder(WindowInsetsCompat windowInsetsCompat) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 36) {
                this.a = new BuilderImpl36(windowInsetsCompat);
                return;
            }
            if (i >= 35) {
                this.a = new BuilderImpl35(windowInsetsCompat);
                return;
            }
            if (i >= 34) {
                this.a = new BuilderImpl34(windowInsetsCompat);
                return;
            }
            if (i >= 31) {
                this.a = new BuilderImpl31(windowInsetsCompat);
                return;
            }
            if (i >= 30) {
                this.a = new BuilderImpl30(windowInsetsCompat);
            } else if (i >= 29) {
                this.a = new BuilderImpl29(windowInsetsCompat);
            } else {
                this.a = new BuilderImpl20(windowInsetsCompat);
            }
        }
    }

    public WindowInsetsCompat(WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 35) {
            this.a = new Impl35(this, windowInsets);
            return;
        }
        if (i >= 34) {
            this.a = new Impl34(this, windowInsets);
            return;
        }
        if (i >= 31) {
            this.a = new Impl31(this, windowInsets);
            return;
        }
        if (i >= 30) {
            this.a = new Impl30(this, windowInsets);
        } else if (i >= 29) {
            this.a = new Impl29(this, windowInsets);
        } else {
            this.a = new Impl28(this, windowInsets);
        }
    }
}
