package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.reflect.Field;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class FastScroller extends RecyclerView.ItemDecoration implements RecyclerView.OnItemTouchListener {
    public static final int[] C = {R.attr.state_pressed};
    public static final int[] D = new int[0];
    public int A;
    public final Runnable B;
    public final int a;
    public final int b;
    public final StateListDrawable c;
    public final Drawable d;
    public final int e;
    public final int f;
    public final StateListDrawable g;
    public final Drawable h;
    public final int i;
    public final int j;
    public int k;
    public int l;
    public float m;
    public int n;
    public int o;
    public float p;
    public final RecyclerView s;
    public final ValueAnimator z;
    public int q = 0;
    public int r = 0;
    public boolean t = false;
    public boolean u = false;
    public int v = 0;
    public int w = 0;
    public final int[] x = new int[2];
    public final int[] y = new int[2];

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class AnimatorListener extends AnimatorListenerAdapter {
        public boolean a = false;

        public AnimatorListener() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.a) {
                this.a = false;
                return;
            }
            FastScroller fastScroller = FastScroller.this;
            if (((Float) fastScroller.z.getAnimatedValue()).floatValue() == 0.0f) {
                fastScroller.A = 0;
                fastScroller.f(0);
            } else {
                fastScroller.A = 2;
                fastScroller.s.invalidate();
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class AnimatorUpdater implements ValueAnimator.AnimatorUpdateListener {
        public AnimatorUpdater() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            FastScroller fastScroller = FastScroller.this;
            fastScroller.c.setAlpha(floatValue);
            fastScroller.d.setAlpha(floatValue);
            fastScroller.s.invalidate();
        }
    }

    public FastScroller(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        boolean z;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.z = ofFloat;
        this.A = 0;
        Runnable runnable = new Runnable() { // from class: androidx.recyclerview.widget.FastScroller.1
            @Override // java.lang.Runnable
            public final void run() {
                FastScroller fastScroller = FastScroller.this;
                ValueAnimator valueAnimator = fastScroller.z;
                int i4 = fastScroller.A;
                if (i4 != 1) {
                    if (i4 != 2) {
                        return;
                    }
                } else {
                    valueAnimator.cancel();
                }
                fastScroller.A = 3;
                valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
                valueAnimator.setDuration(500L);
                valueAnimator.start();
            }
        };
        this.B = runnable;
        RecyclerView.OnScrollListener onScrollListener = new RecyclerView.OnScrollListener() { // from class: androidx.recyclerview.widget.FastScroller.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public final void b(RecyclerView recyclerView2, int i4, int i5) {
                boolean z2;
                boolean z3;
                int computeHorizontalScrollOffset = recyclerView2.computeHorizontalScrollOffset();
                int computeVerticalScrollOffset = recyclerView2.computeVerticalScrollOffset();
                FastScroller fastScroller = FastScroller.this;
                int i6 = fastScroller.a;
                int computeVerticalScrollRange = fastScroller.s.computeVerticalScrollRange();
                int i7 = fastScroller.r;
                if (computeVerticalScrollRange - i7 > 0 && i7 >= i6) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                fastScroller.t = z2;
                int computeHorizontalScrollRange = fastScroller.s.computeHorizontalScrollRange();
                int i8 = fastScroller.q;
                if (computeHorizontalScrollRange - i8 > 0 && i8 >= i6) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                fastScroller.u = z3;
                boolean z4 = fastScroller.t;
                if (!z4 && !z3) {
                    if (fastScroller.v != 0) {
                        fastScroller.f(0);
                        return;
                    }
                    return;
                }
                if (z4) {
                    float f = i7;
                    fastScroller.l = (int) ((((f / 2.0f) + computeVerticalScrollOffset) * f) / computeVerticalScrollRange);
                    fastScroller.k = Math.min(i7, (i7 * i7) / computeVerticalScrollRange);
                }
                if (fastScroller.u) {
                    float f2 = computeHorizontalScrollOffset;
                    float f3 = i8;
                    fastScroller.o = (int) ((((f3 / 2.0f) + f2) * f3) / computeHorizontalScrollRange);
                    fastScroller.n = Math.min(i8, (i8 * i8) / computeHorizontalScrollRange);
                }
                int i9 = fastScroller.v;
                if (i9 != 0 && i9 != 1) {
                    return;
                }
                fastScroller.f(1);
            }
        };
        this.c = stateListDrawable;
        this.d = drawable;
        this.g = stateListDrawable2;
        this.h = drawable2;
        this.e = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f = Math.max(i, drawable.getIntrinsicWidth());
        this.i = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.j = Math.max(i, drawable2.getIntrinsicWidth());
        this.a = i2;
        this.b = i3;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        ofFloat.addListener(new AnimatorListener());
        ofFloat.addUpdateListener(new AnimatorUpdater());
        RecyclerView recyclerView2 = this.s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            ArrayList arrayList = recyclerView2.x;
            RecyclerView.LayoutManager layoutManager = recyclerView2.v;
            if (layoutManager != null) {
                layoutManager.c("Cannot remove item decoration during a scroll  or layout");
            }
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                if (recyclerView2.getOverScrollMode() == 2) {
                    z = true;
                } else {
                    z = false;
                }
                recyclerView2.setWillNotDraw(z);
            }
            recyclerView2.L();
            recyclerView2.requestLayout();
            RecyclerView recyclerView3 = this.s;
            recyclerView3.y.remove(this);
            if (recyclerView3.z == this) {
                recyclerView3.z = null;
            }
            ArrayList arrayList2 = this.s.o0;
            if (arrayList2 != null) {
                arrayList2.remove(onScrollListener);
            }
            this.s.removeCallbacks(runnable);
        }
        this.s = recyclerView;
        ArrayList arrayList3 = recyclerView.x;
        RecyclerView.LayoutManager layoutManager2 = recyclerView.v;
        if (layoutManager2 != null) {
            layoutManager2.c("Cannot add item decoration during a scroll  or layout");
        }
        if (arrayList3.isEmpty()) {
            recyclerView.setWillNotDraw(false);
        }
        arrayList3.add(this);
        recyclerView.L();
        recyclerView.requestLayout();
        this.s.y.add(this);
        RecyclerView recyclerView4 = this.s;
        if (recyclerView4.o0 == null) {
            recyclerView4.o0 = new ArrayList();
        }
        recyclerView4.o0.add(onScrollListener);
    }

    public static int e(float f, float f2, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 != 0) {
            int i5 = i - i3;
            int i6 = (int) (((f2 - f) / i4) * i5);
            int i7 = i2 + i6;
            if (i7 < i5 && i7 >= 0) {
                return i6;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void b(Canvas canvas) {
        int i = this.q;
        RecyclerView recyclerView = this.s;
        if (i == recyclerView.getWidth() && this.r == recyclerView.getHeight()) {
            if (this.A != 0) {
                if (this.t) {
                    int i2 = this.q;
                    int i3 = this.e;
                    int i4 = i2 - i3;
                    int i5 = this.l;
                    int i6 = this.k;
                    int i7 = i5 - (i6 / 2);
                    StateListDrawable stateListDrawable = this.c;
                    stateListDrawable.setBounds(0, 0, i3, i6);
                    int i8 = this.f;
                    int i9 = this.r;
                    Drawable drawable = this.d;
                    drawable.setBounds(0, 0, i8, i9);
                    Field field = ViewCompat.a;
                    if (recyclerView.getLayoutDirection() == 1) {
                        drawable.draw(canvas);
                        canvas.translate(i3, i7);
                        canvas.scale(-1.0f, 1.0f);
                        stateListDrawable.draw(canvas);
                        canvas.scale(-1.0f, 1.0f);
                        canvas.translate(-i3, -i7);
                    } else {
                        canvas.translate(i4, 0.0f);
                        drawable.draw(canvas);
                        canvas.translate(0.0f, i7);
                        stateListDrawable.draw(canvas);
                        canvas.translate(-i4, -i7);
                    }
                }
                if (this.u) {
                    int i10 = this.r;
                    int i11 = this.i;
                    int i12 = i10 - i11;
                    int i13 = this.o;
                    int i14 = this.n;
                    int i15 = i13 - (i14 / 2);
                    StateListDrawable stateListDrawable2 = this.g;
                    stateListDrawable2.setBounds(0, 0, i14, i11);
                    int i16 = this.q;
                    int i17 = this.j;
                    Drawable drawable2 = this.h;
                    drawable2.setBounds(0, 0, i16, i17);
                    canvas.translate(0.0f, i12);
                    drawable2.draw(canvas);
                    canvas.translate(i15, 0.0f);
                    stateListDrawable2.draw(canvas);
                    canvas.translate(-i15, -i12);
                    return;
                }
                return;
            }
            return;
        }
        this.q = recyclerView.getWidth();
        this.r = recyclerView.getHeight();
        f(0);
    }

    public final boolean c(float f, float f2) {
        if (f2 >= this.r - this.i) {
            int i = this.o;
            int i2 = this.n;
            if (f >= i - (i2 / 2) && f <= (i2 / 2) + i) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final boolean d(float f, float f2) {
        Field field = ViewCompat.a;
        int layoutDirection = this.s.getLayoutDirection();
        int i = this.e;
        if (layoutDirection == 1) {
            if (f > i) {
                return false;
            }
        } else if (f < this.q - i) {
            return false;
        }
        int i2 = this.l;
        int i3 = this.k / 2;
        if (f2 >= i2 - i3 && f2 <= i3 + i2) {
            return true;
        }
        return false;
    }

    public final void f(int i) {
        RecyclerView recyclerView = this.s;
        Runnable runnable = this.B;
        StateListDrawable stateListDrawable = this.c;
        if (i == 2 && this.v != 2) {
            stateListDrawable.setState(C);
            recyclerView.removeCallbacks(runnable);
        }
        if (i == 0) {
            recyclerView.invalidate();
        } else {
            g();
        }
        if (this.v == 2 && i != 2) {
            stateListDrawable.setState(D);
            recyclerView.removeCallbacks(runnable);
            recyclerView.postDelayed(runnable, 1200L);
        } else if (i == 1) {
            recyclerView.removeCallbacks(runnable);
            recyclerView.postDelayed(runnable, 1500L);
        }
        this.v = i;
    }

    public final void g() {
        int i = this.A;
        ValueAnimator valueAnimator = this.z;
        if (i != 0) {
            if (i != 3) {
                return;
            } else {
                valueAnimator.cancel();
            }
        }
        this.A = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }
}
