package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Callback;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import defpackage.ki;
import io.sentry.d;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WindowInsetsAnimationCompat {
    public Impl a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl {
        public final int a;
        public float b;
        public final Interpolator c;
        public final long d;

        public Impl(int i, Interpolator interpolator, long j) {
            this.a = i;
            this.c = interpolator;
            this.d = j;
        }

        public float a() {
            return 1.0f;
        }

        public long b() {
            return this.d;
        }

        public float c() {
            float f = this.b;
            Interpolator interpolator = this.c;
            if (interpolator != null) {
                return interpolator.getInterpolation(f);
            }
            return f;
        }

        public int d() {
            return this.a;
        }

        public void e(float f) {
            this.b = f;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl21 extends Impl {
        public static final PathInterpolator e = new PathInterpolator(0.0f, 1.1f, 0.0f, 1.0f);
        public static final FastOutLinearInInterpolator f = new FastOutLinearInInterpolator();
        public static final DecelerateInterpolator g = new DecelerateInterpolator(1.5f);
        public static final AccelerateInterpolator h = new AccelerateInterpolator(1.5f);

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static class Impl21OnApplyWindowInsetsListener implements View.OnApplyWindowInsetsListener {
            public final Callback a;
            public WindowInsetsCompat b;

            public Impl21OnApplyWindowInsetsListener(View view, Callback callback) {
                WindowInsetsCompat windowInsetsCompat;
                this.a = callback;
                Field field = ViewCompat.a;
                WindowInsetsCompat a = ViewCompat.Api23Impl.a(view);
                if (a != null) {
                    windowInsetsCompat = new WindowInsetsCompat.Builder(a).a.b();
                } else {
                    windowInsetsCompat = null;
                }
                this.b = windowInsetsCompat;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(final View view, WindowInsets windowInsets) {
                Interpolator interpolator;
                long j;
                int[] iArr;
                boolean z;
                boolean z2;
                if (!view.isLaidOut()) {
                    this.b = WindowInsetsCompat.s(view, windowInsets);
                    return Impl21.j(view, windowInsets);
                }
                final WindowInsetsCompat s = WindowInsetsCompat.s(view, windowInsets);
                WindowInsetsCompat.Impl impl = s.a;
                if (this.b == null) {
                    Field field = ViewCompat.a;
                    this.b = ViewCompat.Api23Impl.a(view);
                }
                if (this.b == null) {
                    this.b = s;
                    return Impl21.j(view, windowInsets);
                }
                Callback k = Impl21.k(view);
                if (k != null && Objects.equals(k.j, s)) {
                    return Impl21.j(view, windowInsets);
                }
                int[] iArr2 = new int[1];
                int[] iArr3 = new int[1];
                WindowInsetsCompat windowInsetsCompat = this.b;
                int i = 1;
                while (i <= 512) {
                    Insets i2 = impl.i(i);
                    Insets i3 = windowInsetsCompat.a.i(i);
                    int i4 = i2.a;
                    int i5 = i2.d;
                    int i6 = i2.c;
                    int i7 = i2.b;
                    int i8 = i3.a;
                    int i9 = i3.d;
                    int i10 = i3.c;
                    int i11 = i3.b;
                    if (i4 <= i8 && i7 <= i11 && i6 <= i10 && i5 <= i9) {
                        iArr = iArr2;
                        z = false;
                    } else {
                        iArr = iArr2;
                        z = true;
                    }
                    if (i4 >= i8 && i7 >= i11 && i6 >= i10 && i5 >= i9) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    if (z != z2) {
                        if (z) {
                            iArr[0] = iArr[0] | i;
                        } else {
                            iArr3[0] = iArr3[0] | i;
                        }
                    }
                    i <<= 1;
                    iArr2 = iArr;
                }
                int i12 = iArr2[0];
                int i13 = iArr3[0];
                final int i14 = i12 | i13;
                if (i14 == 0) {
                    this.b = s;
                    return Impl21.j(view, windowInsets);
                }
                final WindowInsetsCompat windowInsetsCompat2 = this.b;
                if ((i12 & 8) != 0) {
                    interpolator = Impl21.e;
                } else if ((i13 & 8) != 0) {
                    interpolator = Impl21.f;
                } else if ((i12 & 519) != 0) {
                    interpolator = Impl21.g;
                } else if ((i13 & 519) != 0) {
                    interpolator = Impl21.h;
                } else {
                    interpolator = null;
                }
                if ((i14 & 8) != 0) {
                    j = 160;
                } else {
                    j = 250;
                }
                final WindowInsetsAnimationCompat windowInsetsAnimationCompat = new WindowInsetsAnimationCompat(i14, interpolator, j);
                windowInsetsAnimationCompat.a.e(0.0f);
                final ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(windowInsetsAnimationCompat.a.b());
                Insets i15 = impl.i(i14);
                Insets i16 = windowInsetsCompat2.a.i(i14);
                int min = Math.min(i15.a, i16.a);
                int i17 = i15.b;
                int i18 = i16.b;
                int min2 = Math.min(i17, i18);
                int i19 = i15.c;
                int i20 = i16.c;
                int min3 = Math.min(i19, i20);
                int i21 = i15.d;
                int i22 = i16.d;
                final BoundsCompat boundsCompat = new BoundsCompat(Insets.b(min, min2, min3, Math.min(i21, i22)), Insets.b(Math.max(i15.a, i16.a), Math.max(i17, i18), Math.max(i19, i20), Math.max(i21, i22)));
                Impl21.g(view, windowInsetsAnimationCompat, s, false);
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        float animatedFraction = valueAnimator.getAnimatedFraction();
                        WindowInsetsAnimationCompat windowInsetsAnimationCompat2 = WindowInsetsAnimationCompat.this;
                        Impl impl2 = windowInsetsAnimationCompat2.a;
                        impl2.e(animatedFraction);
                        float c = impl2.c();
                        PathInterpolator pathInterpolator = Impl21.e;
                        WindowInsetsCompat windowInsetsCompat3 = s;
                        WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder(windowInsetsCompat3);
                        int i23 = 1;
                        while (true) {
                            WindowInsetsCompat.BuilderImpl builderImpl = builder.a;
                            if (i23 <= 512) {
                                int i24 = i14 & i23;
                                WindowInsetsCompat.Impl impl3 = windowInsetsCompat3.a;
                                if (i24 == 0) {
                                    builderImpl.d(i23, impl3.i(i23));
                                } else {
                                    Insets i25 = impl3.i(i23);
                                    Insets i26 = windowInsetsCompat2.a.i(i23);
                                    float f = 1.0f - c;
                                    builderImpl.d(i23, WindowInsetsCompat.o(i25, (int) (((i25.a - i26.a) * f) + 0.5d), (int) (((i25.b - i26.b) * f) + 0.5d), (int) (((i25.c - i26.c) * f) + 0.5d), (int) (((i25.d - i26.d) * f) + 0.5d)));
                                }
                                i23 <<= 1;
                            } else {
                                Impl21.h(view, builderImpl.b(), Collections.singletonList(windowInsetsAnimationCompat2));
                                return;
                            }
                        }
                    }
                });
                duration.addListener(new AnimatorListenerAdapter() { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        WindowInsetsAnimationCompat windowInsetsAnimationCompat2 = windowInsetsAnimationCompat;
                        windowInsetsAnimationCompat2.a.e(1.0f);
                        Impl21.f(view, windowInsetsAnimationCompat2);
                    }
                });
                Runnable runnable = new Runnable() { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        Impl21.i(view, windowInsetsAnimationCompat, boundsCompat);
                        duration.start();
                    }
                };
                if (view != null) {
                    OneShotPreDrawListener oneShotPreDrawListener = new OneShotPreDrawListener(view, runnable);
                    view.getViewTreeObserver().addOnPreDrawListener(oneShotPreDrawListener);
                    view.addOnAttachStateChangeListener(oneShotPreDrawListener);
                } else {
                    d.f("view == null");
                }
                this.b = s;
                return Impl21.j(view, windowInsets);
            }
        }

        public static void f(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            Callback k = k(view);
            if (k != null) {
                k.a(windowInsetsAnimationCompat);
                if (k.k == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    f(viewGroup.getChildAt(i), windowInsetsAnimationCompat);
                }
            }
        }

        public static void g(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsCompat windowInsetsCompat, boolean z) {
            Callback k = k(view);
            if (k != null) {
                k.j = windowInsetsCompat;
                if (!z) {
                    k.b(windowInsetsAnimationCompat);
                    if (k.k == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    g(viewGroup.getChildAt(i), windowInsetsAnimationCompat, windowInsetsCompat, z);
                }
            }
        }

        public static void h(View view, WindowInsetsCompat windowInsetsCompat, List list) {
            Callback k = k(view);
            if (k != null) {
                windowInsetsCompat = k.c(windowInsetsCompat, list);
                if (k.k == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    h(viewGroup.getChildAt(i), windowInsetsCompat, list);
                }
            }
        }

        public static void i(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat) {
            Callback k = k(view);
            if (k != null) {
                k.d(windowInsetsAnimationCompat, boundsCompat);
                if (k.k == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    i(viewGroup.getChildAt(i), windowInsetsAnimationCompat, boundsCompat);
                }
            }
        }

        public static WindowInsets j(View view, WindowInsets windowInsets) {
            if (view.getTag(R.id.tag_on_apply_window_listener) != null) {
                return windowInsets;
            }
            return view.onApplyWindowInsets(windowInsets);
        }

        public static Callback k(View view) {
            Object tag = view.getTag(R.id.tag_window_insets_animation_callback);
            if (tag instanceof Impl21OnApplyWindowInsetsListener) {
                return ((Impl21OnApplyWindowInsetsListener) tag).a;
            }
            return null;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Impl30 extends Impl {
        public final WindowInsetsAnimation e;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static class ProxyCallback extends WindowInsetsAnimation$Callback {
            public final Callback a;
            public List b;
            public ArrayList c;
            public final HashMap d;

            public ProxyCallback(Callback callback) {
                super(callback.k);
                this.d = new HashMap();
                this.a = callback;
            }

            public final WindowInsetsAnimationCompat a(WindowInsetsAnimation windowInsetsAnimation) {
                HashMap hashMap = this.d;
                WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) hashMap.get(windowInsetsAnimation);
                if (windowInsetsAnimationCompat == null) {
                    WindowInsetsAnimationCompat windowInsetsAnimationCompat2 = new WindowInsetsAnimationCompat(0, null, 0L);
                    windowInsetsAnimationCompat2.a = new Impl30(windowInsetsAnimation);
                    hashMap.put(windowInsetsAnimation, windowInsetsAnimationCompat2);
                    return windowInsetsAnimationCompat2;
                }
                return windowInsetsAnimationCompat;
            }

            public final void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
                this.a.a(a(windowInsetsAnimation));
                this.d.remove(windowInsetsAnimation);
            }

            public final void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
                this.a.b(a(windowInsetsAnimation));
            }

            public final WindowInsets onProgress(WindowInsets windowInsets, List list) {
                float fraction;
                ArrayList arrayList = this.c;
                if (arrayList == null) {
                    ArrayList arrayList2 = new ArrayList(list.size());
                    this.c = arrayList2;
                    this.b = Collections.unmodifiableList(arrayList2);
                } else {
                    arrayList.clear();
                }
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimation j = ki.j(list.get(size));
                    WindowInsetsAnimationCompat a = a(j);
                    fraction = j.getFraction();
                    a.a.e(fraction);
                    this.c.add(a);
                }
                return this.a.c(WindowInsetsCompat.s(null, windowInsets), this.b).r();
            }

            public final WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
                BoundsCompat d = this.a.d(a(windowInsetsAnimation), new BoundsCompat(bounds));
                d.getClass();
                ki.l();
                return ki.h(d.a.d(), d.b.d());
            }
        }

        public Impl30(WindowInsetsAnimation windowInsetsAnimation) {
            super(0, null, 0L);
            this.e = windowInsetsAnimation;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final float a() {
            float alpha;
            alpha = this.e.getAlpha();
            return alpha;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final long b() {
            long durationMillis;
            durationMillis = this.e.getDurationMillis();
            return durationMillis;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final float c() {
            float interpolatedFraction;
            interpolatedFraction = this.e.getInterpolatedFraction();
            return interpolatedFraction;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final int d() {
            int typeMask;
            typeMask = this.e.getTypeMask();
            return typeMask;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final void e(float f) {
            this.e.setFraction(f);
        }
    }

    public WindowInsetsAnimationCompat(int i, Interpolator interpolator, long j) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.a = new Impl30(ki.i(i, interpolator, j));
        } else {
            this.a = new Impl(i, interpolator, j);
        }
    }

    public final float a() {
        return this.a.a();
    }

    public final long b() {
        return this.a.b();
    }

    public final float c() {
        return this.a.c();
    }

    public final int d() {
        return this.a.d();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class BoundsCompat {
        public final Insets a;
        public final Insets b;

        public BoundsCompat(WindowInsetsAnimation.Bounds bounds) {
            android.graphics.Insets lowerBound;
            android.graphics.Insets upperBound;
            lowerBound = bounds.getLowerBound();
            this.a = Insets.c(lowerBound);
            upperBound = bounds.getUpperBound();
            this.b = Insets.c(upperBound);
        }

        public final String toString() {
            return "Bounds{lower=" + this.a + " upper=" + this.b + "}";
        }

        public BoundsCompat(Insets insets, Insets insets2) {
            this.a = insets;
            this.b = insets2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Callback {
        public WindowInsetsCompat j;
        public final int k;

        public Callback(int i) {
            this.k = i;
        }

        public abstract WindowInsetsCompat c(WindowInsetsCompat windowInsetsCompat, List list);

        public abstract BoundsCompat d(WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat);

        public void a(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        public void b(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }
    }
}
