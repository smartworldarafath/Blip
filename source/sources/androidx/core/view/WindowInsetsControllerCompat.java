package androidx.core.view;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import androidx.collection.SimpleArrayMap;
import defpackage.qi;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WindowInsetsControllerCompat {
    public final Impl a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl {
        public abstract void a();

        public abstract void b(boolean z);

        public abstract void c(boolean z);

        public abstract void d();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl20 extends Impl {
        public final Window a;
        public final SoftwareKeyboardControllerCompat b;

        public Impl20(Window window, SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            this.a = window;
            this.b = softwareKeyboardControllerCompat;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void a() {
            for (int i = 1; i <= 512; i <<= 1) {
                if ((519 & i) != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 8) {
                                this.b.a();
                            }
                        } else {
                            e(2);
                        }
                    } else {
                        e(4);
                    }
                }
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void d() {
            for (int i = 1; i <= 512; i <<= 1) {
                if ((519 & i) != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 8) {
                                this.b.b();
                            }
                        } else {
                            f(2);
                        }
                    } else {
                        f(4);
                        this.a.clearFlags(1024);
                    }
                }
            }
        }

        public final void e(int i) {
            View decorView = this.a.getDecorView();
            decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
        }

        public final void f(int i) {
            View decorView = this.a.getDecorView();
            decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl23 extends Impl20 {
        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void c(boolean z) {
            if (z) {
                Window window = this.a;
                window.clearFlags(67108864);
                window.addFlags(Integer.MIN_VALUE);
                e(8192);
                return;
            }
            f(8192);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl26 extends Impl23 {
        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void b(boolean z) {
            if (z) {
                Window window = this.a;
                window.clearFlags(134217728);
                window.addFlags(Integer.MIN_VALUE);
                e(16);
                return;
            }
            f(16);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl30 extends Impl {
        public final WindowInsetsController a;
        public final Window b;

        public Impl30(Window window, SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            WindowInsetsController insetsController;
            insetsController = window.getInsetsController();
            new SimpleArrayMap(0);
            this.a = insetsController;
            this.b = window;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void a() {
            this.a.hide(519);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public void b(boolean z) {
            e(16, 16, z);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public void c(boolean z) {
            e(8192, 8, z);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void d() {
            this.a.show(519);
        }

        public final void e(int i, int i2, boolean z) {
            Window window = this.b;
            if (window != null) {
                if (z) {
                    View decorView = window.getDecorView();
                    decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
                    return;
                } else {
                    View decorView2 = window.getDecorView();
                    decorView2.setSystemUiVisibility((~i) & decorView2.getSystemUiVisibility());
                    return;
                }
            }
            WindowInsetsController windowInsetsController = this.a;
            if (z) {
                windowInsetsController.setSystemBarsAppearance(i2, i2);
            } else {
                qi.f(windowInsetsController, i2);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl31 extends Impl30 {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl35 extends Impl31 {
        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl30, androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void b(boolean z) {
            int i;
            WindowInsetsController windowInsetsController = this.a;
            if (z) {
                i = 16;
            } else {
                i = 0;
            }
            qi.i(windowInsetsController, i);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl30, androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void c(boolean z) {
            int i;
            WindowInsetsController windowInsetsController = this.a;
            if (z) {
                i = 8;
            } else {
                i = 0;
            }
            qi.j(windowInsetsController, i);
        }
    }

    public WindowInsetsControllerCompat(Window window, View view) {
        SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat = new SoftwareKeyboardControllerCompat(view);
        int i = Build.VERSION.SDK_INT;
        if (i >= 35) {
            this.a = new Impl30(window, softwareKeyboardControllerCompat);
        } else if (i >= 30) {
            this.a = new Impl30(window, softwareKeyboardControllerCompat);
        } else {
            this.a = new Impl20(window, softwareKeyboardControllerCompat);
        }
    }

    public final void a() {
        this.a.a();
    }

    public final void b(boolean z) {
        this.a.b(z);
    }

    public final void c(boolean z) {
        this.a.c(z);
    }

    public final void d() {
        this.a.d();
    }
}
