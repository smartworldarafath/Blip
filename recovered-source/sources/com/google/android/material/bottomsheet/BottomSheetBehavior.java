package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import defpackage.q;
import defpackage.u2;
import io.sentry.d;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public int A;
    public final float B;
    public boolean C;
    public boolean D;
    public final boolean E;
    public int F;
    public ViewDragHelper G;
    public boolean H;
    public int I;
    public boolean J;
    public int K;
    public int L;
    public int M;
    public WeakReference N;
    public WeakReference O;
    public final ArrayList P;
    public VelocityTracker Q;
    public int R;
    public int S;
    public boolean T;
    public HashMap U;
    public int V;
    public final ViewDragHelper.Callback W;
    public final int a;
    public boolean b;
    public final float c;
    public int d;
    public boolean e;
    public int f;
    public final int g;
    public final boolean h;
    public MaterialShapeDrawable i;
    public final int j;
    public int k;
    public final boolean l;
    public final boolean m;
    public final boolean n;
    public final boolean o;
    public final boolean p;
    public int q;
    public int r;
    public ShapeAppearanceModel s;
    public boolean t;
    public SettleRunnable u;
    public final ValueAnimator v;
    public final int w;
    public int x;
    public int y;
    public final float z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class SettleRunnable implements Runnable {
        public final View j;
        public boolean k;
        public int l;

        public SettleRunnable(View view, int i) {
            this.j = view;
            this.l = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            ViewDragHelper viewDragHelper = bottomSheetBehavior.G;
            if (viewDragHelper != null && viewDragHelper.f()) {
                Field field = ViewCompat.a;
                this.j.postOnAnimation(this);
            } else {
                bottomSheetBehavior.z(this.l);
            }
            this.k = false;
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i;
        int i2;
        this.a = 0;
        this.b = true;
        this.j = -1;
        this.u = null;
        this.z = 0.5f;
        this.B = -1.0f;
        this.E = true;
        this.F = 4;
        this.P = new ArrayList();
        this.V = -1;
        this.W = new ViewDragHelper.Callback() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.5
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int a(View view, int i3) {
                return view.getLeft();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int b(View view, int i3) {
                int i4;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                int w = bottomSheetBehavior.w();
                if (bottomSheetBehavior.C) {
                    i4 = bottomSheetBehavior.M;
                } else {
                    i4 = bottomSheetBehavior.A;
                }
                if (i3 < w) {
                    return w;
                }
                if (i3 > i4) {
                    return i4;
                }
                return i3;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int d() {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.C) {
                    return bottomSheetBehavior.M;
                }
                return bottomSheetBehavior.A;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void f(int i3) {
                if (i3 == 1) {
                    BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                    if (bottomSheetBehavior.E) {
                        bottomSheetBehavior.z(1);
                    }
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void g(View view, int i3, int i4) {
                BottomSheetBehavior.this.u(i4);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void h(View view, float f, float f2) {
                int i3;
                int i4 = 6;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (f2 < 0.0f) {
                    if (bottomSheetBehavior.b) {
                        i3 = bottomSheetBehavior.x;
                    } else {
                        int top = view.getTop();
                        int i5 = bottomSheetBehavior.y;
                        if (top > i5) {
                            i3 = i5;
                        } else {
                            i3 = bottomSheetBehavior.w();
                        }
                    }
                    i4 = 3;
                } else if (bottomSheetBehavior.C && bottomSheetBehavior.B(view, f2)) {
                    if (Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) {
                        if (view.getTop() <= (bottomSheetBehavior.w() + bottomSheetBehavior.M) / 2) {
                            if (bottomSheetBehavior.b) {
                                i3 = bottomSheetBehavior.x;
                            } else if (Math.abs(view.getTop() - bottomSheetBehavior.w()) < Math.abs(view.getTop() - bottomSheetBehavior.y)) {
                                i3 = bottomSheetBehavior.w();
                            } else {
                                i3 = bottomSheetBehavior.y;
                            }
                            i4 = 3;
                        }
                    }
                    i3 = bottomSheetBehavior.M;
                    i4 = 5;
                } else if (f2 != 0.0f && Math.abs(f) <= Math.abs(f2)) {
                    if (bottomSheetBehavior.b) {
                        i3 = bottomSheetBehavior.A;
                    } else {
                        int top2 = view.getTop();
                        if (Math.abs(top2 - bottomSheetBehavior.y) < Math.abs(top2 - bottomSheetBehavior.A)) {
                            i3 = bottomSheetBehavior.y;
                        } else {
                            i3 = bottomSheetBehavior.A;
                        }
                    }
                    i4 = 4;
                } else {
                    int top3 = view.getTop();
                    if (bottomSheetBehavior.b) {
                        if (Math.abs(top3 - bottomSheetBehavior.x) < Math.abs(top3 - bottomSheetBehavior.A)) {
                            i3 = bottomSheetBehavior.x;
                            i4 = 3;
                        } else {
                            i3 = bottomSheetBehavior.A;
                            i4 = 4;
                        }
                    } else {
                        int i6 = bottomSheetBehavior.y;
                        if (top3 < i6) {
                            if (top3 < Math.abs(top3 - bottomSheetBehavior.A)) {
                                i3 = bottomSheetBehavior.w();
                                i4 = 3;
                            } else {
                                i3 = bottomSheetBehavior.y;
                            }
                        } else if (Math.abs(top3 - i6) < Math.abs(top3 - bottomSheetBehavior.A)) {
                            i3 = bottomSheetBehavior.y;
                        } else {
                            i3 = bottomSheetBehavior.A;
                            i4 = 4;
                        }
                    }
                }
                bottomSheetBehavior.C(view, i4, i3, true);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final boolean i(View view, int i3) {
                View view2;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                int i4 = bottomSheetBehavior.F;
                if (i4 != 1 && !bottomSheetBehavior.T) {
                    if (i4 == 3 && bottomSheetBehavior.R == i3) {
                        WeakReference weakReference = bottomSheetBehavior.O;
                        if (weakReference != null) {
                            view2 = (View) weakReference.get();
                        } else {
                            view2 = null;
                        }
                        if (view2 != null && view2.canScrollVertically(-1)) {
                            return false;
                        }
                    }
                    WeakReference weakReference2 = bottomSheetBehavior.N;
                    if (weakReference2 != null && weakReference2.get() == view) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
        };
        this.g = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.a);
        this.h = obtainStyledAttributes.hasValue(16);
        boolean hasValue = obtainStyledAttributes.hasValue(2);
        if (hasValue) {
            t(context, attributeSet, hasValue, MaterialResources.a(context, obtainStyledAttributes, 2));
        } else {
            t(context, attributeSet, hasValue, null);
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.v = ofFloat;
        ofFloat.setDuration(500L);
        this.v.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                MaterialShapeDrawable materialShapeDrawable = BottomSheetBehavior.this.i;
                if (materialShapeDrawable != null) {
                    materialShapeDrawable.s(floatValue);
                }
            }
        });
        this.B = obtainStyledAttributes.getDimension(1, -1.0f);
        if (obtainStyledAttributes.hasValue(0)) {
            this.j = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(8);
        if (peekValue != null && (i2 = peekValue.data) == -1) {
            x(i2);
        } else {
            x(obtainStyledAttributes.getDimensionPixelSize(8, -1));
        }
        boolean z = obtainStyledAttributes.getBoolean(7, false);
        if (this.C != z) {
            this.C = z;
            if (!z && this.F == 5) {
                y(4);
            }
            D();
        }
        this.l = obtainStyledAttributes.getBoolean(11, false);
        boolean z2 = obtainStyledAttributes.getBoolean(5, true);
        if (this.b != z2) {
            this.b = z2;
            if (this.N != null) {
                r();
            }
            if (this.b && this.F == 6) {
                i = 3;
            } else {
                i = this.F;
            }
            z(i);
            D();
        }
        this.D = obtainStyledAttributes.getBoolean(10, false);
        this.E = obtainStyledAttributes.getBoolean(3, true);
        this.a = obtainStyledAttributes.getInt(9, 0);
        float f = obtainStyledAttributes.getFloat(6, 0.5f);
        if (f > 0.0f && f < 1.0f) {
            this.z = f;
            if (this.N != null) {
                this.y = (int) ((1.0f - f) * this.M);
            }
            TypedValue peekValue2 = obtainStyledAttributes.peekValue(4);
            if (peekValue2 != null && peekValue2.type == 16) {
                int i3 = peekValue2.data;
                if (i3 >= 0) {
                    this.w = i3;
                } else {
                    u2.g("offset must be greater than or equal to 0");
                    throw null;
                }
            } else {
                int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(4, 0);
                if (dimensionPixelOffset >= 0) {
                    this.w = dimensionPixelOffset;
                } else {
                    u2.g("offset must be greater than or equal to 0");
                    throw null;
                }
            }
            this.m = obtainStyledAttributes.getBoolean(12, false);
            this.n = obtainStyledAttributes.getBoolean(13, false);
            this.o = obtainStyledAttributes.getBoolean(14, false);
            this.p = obtainStyledAttributes.getBoolean(15, true);
            obtainStyledAttributes.recycle();
            this.c = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
            return;
        }
        u2.g("ratio must be a float value between 0 and 1");
        throw null;
    }

    public static View v(View view) {
        Field field = ViewCompat.a;
        if (view.isNestedScrollingEnabled()) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View v = v(viewGroup.getChildAt(i));
                if (v != null) {
                    return v;
                }
            }
            return null;
        }
        return null;
    }

    public final void A(View view, int i) {
        int i2;
        int i3;
        if (i == 4) {
            i2 = this.A;
        } else if (i == 6) {
            i2 = this.y;
            if (this.b && i2 <= (i3 = this.x)) {
                i = 3;
                i2 = i3;
            }
        } else if (i == 3) {
            i2 = w();
        } else if (this.C && i == 5) {
            i2 = this.M;
        } else {
            u2.g(q.g(i, "Illegal state argument: "));
            return;
        }
        C(view, i, i2, false);
    }

    public final boolean B(View view, float f) {
        if (this.D) {
            return true;
        }
        if (view.getTop() < this.A) {
            return false;
        }
        if (Math.abs(((f * 0.1f) + view.getTop()) - this.A) / s() > 0.5f) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0044, code lost:
    
        if (r5.k != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0046, code lost:
    
        r5.l = r4;
        r4 = androidx.core.view.ViewCompat.a;
        r3.postOnAnimation(r5);
        r2.u.k = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0052, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0053, code lost:
    
        r5.l = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0055, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002c, code lost:
    
        if (r5 != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
    
        if (r0.o(r3.getLeft(), r5) != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x002e, code lost:
    
        z(2);
        E(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0037, code lost:
    
        if (r2.u != null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0039, code lost:
    
        r2.u = new com.google.android.material.bottomsheet.BottomSheetBehavior.SettleRunnable(r2, r3, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0040, code lost:
    
        r5 = r2.u;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void C(View view, int i, int i2, boolean z) {
        ViewDragHelper viewDragHelper = this.G;
        if (viewDragHelper != null) {
            if (!z) {
                int left = view.getLeft();
                viewDragHelper.r = view;
                viewDragHelper.c = -1;
                boolean h = viewDragHelper.h(left, i2, 0, 0);
                if (!h && viewDragHelper.a == 0 && viewDragHelper.r != null) {
                    viewDragHelper.r = null;
                }
            }
        }
        z(i);
    }

    public final void D() {
        View view;
        int i;
        boolean z;
        WeakReference weakReference = this.N;
        if (weakReference != null && (view = (View) weakReference.get()) != null) {
            ViewCompat.k(view, 524288);
            ViewCompat.i(view, 0);
            ViewCompat.k(view, 262144);
            ViewCompat.i(view, 0);
            ViewCompat.k(view, 1048576);
            ViewCompat.i(view, 0);
            int i2 = this.V;
            if (i2 != -1) {
                ViewCompat.k(view, i2);
                ViewCompat.i(view, 0);
            }
            final int i3 = 6;
            if (!this.b && this.F != 6) {
                String string = view.getResources().getString(R.string.bottomsheet_action_expand_halfway);
                AccessibilityViewCommand accessibilityViewCommand = new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                    public final boolean a(View view2) {
                        BottomSheetBehavior.this.y(i3);
                        return true;
                    }
                };
                ArrayList e = ViewCompat.e(view);
                int i4 = 0;
                while (true) {
                    if (i4 < e.size()) {
                        if (TextUtils.equals(string, ((AccessibilityNodeInfo.AccessibilityAction) ((AccessibilityNodeInfoCompat.AccessibilityActionCompat) e.get(i4)).a).getLabel())) {
                            i = ((AccessibilityNodeInfoCompat.AccessibilityActionCompat) e.get(i4)).a();
                            break;
                        }
                        i4++;
                    } else {
                        int i5 = 0;
                        int i6 = -1;
                        while (true) {
                            int[] iArr = ViewCompat.c;
                            if (i5 >= 32 || i6 != -1) {
                                break;
                            }
                            int i7 = iArr[i5];
                            boolean z2 = true;
                            for (int i8 = 0; i8 < e.size(); i8++) {
                                if (((AccessibilityNodeInfoCompat.AccessibilityActionCompat) e.get(i8)).a() != i7) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                z2 &= z;
                            }
                            if (z2) {
                                i6 = i7;
                            }
                            i5++;
                        }
                        i = i6;
                    }
                }
                if (i != -1) {
                    AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat = new AccessibilityNodeInfoCompat.AccessibilityActionCompat(null, i, string, accessibilityViewCommand, null);
                    AccessibilityDelegateCompat c = ViewCompat.c(view);
                    if (c == null) {
                        c = new AccessibilityDelegateCompat();
                    }
                    ViewCompat.n(view, c);
                    ViewCompat.k(view, accessibilityActionCompat.a());
                    ViewCompat.e(view).add(accessibilityActionCompat);
                    ViewCompat.i(view, 0);
                }
                this.V = i;
            }
            if (this.C) {
                final int i9 = 5;
                if (this.F != 5) {
                    ViewCompat.l(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.l, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                        public final boolean a(View view2) {
                            BottomSheetBehavior.this.y(i9);
                            return true;
                        }
                    });
                }
            }
            int i10 = this.F;
            final int i11 = 4;
            final int i12 = 3;
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 6) {
                        return;
                    }
                    ViewCompat.l(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.k, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                        public final boolean a(View view2) {
                            BottomSheetBehavior.this.y(i11);
                            return true;
                        }
                    });
                    ViewCompat.l(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.j, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                        public final boolean a(View view2) {
                            BottomSheetBehavior.this.y(i12);
                            return true;
                        }
                    });
                    return;
                }
                if (this.b) {
                    i3 = 3;
                }
                ViewCompat.l(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.j, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                    public final boolean a(View view2) {
                        BottomSheetBehavior.this.y(i3);
                        return true;
                    }
                });
                return;
            }
            if (this.b) {
                i3 = 4;
            }
            ViewCompat.l(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.k, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean a(View view2) {
                    BottomSheetBehavior.this.y(i3);
                    return true;
                }
            });
        }
    }

    public final void E(int i) {
        boolean z;
        ValueAnimator valueAnimator;
        float f;
        if (i != 2) {
            if (i == 3) {
                z = true;
            } else {
                z = false;
            }
            if (this.t != z) {
                this.t = z;
                if (this.i != null && (valueAnimator = this.v) != null) {
                    if (valueAnimator.isRunning()) {
                        valueAnimator.reverse();
                        return;
                    }
                    if (z) {
                        f = 0.0f;
                    } else {
                        f = 1.0f;
                    }
                    valueAnimator.setFloatValues(1.0f - f, f);
                    valueAnimator.start();
                }
            }
        }
    }

    public final void F(boolean z) {
        WeakReference weakReference = this.N;
        if (weakReference != null) {
            ViewParent parent = ((View) weakReference.get()).getParent();
            if (parent instanceof CoordinatorLayout) {
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
                int childCount = coordinatorLayout.getChildCount();
                if (z) {
                    if (this.U == null) {
                        this.U = new HashMap(childCount);
                    } else {
                        return;
                    }
                }
                for (int i = 0; i < childCount; i++) {
                    View childAt = coordinatorLayout.getChildAt(i);
                    if (childAt != this.N.get() && z) {
                        this.U.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    }
                }
                if (!z) {
                    this.U = null;
                }
            }
        }
    }

    public final void G() {
        View view;
        if (this.N != null) {
            r();
            if (this.F == 4 && (view = (View) this.N.get()) != null) {
                view.requestLayout();
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void c(CoordinatorLayout.LayoutParams layoutParams) {
        this.N = null;
        this.G = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void e() {
        this.N = null;
        this.G = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z;
        View view2;
        ViewDragHelper viewDragHelper;
        if (view.isShown() && this.E) {
            int actionMasked = motionEvent.getActionMasked();
            View view3 = null;
            if (actionMasked == 0) {
                this.R = -1;
                VelocityTracker velocityTracker = this.Q;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.Q = null;
                }
            }
            if (this.Q == null) {
                this.Q = VelocityTracker.obtain();
            }
            this.Q.addMovement(motionEvent);
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    this.T = false;
                    this.R = -1;
                    if (this.H) {
                        this.H = false;
                        return false;
                    }
                }
            } else {
                int x = (int) motionEvent.getX();
                this.S = (int) motionEvent.getY();
                if (this.F != 2) {
                    WeakReference weakReference = this.O;
                    if (weakReference != null) {
                        view2 = (View) weakReference.get();
                    } else {
                        view2 = null;
                    }
                    if (view2 != null && coordinatorLayout.o(view2, x, this.S)) {
                        this.R = motionEvent.getPointerId(motionEvent.getActionIndex());
                        this.T = true;
                    }
                }
                if (this.R == -1 && !coordinatorLayout.o(view, x, this.S)) {
                    z = true;
                } else {
                    z = false;
                }
                this.H = z;
            }
            if (this.H || (viewDragHelper = this.G) == null || !viewDragHelper.p(motionEvent)) {
                WeakReference weakReference2 = this.O;
                if (weakReference2 != null) {
                    view3 = (View) weakReference2.get();
                }
                if (actionMasked != 2 || view3 == null || this.H || this.F == 1 || coordinatorLayout.o(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.G == null || Math.abs(this.S - motionEvent.getY()) <= this.G.b) {
                    return false;
                }
            }
            return true;
        }
        this.H = true;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean g(CoordinatorLayout coordinatorLayout, final View view, int i) {
        final boolean z;
        boolean z2;
        float f;
        MaterialShapeDrawable materialShapeDrawable;
        Field field = ViewCompat.a;
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        if (this.N == null) {
            this.f = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            if (Build.VERSION.SDK_INT >= 29 && !this.l && !this.e) {
                z = true;
            } else {
                z = false;
            }
            if (this.m || this.n || this.o || z) {
                ViewUtils.a(view, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.4
                    @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
                    public final WindowInsetsCompat a(View view2, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
                        int i2;
                        int i3 = relativePadding.a;
                        int i4 = relativePadding.b;
                        BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                        boolean z3 = bottomSheetBehavior.m;
                        bottomSheetBehavior.r = windowInsetsCompat.k();
                        Field field2 = ViewCompat.a;
                        boolean z4 = true;
                        if (view2.getLayoutDirection() != 1) {
                            z4 = false;
                        }
                        int paddingBottom = view2.getPaddingBottom();
                        int paddingLeft = view2.getPaddingLeft();
                        int paddingRight = view2.getPaddingRight();
                        if (z3) {
                            int h = windowInsetsCompat.h();
                            bottomSheetBehavior.q = h;
                            paddingBottom = h + relativePadding.c;
                        }
                        if (bottomSheetBehavior.n) {
                            if (z4) {
                                i2 = i4;
                            } else {
                                i2 = i3;
                            }
                            paddingLeft = windowInsetsCompat.i() + i2;
                        }
                        if (bottomSheetBehavior.o) {
                            if (!z4) {
                                i3 = i4;
                            }
                            paddingRight = windowInsetsCompat.j() + i3;
                        }
                        view2.setPadding(paddingLeft, view2.getPaddingTop(), paddingRight, paddingBottom);
                        boolean z5 = z;
                        if (z5) {
                            bottomSheetBehavior.k = windowInsetsCompat.g().d;
                        }
                        if (!z3 && !z5) {
                            return windowInsetsCompat;
                        }
                        bottomSheetBehavior.G();
                        return windowInsetsCompat;
                    }
                });
            }
            this.N = new WeakReference(view);
            if (this.h && (materialShapeDrawable = this.i) != null) {
                view.setBackground(materialShapeDrawable);
            }
            MaterialShapeDrawable materialShapeDrawable2 = this.i;
            if (materialShapeDrawable2 != null) {
                float f2 = this.B;
                if (f2 == -1.0f) {
                    f2 = view.getElevation();
                }
                materialShapeDrawable2.q(f2);
                if (this.F == 3) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                this.t = z2;
                MaterialShapeDrawable materialShapeDrawable3 = this.i;
                if (z2) {
                    f = 0.0f;
                } else {
                    f = 1.0f;
                }
                materialShapeDrawable3.s(f);
            }
            D();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            int measuredWidth = view.getMeasuredWidth();
            int i2 = this.j;
            if (measuredWidth > i2 && i2 != -1) {
                final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                layoutParams.width = i2;
                view.post(new Runnable() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        view.setLayoutParams(layoutParams);
                    }
                });
            }
        }
        if (this.G == null) {
            this.G = new ViewDragHelper(coordinatorLayout.getContext(), coordinatorLayout, this.W);
        }
        int top = view.getTop();
        coordinatorLayout.q(view, i);
        this.L = coordinatorLayout.getWidth();
        this.M = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.K = height;
        int i3 = this.M;
        int i4 = i3 - height;
        int i5 = this.r;
        if (i4 < i5) {
            if (this.p) {
                this.K = i3;
            } else {
                this.K = i3 - i5;
            }
        }
        this.x = Math.max(0, i3 - this.K);
        this.y = (int) ((1.0f - this.z) * this.M);
        r();
        int i6 = this.F;
        if (i6 == 3) {
            view.offsetTopAndBottom(w());
        } else if (i6 == 6) {
            view.offsetTopAndBottom(this.y);
        } else if (this.C && i6 == 5) {
            view.offsetTopAndBottom(this.M);
        } else if (i6 == 4) {
            view.offsetTopAndBottom(this.A);
        } else if (i6 == 1 || i6 == 2) {
            view.offsetTopAndBottom(top - view.getTop());
        }
        this.O = new WeakReference(v(view));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean i(View view) {
        WeakReference weakReference = this.O;
        if (weakReference != null && view == weakReference.get() && this.F != 3) {
            return true;
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void j(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
        View view3;
        if (i3 != 1) {
            WeakReference weakReference = this.O;
            if (weakReference != null) {
                view3 = (View) weakReference.get();
            } else {
                view3 = null;
            }
            if (view2 == view3) {
                int top = view.getTop();
                int i4 = top - i2;
                boolean z = this.E;
                if (i2 > 0) {
                    if (i4 < w()) {
                        int w = top - w();
                        iArr[1] = w;
                        int i5 = -w;
                        Field field = ViewCompat.a;
                        view.offsetTopAndBottom(i5);
                        z(3);
                    } else if (z) {
                        iArr[1] = i2;
                        Field field2 = ViewCompat.a;
                        view.offsetTopAndBottom(-i2);
                        z(1);
                    } else {
                        return;
                    }
                } else if (i2 < 0 && !view2.canScrollVertically(-1)) {
                    int i6 = this.A;
                    if (i4 > i6 && !this.C) {
                        int i7 = top - i6;
                        iArr[1] = i7;
                        int i8 = -i7;
                        Field field3 = ViewCompat.a;
                        view.offsetTopAndBottom(i8);
                        z(4);
                    } else {
                        if (!z) {
                            return;
                        }
                        iArr[1] = i2;
                        Field field4 = ViewCompat.a;
                        view.offsetTopAndBottom(-i2);
                        z(1);
                    }
                }
                u(view.getTop());
                this.I = i2;
                this.J = true;
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void m(View view, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        int i = this.a;
        if (i != 0) {
            if (i == -1 || (i & 1) == 1) {
                this.d = savedState.m;
            }
            if (i == -1 || (i & 2) == 2) {
                this.b = savedState.n;
            }
            if (i == -1 || (i & 4) == 4) {
                this.C = savedState.o;
            }
            if (i == -1 || (i & 8) == 8) {
                this.D = savedState.p;
            }
        }
        int i2 = savedState.l;
        if (i2 != 1 && i2 != 2) {
            this.F = i2;
        } else {
            this.F = 4;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final Parcelable n(View view) {
        AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
        return new SavedState(this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean o(View view, int i, int i2) {
        this.I = 0;
        this.J = false;
        if ((i & 2) == 0) {
            return false;
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void p(View view, View view2, int i) {
        int i2;
        float yVelocity;
        int i3 = 3;
        if (view.getTop() == w()) {
            z(3);
            return;
        }
        WeakReference weakReference = this.O;
        if (weakReference != null && view2 == weakReference.get() && this.J) {
            if (this.I > 0) {
                if (this.b) {
                    i2 = this.x;
                } else {
                    int top = view.getTop();
                    int i4 = this.y;
                    if (top > i4) {
                        i3 = 6;
                        i2 = i4;
                    } else {
                        i2 = w();
                    }
                }
            } else {
                if (this.C) {
                    VelocityTracker velocityTracker = this.Q;
                    if (velocityTracker == null) {
                        yVelocity = 0.0f;
                    } else {
                        velocityTracker.computeCurrentVelocity(1000, this.c);
                        yVelocity = this.Q.getYVelocity(this.R);
                    }
                    if (B(view, yVelocity)) {
                        i2 = this.M;
                        i3 = 5;
                    }
                }
                if (this.I == 0) {
                    int top2 = view.getTop();
                    if (this.b) {
                        if (Math.abs(top2 - this.x) < Math.abs(top2 - this.A)) {
                            i2 = this.x;
                        } else {
                            i2 = this.A;
                            i3 = 4;
                        }
                    } else {
                        int i5 = this.y;
                        if (top2 < i5) {
                            if (top2 < Math.abs(top2 - this.A)) {
                                i2 = w();
                            } else {
                                i2 = this.y;
                            }
                        } else if (Math.abs(top2 - i5) < Math.abs(top2 - this.A)) {
                            i2 = this.y;
                        } else {
                            i2 = this.A;
                            i3 = 4;
                        }
                        i3 = 6;
                    }
                } else {
                    if (this.b) {
                        i2 = this.A;
                    } else {
                        int top3 = view.getTop();
                        if (Math.abs(top3 - this.y) < Math.abs(top3 - this.A)) {
                            i2 = this.y;
                            i3 = 6;
                        } else {
                            i2 = this.A;
                        }
                    }
                    i3 = 4;
                }
            }
            C(view, i3, i2, false);
            this.J = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean q(View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.F == 1 && actionMasked == 0) {
            return true;
        }
        ViewDragHelper viewDragHelper = this.G;
        if (viewDragHelper != null) {
            viewDragHelper.j(motionEvent);
        }
        if (actionMasked == 0) {
            this.R = -1;
            VelocityTracker velocityTracker = this.Q;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.Q = null;
            }
        }
        if (this.Q == null) {
            this.Q = VelocityTracker.obtain();
        }
        this.Q.addMovement(motionEvent);
        if (this.G != null && actionMasked == 2 && !this.H) {
            float abs = Math.abs(this.S - motionEvent.getY());
            ViewDragHelper viewDragHelper2 = this.G;
            if (abs > viewDragHelper2.b) {
                viewDragHelper2.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.H;
    }

    public final void r() {
        int s = s();
        boolean z = this.b;
        int i = this.M;
        if (z) {
            this.A = Math.max(i - s, this.x);
        } else {
            this.A = i - s;
        }
    }

    public final int s() {
        int i;
        int i2;
        int i3;
        if (this.e) {
            i = Math.min(Math.max(this.f, this.M - ((this.L * 9) / 16)), this.K);
            i2 = this.q;
        } else {
            if (!this.l && !this.m && (i3 = this.k) > 0) {
                return Math.max(this.d, i3 + this.g);
            }
            i = this.d;
            i2 = this.q;
        }
        return i + i2;
    }

    public final void t(Context context, AttributeSet attributeSet, boolean z, ColorStateList colorStateList) {
        if (this.h) {
            this.s = ShapeAppearanceModel.a(context, attributeSet, R.attr.bottomSheetStyle, R.style.Widget_Design_BottomSheet_Modal).a();
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.s);
            this.i = materialShapeDrawable;
            materialShapeDrawable.o(context);
            if (z && colorStateList != null) {
                this.i.r(colorStateList);
                return;
            }
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
            this.i.setTint(typedValue.data);
        }
    }

    public final void u(int i) {
        if (((View) this.N.get()) != null) {
            ArrayList arrayList = this.P;
            if (!arrayList.isEmpty()) {
                int i2 = this.A;
                if (i <= i2 && i2 != w()) {
                    w();
                }
                if (arrayList.size() > 0) {
                    arrayList.get(0).getClass();
                    d.i();
                }
            }
        }
    }

    public final int w() {
        int i;
        if (this.b) {
            return this.x;
        }
        if (this.p) {
            i = 0;
        } else {
            i = this.r;
        }
        return Math.max(this.w, i);
    }

    public final void x(int i) {
        boolean z = this.e;
        if (i == -1) {
            if (!z) {
                this.e = true;
            } else {
                return;
            }
        } else {
            if (!z && this.d == i) {
                return;
            }
            this.e = false;
            this.d = Math.max(0, i);
        }
        G();
    }

    public final void y(final int i) {
        if (i != this.F) {
            if (this.N == null) {
                if (i != 4 && i != 3 && i != 6 && (!this.C || i != 5)) {
                    return;
                }
                this.F = i;
                return;
            }
            final View view = (View) this.N.get();
            if (view != null) {
                ViewParent parent = view.getParent();
                if (parent != null && parent.isLayoutRequested()) {
                    Field field = ViewCompat.a;
                    if (view.isAttachedToWindow()) {
                        view.post(new Runnable() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                BottomSheetBehavior.this.A(view, i);
                            }
                        });
                        return;
                    }
                }
                A(view, i);
            }
        }
    }

    public final void z(int i) {
        if (this.F != i) {
            this.F = i;
            WeakReference weakReference = this.N;
            if (weakReference == null || ((View) weakReference.get()) == null) {
                return;
            }
            if (i == 3) {
                F(true);
            } else if (i == 6 || i == 5 || i == 4) {
                F(false);
            }
            E(i);
            ArrayList arrayList = this.P;
            if (arrayList.size() <= 0) {
                D();
            } else {
                arrayList.get(0).getClass();
                d.i();
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SavedState extends androidx.customview.view.AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public final int l;
        public final int m;
        public final boolean n;
        public final boolean o;
        public final boolean p;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            boolean z;
            boolean z2;
            this.l = parcel.readInt();
            this.m = parcel.readInt();
            if (parcel.readInt() == 1) {
                z = true;
            } else {
                z = false;
            }
            this.n = z;
            if (parcel.readInt() == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.o = z2;
            this.p = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.l);
            parcel.writeInt(this.m);
            parcel.writeInt(this.n ? 1 : 0);
            parcel.writeInt(this.o ? 1 : 0);
            parcel.writeInt(this.p ? 1 : 0);
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$SavedState$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public static class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }
        }

        public SavedState(BottomSheetBehavior bottomSheetBehavior) {
            super(AbsSavedState.EMPTY_STATE);
            this.l = bottomSheetBehavior.F;
            this.m = bottomSheetBehavior.d;
            this.n = bottomSheetBehavior.b;
            this.o = bottomSheetBehavior.C;
            this.p = bottomSheetBehavior.D;
        }
    }

    public BottomSheetBehavior() {
        this.a = 0;
        this.b = true;
        this.j = -1;
        this.u = null;
        this.z = 0.5f;
        this.B = -1.0f;
        this.E = true;
        this.F = 4;
        this.P = new ArrayList();
        this.V = -1;
        this.W = new ViewDragHelper.Callback() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.5
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int a(View view, int i3) {
                return view.getLeft();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int b(View view, int i3) {
                int i4;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                int w = bottomSheetBehavior.w();
                if (bottomSheetBehavior.C) {
                    i4 = bottomSheetBehavior.M;
                } else {
                    i4 = bottomSheetBehavior.A;
                }
                if (i3 < w) {
                    return w;
                }
                if (i3 > i4) {
                    return i4;
                }
                return i3;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int d() {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.C) {
                    return bottomSheetBehavior.M;
                }
                return bottomSheetBehavior.A;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void f(int i3) {
                if (i3 == 1) {
                    BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                    if (bottomSheetBehavior.E) {
                        bottomSheetBehavior.z(1);
                    }
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void g(View view, int i3, int i4) {
                BottomSheetBehavior.this.u(i4);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void h(View view, float f, float f2) {
                int i3;
                int i4 = 6;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (f2 < 0.0f) {
                    if (bottomSheetBehavior.b) {
                        i3 = bottomSheetBehavior.x;
                    } else {
                        int top = view.getTop();
                        int i5 = bottomSheetBehavior.y;
                        if (top > i5) {
                            i3 = i5;
                        } else {
                            i3 = bottomSheetBehavior.w();
                        }
                    }
                    i4 = 3;
                } else if (bottomSheetBehavior.C && bottomSheetBehavior.B(view, f2)) {
                    if (Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) {
                        if (view.getTop() <= (bottomSheetBehavior.w() + bottomSheetBehavior.M) / 2) {
                            if (bottomSheetBehavior.b) {
                                i3 = bottomSheetBehavior.x;
                            } else if (Math.abs(view.getTop() - bottomSheetBehavior.w()) < Math.abs(view.getTop() - bottomSheetBehavior.y)) {
                                i3 = bottomSheetBehavior.w();
                            } else {
                                i3 = bottomSheetBehavior.y;
                            }
                            i4 = 3;
                        }
                    }
                    i3 = bottomSheetBehavior.M;
                    i4 = 5;
                } else if (f2 != 0.0f && Math.abs(f) <= Math.abs(f2)) {
                    if (bottomSheetBehavior.b) {
                        i3 = bottomSheetBehavior.A;
                    } else {
                        int top2 = view.getTop();
                        if (Math.abs(top2 - bottomSheetBehavior.y) < Math.abs(top2 - bottomSheetBehavior.A)) {
                            i3 = bottomSheetBehavior.y;
                        } else {
                            i3 = bottomSheetBehavior.A;
                        }
                    }
                    i4 = 4;
                } else {
                    int top3 = view.getTop();
                    if (bottomSheetBehavior.b) {
                        if (Math.abs(top3 - bottomSheetBehavior.x) < Math.abs(top3 - bottomSheetBehavior.A)) {
                            i3 = bottomSheetBehavior.x;
                            i4 = 3;
                        } else {
                            i3 = bottomSheetBehavior.A;
                            i4 = 4;
                        }
                    } else {
                        int i6 = bottomSheetBehavior.y;
                        if (top3 < i6) {
                            if (top3 < Math.abs(top3 - bottomSheetBehavior.A)) {
                                i3 = bottomSheetBehavior.w();
                                i4 = 3;
                            } else {
                                i3 = bottomSheetBehavior.y;
                            }
                        } else if (Math.abs(top3 - i6) < Math.abs(top3 - bottomSheetBehavior.A)) {
                            i3 = bottomSheetBehavior.y;
                        } else {
                            i3 = bottomSheetBehavior.A;
                            i4 = 4;
                        }
                    }
                }
                bottomSheetBehavior.C(view, i4, i3, true);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final boolean i(View view, int i3) {
                View view2;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                int i4 = bottomSheetBehavior.F;
                if (i4 != 1 && !bottomSheetBehavior.T) {
                    if (i4 == 3 && bottomSheetBehavior.R == i3) {
                        WeakReference weakReference = bottomSheetBehavior.O;
                        if (weakReference != null) {
                            view2 = (View) weakReference.get();
                        } else {
                            view2 = null;
                        }
                        if (view2 != null && view2.canScrollVertically(-1)) {
                            return false;
                        }
                    }
                    WeakReference weakReference2 = bottomSheetBehavior.N;
                    if (weakReference2 != null && weakReference2.get() == view) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
        };
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void k(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
    }
}
