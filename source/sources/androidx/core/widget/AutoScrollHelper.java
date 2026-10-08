package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.core.view.ViewCompat;
import defpackage.u2;
import java.lang.reflect.Field;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AutoScrollHelper implements View.OnTouchListener {
    public static final int z = ViewConfiguration.getTapTimeout();
    public final ClampedScroller j;
    public final AccelerateInterpolator k;
    public final MenuPopupWindow.MenuDropDownListView l;
    public Runnable m;
    public final float[] n;
    public final float[] o;
    public final int p;
    public final int q;
    public final float[] r;
    public final float[] s;
    public final float[] t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ClampedScroller {
        public int a;
        public int b;
        public float c;
        public float d;
        public long e;
        public long f;
        public long g;
        public float h;
        public int i;

        public final float a(long j) {
            long j2 = this.e;
            if (j < j2) {
                return 0.0f;
            }
            long j3 = this.g;
            if (j3 >= 0 && j >= j3) {
                float f = this.h;
                return (AutoScrollHelper.b(((float) (j - j3)) / this.i, 0.0f, 1.0f) * f) + (1.0f - f);
            }
            return AutoScrollHelper.b(((float) (j - j2)) / this.a, 0.0f, 1.0f) * 0.5f;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class ScrollAnimationRunnable implements Runnable {
        public ScrollAnimationRunnable() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AutoScrollHelper autoScrollHelper = AutoScrollHelper.this;
            MenuPopupWindow.MenuDropDownListView menuDropDownListView = autoScrollHelper.l;
            ClampedScroller clampedScroller = autoScrollHelper.j;
            if (!autoScrollHelper.x) {
                return;
            }
            if (autoScrollHelper.v) {
                autoScrollHelper.v = false;
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                clampedScroller.e = currentAnimationTimeMillis;
                clampedScroller.g = -1L;
                clampedScroller.f = currentAnimationTimeMillis;
                clampedScroller.h = 0.5f;
            }
            if ((clampedScroller.g > 0 && AnimationUtils.currentAnimationTimeMillis() > clampedScroller.g + clampedScroller.i) || !autoScrollHelper.e()) {
                autoScrollHelper.x = false;
                return;
            }
            if (autoScrollHelper.w) {
                autoScrollHelper.w = false;
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                menuDropDownListView.onTouchEvent(obtain);
                obtain.recycle();
            }
            if (clampedScroller.f != 0) {
                long currentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                float a = clampedScroller.a(currentAnimationTimeMillis2);
                long j = currentAnimationTimeMillis2 - clampedScroller.f;
                clampedScroller.f = currentAnimationTimeMillis2;
                ((ListViewAutoScrollHelper) autoScrollHelper).A.scrollListBy((int) (((float) j) * ((a * 4.0f) + ((-4.0f) * a * a)) * clampedScroller.d));
                Field field = ViewCompat.a;
                menuDropDownListView.postOnAnimation(this);
                return;
            }
            u2.n("Cannot compute scroll delta before calling start()");
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.core.widget.AutoScrollHelper$ClampedScroller] */
    public AutoScrollHelper(MenuPopupWindow.MenuDropDownListView menuDropDownListView) {
        ?? obj = new Object();
        obj.e = Long.MIN_VALUE;
        obj.g = -1L;
        obj.f = 0L;
        this.j = obj;
        this.k = new AccelerateInterpolator();
        float[] fArr = {0.0f, 0.0f};
        this.n = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.o = fArr2;
        float[] fArr3 = {0.0f, 0.0f};
        this.r = fArr3;
        float[] fArr4 = {0.0f, 0.0f};
        this.s = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.t = fArr5;
        this.l = menuDropDownListView;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f2 = ((int) ((1575.0f * f) + 0.5f)) / 1000.0f;
        fArr5[0] = f2;
        fArr5[1] = f2;
        float f3 = ((int) ((f * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f3;
        fArr4[1] = f3;
        this.p = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.q = z;
        obj.a = 500;
        obj.b = 500;
    }

    public static float b(float f, float f2, float f3) {
        if (f > f3) {
            return f3;
        }
        if (f < f2) {
            return f2;
        }
        return f;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x003b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final float a(float f, float f2, float f3, int i) {
        float f4;
        float interpolation;
        float b = b(this.n[i] * f2, 0.0f, this.o[i]);
        float c = c(f2 - f, b) - c(f, b);
        AccelerateInterpolator accelerateInterpolator = this.k;
        if (c < 0.0f) {
            interpolation = -accelerateInterpolator.getInterpolation(-c);
        } else if (c > 0.0f) {
            interpolation = accelerateInterpolator.getInterpolation(c);
        } else {
            f4 = 0.0f;
            if (f4 != 0.0f) {
                return 0.0f;
            }
            float f5 = this.r[i];
            float f6 = this.s[i];
            float f7 = this.t[i];
            float f8 = f5 * f3;
            if (f4 > 0.0f) {
                return b(f4 * f8, f6, f7);
            }
            return -b((-f4) * f8, f6, f7);
        }
        f4 = b(interpolation, -1.0f, 1.0f);
        if (f4 != 0.0f) {
        }
    }

    public final float c(float f, float f2) {
        if (f2 != 0.0f) {
            int i = this.p;
            if (i != 0 && i != 1) {
                if (i == 2 && f < 0.0f) {
                    return f / (-f2);
                }
            } else if (f < f2) {
                if (f >= 0.0f) {
                    return 1.0f - (f / f2);
                }
                if (this.x && i == 1) {
                    return 1.0f;
                }
            }
        }
        return 0.0f;
    }

    public final void d() {
        int i = 0;
        if (this.v) {
            this.x = false;
            return;
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        ClampedScroller clampedScroller = this.j;
        int i2 = (int) (currentAnimationTimeMillis - clampedScroller.e);
        int i3 = clampedScroller.b;
        if (i2 > i3) {
            i = i3;
        } else if (i2 >= 0) {
            i = i2;
        }
        clampedScroller.i = i;
        clampedScroller.h = clampedScroller.a(currentAnimationTimeMillis);
        clampedScroller.g = currentAnimationTimeMillis;
    }

    public final boolean e() {
        MenuPopupWindow.MenuDropDownListView menuDropDownListView;
        int count;
        ClampedScroller clampedScroller = this.j;
        float f = clampedScroller.d;
        int abs = (int) (f / Math.abs(f));
        Math.abs(clampedScroller.c);
        if (abs != 0 && (count = (menuDropDownListView = ((ListViewAutoScrollHelper) this).A).getCount()) != 0) {
            int childCount = menuDropDownListView.getChildCount();
            int firstVisiblePosition = menuDropDownListView.getFirstVisiblePosition();
            int i = firstVisiblePosition + childCount;
            if (abs <= 0 ? !(abs >= 0 || (firstVisiblePosition <= 0 && menuDropDownListView.getChildAt(0).getTop() >= 0)) : !(i >= count && menuDropDownListView.getChildAt(childCount - 1).getBottom() <= menuDropDownListView.getHeight())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0014, code lost:
    
        if (r0 != 3) goto L30;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int i;
        if (this.y) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked != 2) {
                    }
                }
                d();
                return false;
            }
            this.w = true;
            this.u = false;
            float x = motionEvent.getX();
            float width = view.getWidth();
            MenuPopupWindow.MenuDropDownListView menuDropDownListView = this.l;
            float a = a(x, width, menuDropDownListView.getWidth(), 0);
            float a2 = a(motionEvent.getY(), view.getHeight(), menuDropDownListView.getHeight(), 1);
            ClampedScroller clampedScroller = this.j;
            clampedScroller.c = a;
            clampedScroller.d = a2;
            if (!this.x && e()) {
                if (this.m == null) {
                    this.m = new ScrollAnimationRunnable();
                }
                this.x = true;
                this.v = true;
                if (!this.u && (i = this.q) > 0) {
                    Runnable runnable = this.m;
                    long j = i;
                    Field field = ViewCompat.a;
                    menuDropDownListView.postOnAnimationDelayed(runnable, j);
                } else {
                    ((ScrollAnimationRunnable) this.m).run();
                }
                this.u = true;
            }
        }
        return false;
    }
}
