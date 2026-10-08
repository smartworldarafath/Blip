package androidx.compose.foundation.layout;

import android.os.Build;
import android.view.View;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InsetsListener extends WindowInsetsAnimationCompat.Callback implements Runnable, OnApplyWindowInsetsListener, View.OnAttachStateChangeListener {
    public final WindowInsetsHolder l;
    public boolean m;
    public boolean n;
    public WindowInsetsCompat o;

    public InsetsListener(WindowInsetsHolder windowInsetsHolder) {
        super(!windowInsetsHolder.s ? 1 : 0);
        this.l = windowInsetsHolder;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final void a(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.m = false;
        this.n = false;
        WindowInsetsCompat windowInsetsCompat = this.o;
        if (windowInsetsAnimationCompat.b() > 0 && windowInsetsCompat != null) {
            WindowInsetsHolder windowInsetsHolder = this.l;
            windowInsetsHolder.r.f(WindowInsets_androidKt.a(windowInsetsCompat.e(8)));
            windowInsetsHolder.q.f(WindowInsets_androidKt.a(windowInsetsCompat.e(8)));
            WindowInsetsHolder.b(windowInsetsHolder, windowInsetsCompat);
        }
        this.o = null;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final void b(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.m = true;
        this.n = true;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final WindowInsetsCompat c(WindowInsetsCompat windowInsetsCompat, List list) {
        WindowInsetsHolder windowInsetsHolder = this.l;
        WindowInsetsHolder.b(windowInsetsHolder, windowInsetsCompat);
        if (windowInsetsHolder.s) {
            return WindowInsetsCompat.b;
        }
        return windowInsetsCompat;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final WindowInsetsAnimationCompat.BoundsCompat d(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
        this.m = false;
        return boundsCompat;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public final WindowInsetsCompat i(View view, WindowInsetsCompat windowInsetsCompat) {
        this.o = windowInsetsCompat;
        WindowInsetsHolder windowInsetsHolder = this.l;
        windowInsetsHolder.q.f(WindowInsets_androidKt.a(windowInsetsCompat.e(8)));
        if (this.m) {
            if (Build.VERSION.SDK_INT == 30) {
                view.post(this);
            }
        } else if (!this.n) {
            windowInsetsHolder.r.f(WindowInsets_androidKt.a(windowInsetsCompat.e(8)));
            WindowInsetsHolder.b(windowInsetsHolder, windowInsetsCompat);
        }
        if (windowInsetsHolder.s) {
            return WindowInsetsCompat.b;
        }
        return windowInsetsCompat;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        view.requestApplyInsets();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.m) {
            this.m = false;
            this.n = false;
            WindowInsetsCompat windowInsetsCompat = this.o;
            if (windowInsetsCompat != null) {
                WindowInsetsHolder windowInsetsHolder = this.l;
                windowInsetsHolder.r.f(WindowInsets_androidKt.a(windowInsetsCompat.e(8)));
                WindowInsetsHolder.b(windowInsetsHolder, windowInsetsCompat);
                this.o = null;
            }
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
