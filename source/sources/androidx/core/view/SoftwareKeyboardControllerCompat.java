package androidx.core.view;

import android.R;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;
import defpackage.e;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SoftwareKeyboardControllerCompat {
    public final Impl20 a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl20 extends Impl {
        public final View a;

        public Impl20(View view) {
            this.a = view;
        }

        public void a() {
            View view = this.a;
            if (view != null) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
            }
        }

        public void b() {
            View view;
            View view2 = this.a;
            if (view2 != null) {
                if (!view2.isInEditMode() && !view2.onCheckIsTextEditor()) {
                    view = view2.getRootView().findFocus();
                } else {
                    view2.requestFocus();
                    view = view2;
                }
                if (view == null) {
                    view = view2.getRootView().findViewById(R.id.content);
                }
                if (view != null && view.hasWindowFocus()) {
                    view.post(new e(16, view));
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl30 extends Impl20 {
        public View b;

        /* JADX WARN: Type inference failed for: r3v0, types: [ag] */
        @Override // androidx.core.view.SoftwareKeyboardControllerCompat.Impl20
        public final void a() {
            WindowInsetsController windowInsetsController;
            int ime;
            View view = this.b;
            if (view != null) {
                windowInsetsController = view.getWindowInsetsController();
            } else {
                windowInsetsController = null;
            }
            if (windowInsetsController != null) {
                final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                ?? r3 = new WindowInsetsController.OnControllableInsetsChangedListener() { // from class: ag
                    @Override // android.view.WindowInsetsController.OnControllableInsetsChangedListener
                    public final void onControllableInsetsChanged(WindowInsetsController windowInsetsController2, int i) {
                        boolean z;
                        AtomicBoolean atomicBoolean2 = atomicBoolean;
                        if ((i & 8) != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        atomicBoolean2.set(z);
                    }
                };
                windowInsetsController.addOnControllableInsetsChangedListener(r3);
                if (!atomicBoolean.get() && view != null) {
                    ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
                }
                windowInsetsController.removeOnControllableInsetsChangedListener(r3);
                ime = WindowInsets.Type.ime();
                windowInsetsController.hide(ime);
                return;
            }
            super.a();
        }

        @Override // androidx.core.view.SoftwareKeyboardControllerCompat.Impl20
        public final void b() {
            WindowInsetsController windowInsetsController;
            int ime;
            View view = this.b;
            if (view != null && Build.VERSION.SDK_INT < 33) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).isActive();
            }
            if (view != null) {
                windowInsetsController = view.getWindowInsetsController();
            } else {
                windowInsetsController = null;
            }
            if (windowInsetsController != null) {
                ime = WindowInsets.Type.ime();
                windowInsetsController.show(ime);
            }
            super.b();
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.core.view.SoftwareKeyboardControllerCompat$Impl20, androidx.core.view.SoftwareKeyboardControllerCompat$Impl30] */
    public SoftwareKeyboardControllerCompat(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            ?? impl20 = new Impl20(view);
            impl20.b = view;
            this.a = impl20;
            return;
        }
        this.a = new Impl20(view);
    }

    public final void a() {
        this.a.a();
    }

    public final void b() {
        this.a.b();
    }
}
