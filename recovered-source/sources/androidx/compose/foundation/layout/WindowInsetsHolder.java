package androidx.compose.foundation.layout;

import android.graphics.Path;
import android.view.View;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.core.graphics.Insets;
import androidx.core.view.DisplayCutoutCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.WeakHashMap;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WindowInsetsHolder {
    public static final WeakHashMap v = new WeakHashMap();
    public final AndroidWindowInsets a;
    public final AndroidWindowInsets b;
    public final AndroidWindowInsets c;
    public final AndroidWindowInsets d;
    public final AndroidWindowInsets e;
    public final AndroidWindowInsets f;
    public final AndroidWindowInsets g;
    public final AndroidWindowInsets h;
    public final AndroidWindowInsets i;
    public final ValueInsets j;
    public final MutableState k;
    public final ValueInsets l;
    public final ValueInsets m;
    public final ValueInsets n;
    public final ValueInsets o;
    public final ValueInsets p;
    public final ValueInsets q;
    public final ValueInsets r;
    public final boolean s;
    public int t;
    public final InsetsListener u;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static final AndroidWindowInsets a(int i, String str) {
            WeakHashMap weakHashMap = WindowInsetsHolder.v;
            return new AndroidWindowInsets(i, str);
        }

        public static final ValueInsets b(int i, String str) {
            WeakHashMap weakHashMap = WindowInsetsHolder.v;
            return new ValueInsets(WindowInsets_androidKt.a(Insets.e), str);
        }

        public static WindowInsetsHolder c(View view) {
            WindowInsetsHolder windowInsetsHolder;
            WeakHashMap weakHashMap = WindowInsetsHolder.v;
            synchronized (weakHashMap) {
                try {
                    Object obj = weakHashMap.get(view);
                    if (obj == null) {
                        obj = new WindowInsetsHolder(view);
                        weakHashMap.put(view, obj);
                    }
                    windowInsetsHolder = (WindowInsetsHolder) obj;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return windowInsetsHolder;
        }
    }

    public WindowInsetsHolder(View view) {
        View view2;
        Object obj;
        Boolean bool;
        boolean z;
        AndroidWindowInsets a = Companion.a(4, "captionBar");
        this.a = a;
        AndroidWindowInsets a2 = Companion.a(128, "displayCutout");
        this.b = a2;
        AndroidWindowInsets a3 = Companion.a(8, "ime");
        this.c = a3;
        AndroidWindowInsets a4 = Companion.a(32, "mandatorySystemGestures");
        this.d = a4;
        AndroidWindowInsets a5 = Companion.a(2, "navigationBars");
        this.e = a5;
        AndroidWindowInsets a6 = Companion.a(1, "statusBars");
        this.f = a6;
        AndroidWindowInsets a7 = Companion.a(519, "systemBars");
        this.g = a7;
        AndroidWindowInsets a8 = Companion.a(16, "systemGestures");
        this.h = a8;
        AndroidWindowInsets a9 = Companion.a(64, "tappableElement");
        this.i = a9;
        Insets insets = Insets.e;
        ValueInsets valueInsets = new ValueInsets(WindowInsets_androidKt.a(insets), "waterfall");
        this.j = valueInsets;
        this.k = SnapshotStateKt.g(null);
        new UnionInsets(new UnionInsets(new UnionInsets(a7, a3), a2), new UnionInsets(new UnionInsets(new UnionInsets(a9, a4), a8), valueInsets));
        this.l = Companion.b(4, "captionBarIgnoringVisibility");
        this.m = Companion.b(2, "navigationBarsIgnoringVisibility");
        this.n = Companion.b(1, "statusBarsIgnoringVisibility");
        this.o = Companion.b(519, "systemBarsIgnoringVisibility");
        this.p = Companion.b(64, "tappableElementIgnoringVisibility");
        this.q = new ValueInsets(WindowInsets_androidKt.a(insets), "imeAnimationTarget");
        this.r = new ValueInsets(WindowInsets_androidKt.a(insets), "imeAnimationSource");
        Object parent = view.getParent();
        if (parent instanceof View) {
            view2 = (View) parent;
        } else {
            view2 = null;
        }
        if (view2 != null) {
            obj = view2.getTag(R.id.consume_window_insets_tag);
        } else {
            obj = null;
        }
        if (obj instanceof Boolean) {
            bool = (Boolean) obj;
        } else {
            bool = null;
        }
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            z = false;
        }
        this.s = z;
        this.u = new InsetsListener(this);
        WindowInsetsCompat h = ViewCompat.h(view);
        if (h != null) {
            a.f(h.q(4));
            a2.f(h.q(128));
            a3.f(h.q(8));
            a4.f(h.q(32));
            a5.f(h.q(2));
            a6.f(h.q(1));
            a7.f(h.q(519));
            a8.f(h.q(16));
            a9.f(h.q(64));
        }
    }

    public static void b(WindowInsetsHolder windowInsetsHolder, WindowInsetsCompat windowInsetsCompat) {
        Insets insets;
        AndroidPath androidPath;
        Path a;
        windowInsetsHolder.a.g(windowInsetsCompat, 0);
        windowInsetsHolder.c.g(windowInsetsCompat, 0);
        windowInsetsHolder.b.g(windowInsetsCompat, 0);
        windowInsetsHolder.e.g(windowInsetsCompat, 0);
        windowInsetsHolder.f.g(windowInsetsCompat, 0);
        windowInsetsHolder.g.g(windowInsetsCompat, 0);
        windowInsetsHolder.h.g(windowInsetsCompat, 0);
        windowInsetsHolder.i.g(windowInsetsCompat, 0);
        windowInsetsHolder.d.g(windowInsetsCompat, 0);
        windowInsetsHolder.l.f(WindowInsets_androidKt.a(windowInsetsCompat.f(4)));
        windowInsetsHolder.m.f(WindowInsets_androidKt.a(windowInsetsCompat.f(2)));
        windowInsetsHolder.n.f(WindowInsets_androidKt.a(windowInsetsCompat.f(1)));
        windowInsetsHolder.o.f(WindowInsets_androidKt.a(windowInsetsCompat.f(519)));
        windowInsetsHolder.p.f(WindowInsets_androidKt.a(windowInsetsCompat.f(64)));
        DisplayCutoutCompat d = windowInsetsCompat.d();
        ValueInsets valueInsets = windowInsetsHolder.j;
        if (d != null) {
            insets = d.b();
        } else {
            insets = Insets.e;
        }
        valueInsets.f(WindowInsets_androidKt.a(insets));
        if (d != null && (a = d.a()) != null) {
            androidPath = new AndroidPath(a);
        } else {
            androidPath = null;
        }
        ((SnapshotMutableStateImpl) windowInsetsHolder.k).setValue(androidPath);
        Snapshot.Companion.f();
    }

    public final void a(View view) {
        if (this.t == 0) {
            InsetsListener insetsListener = this.u;
            insetsListener.m = false;
            insetsListener.n = false;
            insetsListener.o = null;
            ViewCompat.q(view, insetsListener);
            if (view.isAttachedToWindow()) {
                view.requestApplyInsets();
            }
            view.addOnAttachStateChangeListener(insetsListener);
            ViewCompat.r(view, insetsListener);
        }
        this.t++;
    }
}
