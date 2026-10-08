package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.collection.SimpleArrayMap;
import androidx.coordinatorlayout.R$styleable;
import androidx.core.util.Pools$SimplePool;
import androidx.core.util.Pools$SynchronizedPool;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import defpackage.k8;
import defpackage.u2;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements NestedScrollingParent2, NestedScrollingParent3 {
    public static final String C;
    public static final Class[] D;
    public static final ThreadLocal E;
    public static final Comparator F;
    public static final Pools$SynchronizedPool G;
    public OnApplyWindowInsetsListener A;
    public final NestedScrollingParentHelper B;
    public final ArrayList j;
    public final DirectedAcyclicGraph k;
    public final ArrayList l;
    public final ArrayList m;
    public final int[] n;
    public final int[] o;
    public boolean p;
    public boolean q;
    public final int[] r;
    public View s;
    public View t;
    public OnPreDrawListener u;
    public boolean v;
    public WindowInsetsCompat w;
    public boolean x;
    public Drawable y;
    public ViewGroup.OnHierarchyChangeListener z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* loaded from: classes.dex */
    public @interface DefaultBehavior {
        Class value();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class HierarchyChangeListener implements ViewGroup.OnHierarchyChangeListener {
        public HierarchyChangeListener() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.z;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout coordinatorLayout = CoordinatorLayout.this;
            coordinatorLayout.p(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = coordinatorLayout.z;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class OnPreDrawListener implements ViewTreeObserver.OnPreDrawListener {
        public OnPreDrawListener() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            CoordinatorLayout.this.p(0);
            return true;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ViewElevationComparator implements Comparator<View> {
        @Override // java.util.Comparator
        public final int compare(View view, View view2) {
            Field field = ViewCompat.a;
            float z = view.getZ();
            float z2 = view2.getZ();
            if (z > z2) {
                return -1;
            }
            if (z < z2) {
                return 1;
            }
            return 0;
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, java.util.Comparator] */
    static {
        String str;
        Package r0 = CoordinatorLayout.class.getPackage();
        if (r0 != null) {
            str = r0.getName();
        } else {
            str = null;
        }
        C = str;
        F = new Object();
        D = new Class[]{Context.class, AttributeSet.class};
        E = new ThreadLocal();
        G = new Pools$SynchronizedPool();
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.core.view.NestedScrollingParentHelper, java.lang.Object] */
    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.coordinatorLayoutStyle);
        this.j = new ArrayList();
        this.k = new DirectedAcyclicGraph();
        this.l = new ArrayList();
        this.m = new ArrayList();
        this.n = new int[2];
        this.o = new int[2];
        this.B = new Object();
        int[] iArr = R$styleable.a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.coordinatorLayoutStyle, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, obtainStyledAttributes, R.attr.coordinatorLayoutStyle, 0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            int[] intArray = resources.getIntArray(resourceId);
            this.r = intArray;
            float f = resources.getDisplayMetrics().density;
            int length = intArray.length;
            for (int i = 0; i < length; i++) {
                this.r[i] = (int) (r1[i] * f);
            }
        }
        this.y = obtainStyledAttributes.getDrawable(1);
        obtainStyledAttributes.recycle();
        w();
        super.setOnHierarchyChangeListener(new HierarchyChangeListener());
        Field field = ViewCompat.a;
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    public static Rect a() {
        Rect rect = (Rect) G.a();
        if (rect == null) {
            return new Rect();
        }
        return rect;
    }

    public static void l(int i, Rect rect, Rect rect2, LayoutParams layoutParams, int i2, int i3) {
        int width;
        int height;
        int i4 = layoutParams.c;
        if (i4 == 0) {
            i4 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i4, i);
        int i5 = layoutParams.d;
        if ((i5 & 7) == 0) {
            i5 |= 8388611;
        }
        if ((i5 & 112) == 0) {
            i5 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i5, i);
        int i6 = absoluteGravity & 7;
        int i7 = absoluteGravity & 112;
        int i8 = absoluteGravity2 & 7;
        int i9 = absoluteGravity2 & 112;
        if (i8 != 1) {
            if (i8 != 5) {
                width = rect.left;
            } else {
                width = rect.right;
            }
        } else {
            width = rect.left + (rect.width() / 2);
        }
        if (i9 != 16) {
            if (i9 != 80) {
                height = rect.top;
            } else {
                height = rect.bottom;
            }
        } else {
            height = rect.top + (rect.height() / 2);
        }
        if (i6 != 1) {
            if (i6 != 5) {
                width -= i2;
            }
        } else {
            width -= i2 / 2;
        }
        if (i7 != 16) {
            if (i7 != 80) {
                height -= i3;
            }
        } else {
            height -= i3 / 2;
        }
        rect2.set(width, height, i2 + width, i3 + height);
    }

    public static LayoutParams n(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.b) {
            DefaultBehavior defaultBehavior = null;
            for (Class<?> cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                defaultBehavior = (DefaultBehavior) cls.getAnnotation(DefaultBehavior.class);
                if (defaultBehavior != null) {
                    break;
                }
            }
            if (defaultBehavior != null) {
                try {
                    Behavior behavior = (Behavior) defaultBehavior.value().getDeclaredConstructor(null).newInstance(null);
                    Behavior behavior2 = layoutParams.a;
                    if (behavior2 != behavior) {
                        if (behavior2 != null) {
                            behavior2.e();
                        }
                        layoutParams.a = behavior;
                        layoutParams.b = true;
                        if (behavior != null) {
                            behavior.c(layoutParams);
                        }
                    }
                } catch (Exception e) {
                    Log.e("CoordinatorLayout", "Default behavior class " + defaultBehavior.value().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                }
            }
            layoutParams.b = true;
        }
        return layoutParams;
    }

    public static void u(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i2 = layoutParams.i;
        if (i2 != i) {
            Field field = ViewCompat.a;
            view.offsetLeftAndRight(i - i2);
            layoutParams.i = i;
        }
    }

    public static void v(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i2 = layoutParams.j;
        if (i2 != i) {
            Field field = ViewCompat.a;
            view.offsetTopAndBottom(i - i2);
            layoutParams.j = i;
        }
    }

    public final void b(LayoutParams layoutParams, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
        rect.set(max, max2, i + max, i2 + max2);
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public final void c(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        Behavior behavior;
        int childCount = getChildCount();
        int i6 = 0;
        int i7 = 0;
        boolean z = false;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a(i5) && (behavior = layoutParams.a) != null) {
                    int[] iArr2 = this.n;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.k(this, childAt, i2, i3, i4, iArr2);
                    if (i3 > 0) {
                        i6 = Math.max(i6, iArr2[0]);
                    } else {
                        i6 = Math.min(i6, iArr2[0]);
                    }
                    if (i4 > 0) {
                        i7 = Math.max(i7, iArr2[1]);
                    } else {
                        i7 = Math.min(i7, iArr2[1]);
                    }
                    z = true;
                }
            }
        }
        iArr[0] = iArr[0] + i6;
        iArr[1] = iArr[1] + i7;
        if (z) {
            p(1);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if ((layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams)) {
            return true;
        }
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void d(View view, int i, int i2, int i3, int i4, int i5) {
        c(view, i, i2, i3, i4, 0, this.o);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        Behavior behavior = ((LayoutParams) view.getLayoutParams()).a;
        if (behavior != null) {
            behavior.getClass();
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        boolean z;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.y;
        if (drawable != null && drawable.isStateful()) {
            z = drawable.setState(drawableState);
        } else {
            z = false;
        }
        if (z) {
            invalidate();
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final boolean e(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Behavior behavior = layoutParams.a;
                if (behavior != null) {
                    boolean o = behavior.o(childAt, i, i2);
                    z |= o;
                    if (i2 != 0) {
                        if (i2 == 1) {
                            layoutParams.n = o;
                        }
                    } else {
                        layoutParams.m = o;
                    }
                } else if (i2 != 0) {
                    if (i2 == 1) {
                        layoutParams.n = false;
                    }
                } else {
                    layoutParams.m = false;
                }
            }
        }
        return z;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void f(View view, View view2, int i, int i2) {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.B;
        if (i2 == 1) {
            nestedScrollingParentHelper.b = i;
        } else {
            nestedScrollingParentHelper.a = i;
        }
        this.t = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            ((LayoutParams) getChildAt(i3).getLayoutParams()).getClass();
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void g(View view, int i) {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.B;
        if (i == 1) {
            nestedScrollingParentHelper.b = 0;
        } else {
            nestedScrollingParentHelper.a = 0;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.a(i)) {
                Behavior behavior = layoutParams.a;
                if (behavior != null) {
                    behavior.p(childAt, view, i);
                }
                if (i != 0) {
                    if (i == 1) {
                        layoutParams.n = false;
                    }
                } else {
                    layoutParams.m = false;
                }
            }
        }
        this.t = null;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    public final List<View> getDependencySortedChildren() {
        s();
        return Collections.unmodifiableList(this.j);
    }

    public final WindowInsetsCompat getLastWindowInsets() {
        return this.w;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.B;
        return nestedScrollingParentHelper.b | nestedScrollingParentHelper.a;
    }

    public Drawable getStatusBarBackground() {
        return this.y;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void h(View view, int i, int i2, int[] iArr, int i3) {
        Behavior behavior;
        int min;
        int min2;
        int childCount = getChildCount();
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a(i3) && (behavior = layoutParams.a) != null) {
                    int[] iArr2 = this.n;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.j(this, childAt, view, i, i2, iArr2, i3);
                    if (i > 0) {
                        min = Math.max(i4, iArr2[0]);
                    } else {
                        min = Math.min(i4, iArr2[0]);
                    }
                    i4 = min;
                    if (i2 > 0) {
                        min2 = Math.max(i5, iArr2[1]);
                    } else {
                        min2 = Math.min(i5, iArr2[1]);
                    }
                    i5 = min2;
                    z = true;
                }
            }
        }
        iArr[0] = i4;
        iArr[1] = i5;
        if (z) {
            p(1);
        }
    }

    public final void i(View view, Rect rect, boolean z) {
        if (!view.isLayoutRequested() && view.getVisibility() != 8) {
            if (z) {
                k(view, rect);
                return;
            } else {
                rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                return;
            }
        }
        rect.setEmpty();
    }

    public final ArrayList j(View view) {
        SimpleArrayMap simpleArrayMap = this.k.b;
        int i = simpleArrayMap.l;
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < i; i2++) {
            ArrayList arrayList2 = (ArrayList) simpleArrayMap.h(i2);
            if (arrayList2 != null && arrayList2.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(simpleArrayMap.e(i2));
            }
        }
        ArrayList arrayList3 = this.m;
        arrayList3.clear();
        if (arrayList != null) {
            arrayList3.addAll(arrayList);
        }
        return arrayList3;
    }

    public final void k(View view, Rect rect) {
        ThreadLocal threadLocal = ViewGroupUtils.a;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal threadLocal2 = ViewGroupUtils.a;
        Matrix matrix = (Matrix) threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        ViewGroupUtils.a(this, view, matrix);
        ThreadLocal threadLocal3 = ViewGroupUtils.b;
        RectF rectF = (RectF) threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    public final int m(int i) {
        int[] iArr = this.r;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i);
            return 0;
        }
        if (i >= 0 && i < iArr.length) {
            return iArr[i];
        }
        Log.e("CoordinatorLayout", "Keyline index " + i + " out of range for " + this);
        return 0;
    }

    public final boolean o(View view, int i, int i2) {
        Pools$SynchronizedPool pools$SynchronizedPool = G;
        Rect a = a();
        k(view, a);
        try {
            return a.contains(i, i2);
        } finally {
            a.setEmpty();
            pools$SynchronizedPool.b(a);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        t(false);
        if (this.v) {
            if (this.u == null) {
                this.u = new OnPreDrawListener();
            }
            getViewTreeObserver().addOnPreDrawListener(this.u);
        }
        if (this.w == null) {
            Field field = ViewCompat.a;
            if (getFitsSystemWindows()) {
                requestApplyInsets();
            }
        }
        this.q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        t(false);
        if (this.v && this.u != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.u);
        }
        View view = this.t;
        if (view != null) {
            g(view, 0);
        }
        this.q = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        if (this.x && this.y != null) {
            WindowInsetsCompat windowInsetsCompat = this.w;
            if (windowInsetsCompat != null) {
                i = windowInsetsCompat.k();
            } else {
                i = 0;
            }
            if (i > 0) {
                this.y.setBounds(0, 0, getWidth(), i);
                this.y.draw(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            t(true);
        }
        boolean r = r(motionEvent, 0);
        if (actionMasked != 1 && actionMasked != 3) {
            return r;
        }
        t(true);
        return r;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Behavior behavior;
        Field field = ViewCompat.a;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList = this.j;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = (View) arrayList.get(i5);
            if (view.getVisibility() != 8 && ((behavior = ((LayoutParams) view.getLayoutParams()).a) == null || !behavior.g(this, view, layoutDirection))) {
                q(view, layoutDirection);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z;
        boolean z2;
        boolean z3;
        ArrayList arrayList;
        int i3;
        boolean z4;
        int i4;
        int i5;
        int i6;
        Behavior behavior;
        LayoutParams layoutParams;
        View view;
        int i7;
        int i8;
        boolean z5;
        int i9;
        int i10;
        int i11;
        boolean z6;
        int max;
        s();
        int childCount = getChildCount();
        int i12 = 0;
        loop0: while (true) {
            if (i12 < childCount) {
                View childAt = getChildAt(i12);
                SimpleArrayMap simpleArrayMap = this.k.b;
                int i13 = simpleArrayMap.l;
                for (int i14 = 0; i14 < i13; i14++) {
                    ArrayList arrayList2 = (ArrayList) simpleArrayMap.h(i14);
                    if (arrayList2 != null && arrayList2.contains(childAt)) {
                        z = true;
                        break loop0;
                    }
                }
                i12++;
            } else {
                z = false;
                break;
            }
        }
        if (z != this.v) {
            boolean z7 = this.q;
            if (z) {
                if (z7) {
                    if (this.u == null) {
                        this.u = new OnPreDrawListener();
                    }
                    getViewTreeObserver().addOnPreDrawListener(this.u);
                }
                this.v = true;
            } else {
                if (z7 && this.u != null) {
                    getViewTreeObserver().removeOnPreDrawListener(this.u);
                }
                this.v = false;
            }
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        Field field = ViewCompat.a;
        int layoutDirection = getLayoutDirection();
        if (layoutDirection == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int i15 = paddingLeft + paddingRight;
        int i16 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        if (this.w != null && getFitsSystemWindows()) {
            z3 = true;
        } else {
            z3 = false;
        }
        ArrayList arrayList3 = this.j;
        int size3 = arrayList3.size();
        int i17 = 0;
        int i18 = 0;
        while (i17 < size3) {
            View view2 = (View) arrayList3.get(i17);
            int i19 = suggestedMinimumWidth;
            int i20 = suggestedMinimumHeight;
            if (view2.getVisibility() == 8) {
                arrayList = arrayList3;
                i5 = size3;
                i9 = paddingLeft;
                suggestedMinimumWidth = i19;
                suggestedMinimumHeight = i20;
                z5 = false;
                i8 = i17;
                i11 = paddingRight;
            } else {
                LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
                int i21 = layoutParams2.e;
                if (i21 >= 0 && mode != 0) {
                    int m = m(i21);
                    int i22 = layoutParams2.c;
                    if (i22 == 0) {
                        i22 = 8388661;
                    }
                    int absoluteGravity = Gravity.getAbsoluteGravity(i22, layoutDirection) & 7;
                    arrayList = arrayList3;
                    if ((absoluteGravity == 3 && !z2) || (absoluteGravity == 5 && z2)) {
                        z6 = false;
                        max = Math.max(0, (size - paddingRight) - m);
                    } else if ((absoluteGravity == 5 && !z2) || (absoluteGravity == 3 && z2)) {
                        z6 = false;
                        max = Math.max(0, m - paddingLeft);
                    }
                    z4 = z6;
                    i3 = max;
                    if (!z3 && !view2.getFitsSystemWindows()) {
                        int j = this.w.j() + this.w.i();
                        int h = this.w.h() + this.w.k();
                        i4 = View.MeasureSpec.makeMeasureSpec(size - j, mode);
                        i5 = size3;
                        i6 = View.MeasureSpec.makeMeasureSpec(size2 - h, mode2);
                    } else {
                        i4 = i;
                        i5 = size3;
                        i6 = i2;
                    }
                    behavior = layoutParams2.a;
                    if (behavior == null && behavior.h(this, view2)) {
                        z5 = z4;
                        i9 = paddingLeft;
                        i10 = i20;
                        i11 = paddingRight;
                        layoutParams = layoutParams2;
                        view = view2;
                        i7 = i19;
                        i8 = i17;
                    } else {
                        int i23 = paddingRight;
                        layoutParams = layoutParams2;
                        view = view2;
                        i7 = i19;
                        i8 = i17;
                        int i24 = i4;
                        z5 = z4;
                        i9 = paddingLeft;
                        i10 = i20;
                        i11 = i23;
                        measureChildWithMargins(view, i24, i3, i6, 0);
                    }
                    int max2 = Math.max(i7, view.getMeasuredWidth() + i15 + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                    int max3 = Math.max(i10, view.getMeasuredHeight() + i16 + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    i18 = View.combineMeasuredStates(i18, view.getMeasuredState());
                    suggestedMinimumWidth = max2;
                    suggestedMinimumHeight = max3;
                } else {
                    arrayList = arrayList3;
                }
                i3 = 0;
                z4 = false;
                if (!z3) {
                }
                i4 = i;
                i5 = size3;
                i6 = i2;
                behavior = layoutParams2.a;
                if (behavior == null) {
                }
                int i232 = paddingRight;
                layoutParams = layoutParams2;
                view = view2;
                i7 = i19;
                i8 = i17;
                int i242 = i4;
                z5 = z4;
                i9 = paddingLeft;
                i10 = i20;
                i11 = i232;
                measureChildWithMargins(view, i242, i3, i6, 0);
                int max22 = Math.max(i7, view.getMeasuredWidth() + i15 + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                int max32 = Math.max(i10, view.getMeasuredHeight() + i16 + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                i18 = View.combineMeasuredStates(i18, view.getMeasuredState());
                suggestedMinimumWidth = max22;
                suggestedMinimumHeight = max32;
            }
            i17 = i8 + 1;
            paddingLeft = i9;
            paddingRight = i11;
            size3 = i5;
            arrayList3 = arrayList;
        }
        int i25 = i18;
        setMeasuredDimension(View.resolveSizeAndState(suggestedMinimumWidth, i, (-16777216) & i25), View.resolveSizeAndState(suggestedMinimumHeight, i2, i25 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a(0)) {
                    Behavior behavior = layoutParams.a;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean z = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a(0) && (behavior = layoutParams.a) != null) {
                    z |= behavior.i(view);
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        h(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        d(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        f(view, view2, i, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.j);
        SparseArray sparseArray = savedState.l;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior behavior = n(childAt).a;
            if (id != -1 && behavior != null && (parcelable2 = (Parcelable) sparseArray.get(id)) != null) {
                behavior.m(childAt, parcelable2);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Parcelable, androidx.customview.view.AbsSavedState, androidx.coordinatorlayout.widget.CoordinatorLayout$SavedState] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable n;
        ?? absSavedState = new AbsSavedState(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior behavior = ((LayoutParams) childAt.getLayoutParams()).a;
            if (id != -1 && behavior != null && (n = behavior.n(childAt)) != null) {
                sparseArray.append(id, n);
            }
        }
        absSavedState.l = sparseArray;
        return absSavedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        return e(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        g(view, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if (r3 != false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean q;
        MotionEvent motionEvent2;
        int actionMasked = motionEvent.getActionMasked();
        if (this.s == null) {
            z = r(motionEvent, 1);
        } else {
            z = false;
        }
        Behavior behavior = ((LayoutParams) this.s.getLayoutParams()).a;
        if (behavior != null) {
            q = behavior.q(this.s, motionEvent);
            motionEvent2 = null;
            if (this.s != null) {
                q |= super.onTouchEvent(motionEvent);
            } else if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                super.onTouchEvent(motionEvent2);
            }
            if (motionEvent2 != null) {
                motionEvent2.recycle();
            }
            if (actionMasked == 1 && actionMasked != 3) {
                return q;
            }
            t(false);
            return q;
        }
        q = false;
        motionEvent2 = null;
        if (this.s != null) {
        }
        if (motionEvent2 != null) {
        }
        if (actionMasked == 1) {
        }
        t(false);
        return q;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x025c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p(int i) {
        int i2;
        Rect rect;
        int i3;
        int i4;
        ArrayList arrayList;
        boolean z;
        boolean z2;
        int width;
        int i5;
        int i6;
        int i7;
        int height;
        int i8;
        int i9;
        int i10;
        ArrayList arrayList2;
        LayoutParams layoutParams;
        int i11;
        int i12;
        Rect rect2;
        int i13;
        View view;
        boolean z3;
        Behavior behavior;
        Field field = ViewCompat.a;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList3 = this.j;
        int size = arrayList3.size();
        Rect a = a();
        Rect a2 = a();
        Rect a3 = a();
        int i14 = 0;
        while (true) {
            Pools$SynchronizedPool pools$SynchronizedPool = G;
            if (i14 < size) {
                View view2 = (View) arrayList3.get(i14);
                LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
                if (i == 0 && view2.getVisibility() == 8) {
                    arrayList = arrayList3;
                    i4 = size;
                    rect = a3;
                    i2 = i14;
                } else {
                    int i15 = 0;
                    while (i15 < i14) {
                        if (layoutParams2.l == ((View) arrayList3.get(i15))) {
                            LayoutParams layoutParams3 = (LayoutParams) view2.getLayoutParams();
                            if (layoutParams3.k != null) {
                                Rect a4 = a();
                                Rect a5 = a();
                                LayoutParams layoutParams4 = layoutParams2;
                                Rect a6 = a();
                                k(layoutParams3.k, a4);
                                i(view2, a5, false);
                                int measuredWidth = view2.getMeasuredWidth();
                                View view3 = view2;
                                int measuredHeight = view3.getMeasuredHeight();
                                arrayList2 = arrayList3;
                                layoutParams = layoutParams4;
                                i11 = i15;
                                layoutDirection = layoutDirection;
                                i13 = i14;
                                view = view3;
                                l(layoutDirection, a4, a6, layoutParams3, measuredWidth, measuredHeight);
                                i12 = size;
                                rect2 = a3;
                                if (a6.left == a5.left && a6.top == a5.top) {
                                    z3 = false;
                                } else {
                                    z3 = true;
                                }
                                b(layoutParams3, a6, measuredWidth, measuredHeight);
                                int i16 = a6.left - a5.left;
                                int i17 = a6.top - a5.top;
                                if (i16 != 0) {
                                    Field field2 = ViewCompat.a;
                                    view.offsetLeftAndRight(i16);
                                }
                                if (i17 != 0) {
                                    Field field3 = ViewCompat.a;
                                    view.offsetTopAndBottom(i17);
                                }
                                if (z3 && (behavior = layoutParams3.a) != null) {
                                    behavior.d(view, layoutParams3.k);
                                }
                                a4.setEmpty();
                                pools$SynchronizedPool.b(a4);
                                a5.setEmpty();
                                pools$SynchronizedPool.b(a5);
                                a6.setEmpty();
                                pools$SynchronizedPool.b(a6);
                                i15 = i11 + 1;
                                layoutParams2 = layoutParams;
                                view2 = view;
                                arrayList3 = arrayList2;
                                size = i12;
                                i14 = i13;
                                a3 = rect2;
                            }
                        }
                        arrayList2 = arrayList3;
                        layoutParams = layoutParams2;
                        i11 = i15;
                        i12 = size;
                        rect2 = a3;
                        i13 = i14;
                        view = view2;
                        i15 = i11 + 1;
                        layoutParams2 = layoutParams;
                        view2 = view;
                        arrayList3 = arrayList2;
                        size = i12;
                        i14 = i13;
                        a3 = rect2;
                    }
                    ArrayList arrayList4 = arrayList3;
                    LayoutParams layoutParams5 = layoutParams2;
                    int i18 = size;
                    Rect rect3 = a3;
                    i2 = i14;
                    View view4 = view2;
                    i(view4, a2, true);
                    if (layoutParams5.g != 0 && !a2.isEmpty()) {
                        int absoluteGravity = Gravity.getAbsoluteGravity(layoutParams5.g, layoutDirection);
                        int i19 = absoluteGravity & 112;
                        if (i19 != 48) {
                            if (i19 == 80) {
                                a.bottom = Math.max(a.bottom, getHeight() - a2.top);
                            }
                        } else {
                            a.top = Math.max(a.top, a2.bottom);
                        }
                        int i20 = absoluteGravity & 7;
                        if (i20 != 3) {
                            if (i20 == 5) {
                                a.right = Math.max(a.right, getWidth() - a2.left);
                            }
                        } else {
                            a.left = Math.max(a.left, a2.right);
                        }
                    }
                    if (layoutParams5.h != 0 && view4.getVisibility() == 0) {
                        Field field4 = ViewCompat.a;
                        if (view4.isLaidOut() && view4.getWidth() > 0 && view4.getHeight() > 0) {
                            LayoutParams layoutParams6 = (LayoutParams) view4.getLayoutParams();
                            Behavior behavior2 = layoutParams6.a;
                            Rect a7 = a();
                            Rect a8 = a();
                            a8.set(view4.getLeft(), view4.getTop(), view4.getRight(), view4.getBottom());
                            if (behavior2 != null && behavior2.a(view4)) {
                                if (!a8.contains(a7)) {
                                    k8.m("Rect should be within the child's bounds. Rect:", a7.toShortString(), " | Bounds:", a8.toShortString());
                                    return;
                                }
                            } else {
                                a7.set(a8);
                            }
                            a8.setEmpty();
                            pools$SynchronizedPool.b(a8);
                            if (a7.isEmpty()) {
                                a7.setEmpty();
                                pools$SynchronizedPool.b(a7);
                            } else {
                                int absoluteGravity2 = Gravity.getAbsoluteGravity(layoutParams6.h, layoutDirection);
                                if ((absoluteGravity2 & 48) == 48 && (i9 = (a7.top - ((ViewGroup.MarginLayoutParams) layoutParams6).topMargin) - layoutParams6.j) < (i10 = a.top)) {
                                    v(view4, i10 - i9);
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if ((absoluteGravity2 & 80) == 80 && (height = ((getHeight() - a7.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams6).bottomMargin) + layoutParams6.j) < (i8 = a.bottom)) {
                                    v(view4, height - i8);
                                    z = true;
                                }
                                if (!z) {
                                    v(view4, 0);
                                }
                                if ((absoluteGravity2 & 3) == 3 && (i6 = (a7.left - ((ViewGroup.MarginLayoutParams) layoutParams6).leftMargin) - layoutParams6.i) < (i7 = a.left)) {
                                    u(view4, i7 - i6);
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if ((absoluteGravity2 & 5) == 5 && (width = ((getWidth() - a7.right) - ((ViewGroup.MarginLayoutParams) layoutParams6).rightMargin) + layoutParams6.i) < (i5 = a.right)) {
                                    u(view4, width - i5);
                                    z2 = true;
                                }
                                if (!z2) {
                                    u(view4, 0);
                                }
                                a7.setEmpty();
                                pools$SynchronizedPool.b(a7);
                                if (i == 2) {
                                    rect = rect3;
                                    rect.set(((LayoutParams) view4.getLayoutParams()).o);
                                    if (rect.equals(a2)) {
                                        arrayList = arrayList4;
                                        i4 = i18;
                                    } else {
                                        ((LayoutParams) view4.getLayoutParams()).o.set(a2);
                                    }
                                } else {
                                    rect = rect3;
                                }
                                i3 = i2 + 1;
                                i4 = i18;
                                while (true) {
                                    arrayList = arrayList4;
                                    if (i3 >= i4) {
                                        View view5 = (View) arrayList.get(i3);
                                        Behavior behavior3 = ((LayoutParams) view5.getLayoutParams()).a;
                                        if (behavior3 != null) {
                                            behavior3.b(view5);
                                        }
                                        i3++;
                                        arrayList4 = arrayList;
                                    }
                                }
                            }
                        }
                    }
                    if (i == 2) {
                    }
                    i3 = i2 + 1;
                    i4 = i18;
                    while (true) {
                        arrayList = arrayList4;
                        if (i3 >= i4) {
                            break;
                        }
                        i3++;
                        arrayList4 = arrayList;
                    }
                }
                i14 = i2 + 1;
                size = i4;
                a3 = rect;
                arrayList3 = arrayList;
            } else {
                Rect rect4 = a3;
                a.setEmpty();
                pools$SynchronizedPool.b(a);
                a2.setEmpty();
                pools$SynchronizedPool.b(a2);
                rect4.setEmpty();
                pools$SynchronizedPool.b(rect4);
                return;
            }
        }
    }

    public final void q(View view, int i) {
        Rect a;
        Rect a2;
        int i2;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        View view2 = layoutParams.k;
        if (view2 == null && layoutParams.f != -1) {
            u2.l("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
            return;
        }
        Pools$SynchronizedPool pools$SynchronizedPool = G;
        if (view2 != null) {
            a = a();
            a2 = a();
            try {
                k(view2, a);
                LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                l(i, a, a2, layoutParams2, measuredWidth, measuredHeight);
                b(layoutParams2, a2, measuredWidth, measuredHeight);
                view.layout(a2.left, a2.top, a2.right, a2.bottom);
                return;
            } finally {
                a.setEmpty();
                pools$SynchronizedPool.b(a);
                a2.setEmpty();
                pools$SynchronizedPool.b(a2);
            }
        }
        int i3 = layoutParams.e;
        if (i3 >= 0) {
            LayoutParams layoutParams3 = (LayoutParams) view.getLayoutParams();
            int i4 = layoutParams3.c;
            if (i4 == 0) {
                i4 = 8388661;
            }
            int absoluteGravity = Gravity.getAbsoluteGravity(i4, i);
            int i5 = absoluteGravity & 7;
            int i6 = absoluteGravity & 112;
            int width = getWidth();
            int height = getHeight();
            int measuredWidth2 = view.getMeasuredWidth();
            int measuredHeight2 = view.getMeasuredHeight();
            if (i == 1) {
                i3 = width - i3;
            }
            int m = m(i3) - measuredWidth2;
            if (i5 != 1) {
                if (i5 == 5) {
                    m += measuredWidth2;
                }
            } else {
                m += measuredWidth2 / 2;
            }
            if (i6 != 16) {
                if (i6 != 80) {
                    i2 = 0;
                } else {
                    i2 = measuredHeight2;
                }
            } else {
                i2 = measuredHeight2 / 2;
            }
            int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin, Math.min(m, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin));
            int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin, Math.min(i2, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin));
            view.layout(max, max2, measuredWidth2 + max, measuredHeight2 + max2);
            return;
        }
        LayoutParams layoutParams4 = (LayoutParams) view.getLayoutParams();
        a = a();
        a.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams4).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams4).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams4).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin);
        if (this.w != null) {
            Field field = ViewCompat.a;
            if (getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                a.left = this.w.i() + a.left;
                a.top = this.w.k() + a.top;
                a.right -= this.w.j();
                a.bottom -= this.w.h();
            }
        }
        a2 = a();
        int i7 = layoutParams4.c;
        if ((i7 & 7) == 0) {
            i7 |= 8388611;
        }
        if ((i7 & 112) == 0) {
            i7 |= 48;
        }
        Gravity.apply(i7, view.getMeasuredWidth(), view.getMeasuredHeight(), a, a2, i);
        view.layout(a2.left, a2.top, a2.right, a2.bottom);
    }

    public final boolean r(MotionEvent motionEvent, int i) {
        int i2;
        int actionMasked = motionEvent.getActionMasked();
        ArrayList arrayList = this.l;
        arrayList.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            if (isChildrenDrawingOrderEnabled) {
                i2 = getChildDrawingOrder(childCount, i3);
            } else {
                i2 = i3;
            }
            arrayList.add(getChildAt(i2));
        }
        Comparator comparator = F;
        if (comparator != null) {
            Collections.sort(arrayList, comparator);
        }
        int size = arrayList.size();
        MotionEvent motionEvent2 = null;
        boolean z = false;
        for (int i4 = 0; i4 < size; i4++) {
            View view = (View) arrayList.get(i4);
            Behavior behavior = ((LayoutParams) view.getLayoutParams()).a;
            if (z && actionMasked != 0) {
                if (behavior != null) {
                    if (motionEvent2 == null) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    }
                    if (i != 0) {
                        if (i == 1) {
                            behavior.q(view, motionEvent2);
                        }
                    } else {
                        behavior.f(this, view, motionEvent2);
                    }
                }
            } else if (!z && behavior != null) {
                if (i != 0) {
                    if (i == 1) {
                        z = behavior.q(view, motionEvent);
                    }
                } else {
                    z = behavior.f(this, view, motionEvent);
                }
                if (z) {
                    this.s = view;
                }
            }
        }
        arrayList.clear();
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        Behavior behavior = ((LayoutParams) view.getLayoutParams()).a;
        if (behavior != null) {
            behavior.l(this, view);
        }
        return super.requestChildRectangleOnScreen(view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z && !this.p) {
            t(false);
            this.p = true;
        }
    }

    public final void s() {
        ArrayList arrayList = this.j;
        arrayList.clear();
        DirectedAcyclicGraph directedAcyclicGraph = this.k;
        SimpleArrayMap simpleArrayMap = directedAcyclicGraph.b;
        Pools$SimplePool pools$SimplePool = directedAcyclicGraph.a;
        SimpleArrayMap simpleArrayMap2 = directedAcyclicGraph.b;
        int i = simpleArrayMap.l;
        for (int i2 = 0; i2 < i; i2++) {
            ArrayList arrayList2 = (ArrayList) simpleArrayMap.h(i2);
            if (arrayList2 != null) {
                arrayList2.clear();
                pools$SimplePool.b(arrayList2);
            }
        }
        simpleArrayMap.clear();
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            LayoutParams n = n(childAt);
            int i4 = n.f;
            if (i4 == -1) {
                n.l = null;
                n.k = null;
            } else {
                View view = n.k;
                if (view != null && view.getId() == i4) {
                    View view2 = n.k;
                    for (ViewParent parent = view2.getParent(); parent != this; parent = parent.getParent()) {
                        if (parent != null && parent != childAt) {
                            if (parent instanceof View) {
                                view2 = parent;
                            }
                        } else {
                            n.l = null;
                            n.k = null;
                        }
                    }
                    n.l = view2;
                }
                View findViewById = findViewById(i4);
                n.k = findViewById;
                if (findViewById != null) {
                    if (findViewById == this) {
                        if (isInEditMode()) {
                            n.l = null;
                            n.k = null;
                        } else {
                            u2.l("View can not be anchored to the the parent CoordinatorLayout");
                            return;
                        }
                    } else {
                        for (ViewParent parent2 = findViewById.getParent(); parent2 != this && parent2 != null; parent2 = parent2.getParent()) {
                            if (parent2 == childAt) {
                                if (isInEditMode()) {
                                    n.l = null;
                                    n.k = null;
                                } else {
                                    u2.l("Anchor must not be a descendant of the anchored view");
                                    return;
                                }
                            } else {
                                if (parent2 instanceof View) {
                                    findViewById = parent2;
                                }
                            }
                        }
                        n.l = findViewById;
                    }
                } else if (isInEditMode()) {
                    n.l = null;
                    n.k = null;
                } else {
                    k8.q("Could not find CoordinatorLayout descendant view with id ", getResources().getResourceName(i4), " to anchor view ", childAt);
                    return;
                }
            }
            if (!simpleArrayMap2.containsKey(childAt)) {
                simpleArrayMap2.put(childAt, null);
            }
            for (int i5 = 0; i5 < childCount; i5++) {
                if (i5 != i3) {
                    View childAt2 = getChildAt(i5);
                    if (childAt2 != n.l) {
                        Field field = ViewCompat.a;
                        int layoutDirection = getLayoutDirection();
                        int absoluteGravity = Gravity.getAbsoluteGravity(((LayoutParams) childAt2.getLayoutParams()).g, layoutDirection);
                        if (absoluteGravity == 0 || (Gravity.getAbsoluteGravity(n.h, layoutDirection) & absoluteGravity) != absoluteGravity) {
                            Behavior behavior = n.a;
                            if (behavior != null) {
                                behavior.b(childAt);
                            }
                        }
                    }
                    if (!simpleArrayMap2.containsKey(childAt2) && !simpleArrayMap2.containsKey(childAt2)) {
                        simpleArrayMap2.put(childAt2, null);
                    }
                    if (simpleArrayMap2.containsKey(childAt2) && simpleArrayMap2.containsKey(childAt)) {
                        ArrayList arrayList3 = (ArrayList) simpleArrayMap2.get(childAt2);
                        if (arrayList3 == null) {
                            arrayList3 = (ArrayList) pools$SimplePool.a();
                            if (arrayList3 == null) {
                                arrayList3 = new ArrayList();
                            }
                            simpleArrayMap2.put(childAt2, arrayList3);
                        }
                        arrayList3.add(childAt);
                    } else {
                        u2.g("All nodes must be present in the graph before being added as an edge");
                        return;
                    }
                }
            }
        }
        ArrayList arrayList4 = directedAcyclicGraph.c;
        arrayList4.clear();
        HashSet hashSet = directedAcyclicGraph.d;
        hashSet.clear();
        int i6 = simpleArrayMap2.l;
        for (int i7 = 0; i7 < i6; i7++) {
            directedAcyclicGraph.a(simpleArrayMap2.e(i7), arrayList4, hashSet);
        }
        arrayList.addAll(arrayList4);
        Collections.reverse(arrayList);
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        w();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.z = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        boolean z;
        Drawable drawable2 = this.y;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.y = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.y.setState(getDrawableState());
                }
                Drawable drawable4 = this.y;
                Field field = ViewCompat.a;
                drawable4.setLayoutDirection(getLayoutDirection());
                Drawable drawable5 = this.y;
                if (getVisibility() == 0) {
                    z = true;
                } else {
                    z = false;
                }
                drawable5.setVisible(z, false);
                this.y.setCallback(this);
            }
            Field field2 = ViewCompat.a;
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarBackgroundColor(int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(int i) {
        Drawable drawable;
        if (i != 0) {
            drawable = getContext().getDrawable(i);
        } else {
            drawable = null;
        }
        setStatusBarBackground(drawable);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        boolean z;
        super.setVisibility(i);
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        Drawable drawable = this.y;
        if (drawable != null && drawable.isVisible() != z) {
            this.y.setVisible(z, false);
        }
    }

    public final void t(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            Behavior behavior = ((LayoutParams) childAt.getLayoutParams()).a;
            if (behavior != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    behavior.f(this, childAt, obtain);
                } else {
                    behavior.q(childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((LayoutParams) getChildAt(i2).getLayoutParams()).getClass();
        }
        this.s = null;
        this.p = false;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        if (!super.verifyDrawable(drawable) && drawable != this.y) {
            return false;
        }
        return true;
    }

    public final void w() {
        Field field = ViewCompat.a;
        if (getFitsSystemWindows()) {
            if (this.A == null) {
                this.A = new OnApplyWindowInsetsListener() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.1
                    @Override // androidx.core.view.OnApplyWindowInsetsListener
                    public final WindowInsetsCompat i(View view, WindowInsetsCompat windowInsetsCompat) {
                        boolean z;
                        CoordinatorLayout coordinatorLayout = CoordinatorLayout.this;
                        if (!Objects.equals(coordinatorLayout.w, windowInsetsCompat)) {
                            coordinatorLayout.w = windowInsetsCompat;
                            boolean z2 = true;
                            if (windowInsetsCompat.k() > 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            coordinatorLayout.x = z;
                            if (z || coordinatorLayout.getBackground() != null) {
                                z2 = false;
                            }
                            coordinatorLayout.setWillNotDraw(z2);
                            if (!windowInsetsCompat.p()) {
                                int childCount = coordinatorLayout.getChildCount();
                                for (int i = 0; i < childCount; i++) {
                                    View childAt = coordinatorLayout.getChildAt(i);
                                    Field field2 = ViewCompat.a;
                                    if (childAt.getFitsSystemWindows() && ((LayoutParams) childAt.getLayoutParams()).a != null && windowInsetsCompat.p()) {
                                        break;
                                    }
                                }
                            }
                            coordinatorLayout.requestLayout();
                        }
                        return windowInsetsCompat;
                    }
                };
            }
            ViewCompat.q(this, this.A);
            setSystemUiVisibility(1280);
            return;
        }
        ViewCompat.q(this, null);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public SparseArray l;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.l = new SparseArray(readInt);
            for (int i = 0; i < readInt; i++) {
                this.l.append(iArr[i], readParcelableArray[i]);
            }
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int i2;
            super.writeToParcel(parcel, i);
            SparseArray sparseArray = this.l;
            if (sparseArray != null) {
                i2 = sparseArray.size();
            } else {
                i2 = 0;
            }
            parcel.writeInt(i2);
            int[] iArr = new int[i2];
            Parcelable[] parcelableArr = new Parcelable[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                iArr[i3] = this.l.keyAt(i3);
                parcelableArr[i3] = (Parcelable) this.l.valueAt(i3);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$SavedState$1, reason: invalid class name */
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
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Behavior<V extends View> {
        public boolean a(View view) {
            return false;
        }

        public boolean d(View view, View view2) {
            return false;
        }

        public boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return false;
        }

        public abstract boolean g(CoordinatorLayout coordinatorLayout, View view, int i);

        public boolean h(CoordinatorLayout coordinatorLayout, View view) {
            return false;
        }

        public boolean i(View view) {
            return false;
        }

        public void k(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
            iArr[0] = iArr[0] + i2;
            iArr[1] = iArr[1] + i3;
        }

        public Parcelable n(View view) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        public boolean o(View view, int i, int i2) {
            return false;
        }

        public boolean q(View view, MotionEvent motionEvent) {
            return false;
        }

        public void e() {
        }

        public void b(View view) {
        }

        public void c(LayoutParams layoutParams) {
        }

        public void l(CoordinatorLayout coordinatorLayout, View view) {
        }

        public void m(View view, Parcelable parcelable) {
        }

        public void p(View view, View view2, int i) {
        }

        public void j(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public Behavior a;
        public boolean b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final int g;
        public int h;
        public int i;
        public int j;
        public View k;
        public View l;
        public boolean m;
        public boolean n;
        public final Rect o;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = false;
            this.c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.o = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.b);
            this.c = obtainStyledAttributes.getInteger(0, 0);
            this.f = obtainStyledAttributes.getResourceId(1, -1);
            this.d = obtainStyledAttributes.getInteger(2, 0);
            this.e = obtainStyledAttributes.getInteger(6, -1);
            this.g = obtainStyledAttributes.getInt(5, 0);
            this.h = obtainStyledAttributes.getInt(4, 0);
            boolean hasValue = obtainStyledAttributes.hasValue(3);
            this.b = hasValue;
            if (hasValue) {
                String string = obtainStyledAttributes.getString(3);
                String str = CoordinatorLayout.C;
                Behavior behavior = null;
                if (!TextUtils.isEmpty(string)) {
                    if (string.startsWith(".")) {
                        string = context.getPackageName() + string;
                    } else if (string.indexOf(46) < 0) {
                        String str2 = CoordinatorLayout.C;
                        if (!TextUtils.isEmpty(str2)) {
                            string = str2 + '.' + string;
                        }
                    }
                    try {
                        ThreadLocal threadLocal = CoordinatorLayout.E;
                        Map map = (Map) threadLocal.get();
                        if (map == null) {
                            map = new HashMap();
                            threadLocal.set(map);
                        }
                        Constructor<?> constructor = (Constructor) map.get(string);
                        if (constructor == null) {
                            constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.D);
                            constructor.setAccessible(true);
                            map.put(string, constructor);
                        }
                        behavior = (Behavior) constructor.newInstance(context, attributeSet);
                    } catch (Exception e) {
                        u2.k("Could not inflate Behavior subclass ".concat(string), e);
                        throw null;
                    }
                }
                this.a = behavior;
            }
            obtainStyledAttributes.recycle();
            Behavior behavior2 = this.a;
            if (behavior2 != null) {
                behavior2.c(this);
            }
        }

        public final boolean a(int i) {
            if (i != 0) {
                if (i != 1) {
                    return false;
                }
                return this.n;
            }
            return this.m;
        }

        public LayoutParams() {
            super(-2, -2);
            this.b = false;
            this.c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.o = new Rect();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.b = false;
            this.c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.o = new Rect();
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.b = false;
            this.c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.o = new Rect();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.b = false;
            this.c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.o = new Rect();
        }
    }
}
