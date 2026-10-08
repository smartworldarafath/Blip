package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.Insets;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import defpackage.u2;
import java.lang.reflect.Field;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements NestedScrollingParent2, NestedScrollingParent3 {
    public static final int[] L = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};
    public static final WindowInsetsCompat M;
    public static final Rect N;
    public WindowInsetsCompat A;
    public WindowInsetsCompat B;
    public WindowInsetsCompat C;
    public WindowInsetsCompat D;
    public OverScroller E;
    public ViewPropertyAnimator F;
    public final AnimatorListenerAdapter G;
    public final Runnable H;
    public final Runnable I;
    public final NestedScrollingParentHelper J;
    public final NoSystemUiLayoutFlagView K;
    public int j;
    public ContentFrameLayout k;
    public ActionBarContainer l;
    public DecorToolbar m;
    public Drawable n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public int s;
    public final Rect t;
    public final Rect u;
    public final Rect v;
    public final Rect w;
    public final Rect x;
    public boolean y;
    public boolean z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements Runnable {
        public AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.a();
            actionBarOverlayLayout.F = actionBarOverlayLayout.l.animate().translationY(0.0f).setListener(actionBarOverlayLayout.G);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.a();
            actionBarOverlayLayout.F = actionBarOverlayLayout.l.animate().translationY(-actionBarOverlayLayout.l.getHeight()).setListener(actionBarOverlayLayout.G);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface ActionBarVisibilityCallback {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class NoSystemUiLayoutFlagView extends View {
        @Override // android.view.View
        public final int getWindowSystemUiVisibility() {
            return 0;
        }
    }

    static {
        WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder();
        builder.b(Insets.b(0, 1, 0, 1));
        M = builder.a();
        N = new Rect();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.core.view.NestedScrollingParentHelper, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.appcompat.widget.ActionBarOverlayLayout$NoSystemUiLayoutFlagView, android.view.View] */
    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.t = new Rect();
        this.u = new Rect();
        this.v = new Rect();
        this.w = new Rect();
        this.x = new Rect();
        this.y = true;
        this.z = false;
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.b;
        this.A = windowInsetsCompat;
        this.B = windowInsetsCompat;
        this.C = windowInsetsCompat;
        this.D = windowInsetsCompat;
        this.G = new AnimatorListenerAdapter() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.F = null;
                actionBarOverlayLayout.r = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.F = null;
                actionBarOverlayLayout.r = false;
            }
        };
        this.H = new AnonymousClass2();
        this.I = new AnonymousClass3();
        b(context);
        this.J = new Object();
        ?? view = new View(context);
        view.setWillNotDraw(true);
        this.K = view;
        addView(view);
    }

    public static boolean j(View view, int i, int i2, int i3, int i4) {
        boolean z;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (((ViewGroup.MarginLayoutParams) layoutParams).leftMargin != i) {
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = i;
            z = true;
        } else {
            z = false;
        }
        if (((ViewGroup.MarginLayoutParams) layoutParams).topMargin != i2) {
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = i2;
            z = true;
        }
        if (((ViewGroup.MarginLayoutParams) layoutParams).rightMargin != i3) {
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = i3;
            z = true;
        }
        if (((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin != i4) {
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = i4;
            return true;
        }
        return z;
    }

    public final void a() {
        removeCallbacks(this.H);
        removeCallbacks(this.I);
        ViewPropertyAnimator viewPropertyAnimator = this.F;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void b(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(L);
        boolean z = false;
        this.j = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.n = drawable;
        if (drawable == null) {
            z = true;
        }
        setWillNotDraw(z);
        obtainStyledAttributes.recycle();
        this.E = new OverScroller(context);
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public final void c(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        d(view, i, i2, i3, i4, i5);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void d(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        if (this.n != null) {
            if (this.l.getVisibility() == 0) {
                i = (int) (this.l.getTranslationY() + this.l.getBottom() + 0.5f);
            } else {
                i = 0;
            }
            this.n.setBounds(0, i, getWidth(), this.n.getIntrinsicHeight() + i);
            this.n.draw(canvas);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final boolean e(View view, View view2, int i, int i2) {
        if (i2 == 0 && onStartNestedScroll(view, view2, i)) {
            return true;
        }
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void f(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void g(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.l;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.J;
        return nestedScrollingParentHelper.b | nestedScrollingParentHelper.a;
    }

    public CharSequence getTitle() {
        i();
        return ((ToolbarWidgetWrapper) this.m).a.getTitle();
    }

    public final void i() {
        DecorToolbar wrapper;
        if (this.k == null) {
            this.k = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.l = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback findViewById = findViewById(R.id.action_bar);
            if (findViewById instanceof DecorToolbar) {
                wrapper = (DecorToolbar) findViewById;
            } else if (findViewById instanceof Toolbar) {
                wrapper = ((Toolbar) findViewById).getWrapper();
            } else {
                u2.l("Can't make a decor toolbar out of ".concat(findViewById.getClass().getSimpleName()));
                return;
            }
            this.m = wrapper;
        }
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean j;
        i();
        int windowSystemUiVisibility = getWindowSystemUiVisibility();
        boolean z4 = true;
        if ((windowSystemUiVisibility & 256) != 0) {
            z = true;
        } else {
            z = false;
        }
        if ((windowSystemUiVisibility & 1536) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        NoSystemUiLayoutFlagView noSystemUiLayoutFlagView = this.K;
        WindowInsetsCompat windowInsetsCompat = M;
        Rect rect = this.x;
        ViewCompat.a(noSystemUiLayoutFlagView, windowInsetsCompat, rect);
        boolean equals = rect.equals(N);
        this.y = !equals;
        if (!equals && (!z || !z2)) {
            z3 = false;
        } else {
            z3 = true;
        }
        this.z = z3;
        WindowInsetsCompat s = WindowInsetsCompat.s(this, windowInsets);
        Insets l = s.l();
        int i = l.a;
        int i2 = l.a;
        int i3 = l.b;
        int i4 = l.c;
        this.w.set(i, i3, i4, l.d);
        if (this.z) {
            Insets e = s.e(2);
            int i5 = e.a;
            int i6 = e.c;
            this.l.setPadding(i2 - i5, i3, i4 - i6, 0);
            j = j(this.l, e.a, 0, i6, 0);
        } else {
            this.l.setPadding(0, 0, 0, 0);
            j = j(this.l, i2, i3, i4, 0);
        }
        Rect rect2 = this.t;
        ViewCompat.a(this, s, rect2);
        WindowInsetsCompat n = s.n(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.A = n;
        if (!this.B.equals(n)) {
            this.B = this.A;
            j = true;
        }
        Rect rect3 = this.u;
        if (!rect3.equals(rect2)) {
            rect3.set(rect2);
        } else {
            z4 = j;
        }
        if (z4) {
            requestLayout();
        }
        return s.a().c().b().r();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b(getContext());
        Field field = ViewCompat.a;
        requestApplyInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z;
        int i3;
        Insets b;
        i();
        measureChildWithMargins(this.l, i, 0, i2, 0);
        LayoutParams layoutParams = (LayoutParams) this.l.getLayoutParams();
        int max = Math.max(0, this.l.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
        int max2 = Math.max(0, this.l.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.l.getMeasuredState());
        Field field = ViewCompat.a;
        if ((getWindowSystemUiVisibility() & 256) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i3 = this.j;
            if (this.z) {
                i3 += this.w.top;
            }
            if (this.p && this.l.getTabContainer() != null) {
                i3 += this.j;
            }
        } else if (this.l.getVisibility() != 8) {
            i3 = this.l.getMeasuredHeight();
        } else {
            i3 = 0;
        }
        Rect rect = this.t;
        Rect rect2 = this.v;
        rect2.set(rect);
        WindowInsetsCompat windowInsetsCompat = this.A;
        this.C = windowInsetsCompat;
        if (!this.o && !z && this.y) {
            boolean z2 = this.z;
            int i4 = rect2.top;
            if (z2) {
                rect2.top = Math.max(i4, i3);
                rect2.bottom = Math.max(rect2.bottom, 0);
            } else {
                rect2.top = i4 + i3;
                rect2.bottom = rect2.bottom;
            }
            this.C = this.C.n(0, i3, 0, 0);
        } else {
            if (this.z) {
                b = Insets.b(windowInsetsCompat.i(), Math.max(this.C.k(), i3), this.C.j(), Math.max(this.C.h(), 0));
            } else {
                b = Insets.b(windowInsetsCompat.i(), this.C.k() + i3, this.C.j(), this.C.h());
            }
            WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder(this.C);
            builder.b(b);
            this.C = builder.a();
        }
        j(this.k, rect2.left, rect2.top, rect2.right, rect2.bottom);
        if (!this.D.equals(this.C)) {
            WindowInsetsCompat windowInsetsCompat2 = this.C;
            this.D = windowInsetsCompat2;
            ViewCompat.b(this.k, windowInsetsCompat2);
        }
        measureChildWithMargins(this.k, i, 0, i2, 0);
        LayoutParams layoutParams2 = (LayoutParams) this.k.getLayoutParams();
        int max3 = Math.max(max, this.k.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
        int max4 = Math.max(max2, this.k.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.k.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + max3, getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + max4, getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (this.q && z) {
            this.E.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
            if (this.E.getFinalY() > this.l.getHeight()) {
                a();
                ((AnonymousClass3) this.I).run();
            } else {
                a();
                ((AnonymousClass2) this.H).run();
            }
            this.r = true;
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.s + i2;
        this.s = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        this.J.a = i;
        this.s = getActionBarHideOffset();
        a();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) != 0 && this.l.getVisibility() == 0) {
            return this.q;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (this.q && !this.r) {
            if (this.s <= this.l.getHeight()) {
                a();
                postDelayed(this.H, 600L);
            } else {
                a();
                postDelayed(this.I, 600L);
            }
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i) {
        super.onWindowSystemUiVisibilityChanged(i);
        i();
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
    }

    public void setActionBarHideOffset(int i) {
        a();
        this.l.setTranslationY(-Math.max(0, Math.min(i, this.l.getHeight())));
    }

    public void setActionBarVisibilityCallback(ActionBarVisibilityCallback actionBarVisibilityCallback) {
        if (getWindowToken() == null) {
        } else {
            throw null;
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.p = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.q) {
            this.q = z;
            if (!z) {
                a();
                setActionBarHideOffset(0);
            }
        }
    }

    public void setIcon(int i) {
        Drawable drawable;
        i();
        ToolbarWidgetWrapper toolbarWidgetWrapper = (ToolbarWidgetWrapper) this.m;
        if (i != 0) {
            drawable = AppCompatResources.b(toolbarWidgetWrapper.a.getContext(), i);
        } else {
            drawable = null;
        }
        toolbarWidgetWrapper.d = drawable;
        toolbarWidgetWrapper.c();
    }

    public void setLogo(int i) {
        Drawable drawable;
        i();
        ToolbarWidgetWrapper toolbarWidgetWrapper = (ToolbarWidgetWrapper) this.m;
        if (i != 0) {
            drawable = AppCompatResources.b(toolbarWidgetWrapper.a.getContext(), i);
        } else {
            drawable = null;
        }
        toolbarWidgetWrapper.e = drawable;
        toolbarWidgetWrapper.c();
    }

    public void setOverlayMode(boolean z) {
        this.o = z;
    }

    public void setWindowCallback(Window.Callback callback) {
        i();
        ((ToolbarWidgetWrapper) this.m).getClass();
    }

    public void setWindowTitle(CharSequence charSequence) {
        i();
        ToolbarWidgetWrapper toolbarWidgetWrapper = (ToolbarWidgetWrapper) this.m;
        if (!toolbarWidgetWrapper.g) {
            Toolbar toolbar = toolbarWidgetWrapper.a;
            toolbarWidgetWrapper.h = charSequence;
            if ((toolbarWidgetWrapper.b & 8) != 0) {
                toolbar.setTitle(charSequence);
                if (toolbarWidgetWrapper.g) {
                    ViewCompat.o(toolbar.getRootView(), charSequence);
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        i();
        ToolbarWidgetWrapper toolbarWidgetWrapper = (ToolbarWidgetWrapper) this.m;
        toolbarWidgetWrapper.d = drawable;
        toolbarWidgetWrapper.c();
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void h(View view, int i, int i2, int[] iArr, int i3) {
    }
}
