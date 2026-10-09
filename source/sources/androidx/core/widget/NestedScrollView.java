package androidx.core.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.DifferentialMotionFlingController;
import androidx.core.view.DifferentialMotionFlingTarget;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ScrollFeedbackProviderCompat;
import androidx.core.view.ScrollingView;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.EdgeEffectCompat;
import defpackage.jb;
import defpackage.u2;
import java.lang.reflect.Field;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements NestedScrollingParent3, ScrollingView {
    public static final float L = (float) (Math.log(0.78d) / Math.log(0.9d));
    public static final AccessibilityDelegate M = new AccessibilityDelegateCompat();
    public static final int[] N = {R.attr.fillViewport};
    public final int A;
    public int B;
    public final int[] C;
    public final int[] D;
    public int E;
    public int F;
    public SavedState G;
    public final NestedScrollingParentHelper H;
    public final NestedScrollingChildHelper I;
    public float J;
    public final DifferentialMotionFlingController K;
    public final float j;
    public long k;
    public final Rect l;
    public final OverScroller m;
    public final EdgeEffect n;
    public final EdgeEffect o;
    public ScrollFeedbackProviderCompat p;
    public int q;
    public boolean r;
    public boolean s;
    public View t;
    public boolean u;
    public VelocityTracker v;
    public boolean w;
    public boolean x;
    public final int y;
    public final int z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class AccessibilityDelegate extends AccessibilityDelegateCompat {
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void c(View view, AccessibilityEvent accessibilityEvent) {
            boolean z;
            super.c(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            if (nestedScrollView.getScrollRange() > 0) {
                z = true;
            } else {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            accessibilityEvent.setMaxScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setMaxScrollY(nestedScrollView.getScrollRange());
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            int scrollRange;
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.a;
            this.j.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityNodeInfoCompat.i("android.widget.ScrollView");
            if (nestedScrollView.isEnabled() && (scrollRange = nestedScrollView.getScrollRange()) > 0) {
                accessibilityNodeInfo.setScrollable(true);
                if (nestedScrollView.getScrollY() > 0) {
                    accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.i);
                    accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.m);
                }
                if (nestedScrollView.getScrollY() < scrollRange) {
                    accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.h);
                    accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.o);
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0040, code lost:
        
            if (r5 != 16908346) goto L30;
         */
        @Override // androidx.core.view.AccessibilityDelegateCompat
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean g(View view, int i, Bundle bundle) {
            if (super.g(view, i, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (nestedScrollView.isEnabled()) {
                int height = nestedScrollView.getHeight();
                Rect rect = new Rect();
                if (nestedScrollView.getMatrix().isIdentity() && nestedScrollView.getGlobalVisibleRect(rect)) {
                    height = rect.height();
                }
                if (i != 4096) {
                    if (i == 8192 || i == 16908344) {
                        int max = Math.max(nestedScrollView.getScrollY() - ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                        if (max != nestedScrollView.getScrollY()) {
                            nestedScrollView.t(0 - nestedScrollView.getScrollX(), max - nestedScrollView.getScrollY(), true);
                            return true;
                        }
                    }
                }
                int min = Math.min(nestedScrollView.getScrollY() + ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
                if (min != nestedScrollView.getScrollY()) {
                    nestedScrollView.t(0 - nestedScrollView.getScrollX(), min - nestedScrollView.getScrollY(), true);
                    return true;
                }
            }
            return false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Api35Impl {
        public static void a(NestedScrollView nestedScrollView, float f) {
            try {
                nestedScrollView.setFrameContentVelocity(f);
            } catch (LinkageError unused) {
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class DifferentialMotionFlingTargetImpl implements DifferentialMotionFlingTarget {
        public DifferentialMotionFlingTargetImpl() {
        }

        @Override // androidx.core.view.DifferentialMotionFlingTarget
        public final boolean a(float f) {
            if (f == 0.0f) {
                return false;
            }
            c();
            NestedScrollView.this.i((int) f);
            return true;
        }

        @Override // androidx.core.view.DifferentialMotionFlingTarget
        public final float b() {
            return -NestedScrollView.this.getVerticalScrollFactorCompat();
        }

        @Override // androidx.core.view.DifferentialMotionFlingTarget
        public final void c() {
            NestedScrollView.this.m.abortAnimation();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface OnScrollChangeListener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public int j;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: androidx.core.widget.NestedScrollView$SavedState$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View$BaseSavedState, androidx.core.widget.NestedScrollView$SavedState] */
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                ?? baseSavedState = new View.BaseSavedState(parcel);
                baseSavedState.j = parcel.readInt();
                return baseSavedState;
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("HorizontalScrollView.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" scrollPosition=");
            return jb.i(sb, this.j, "}");
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.j);
        }
    }

    /* JADX WARN: Type inference failed for: r7v2, types: [androidx.core.view.NestedScrollingParentHelper, java.lang.Object] */
    public NestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, net.blip.android.R.attr.nestedScrollViewStyle);
        EdgeEffect edgeEffect;
        EdgeEffect edgeEffect2;
        this.l = new Rect();
        this.r = true;
        this.s = false;
        this.t = null;
        this.u = false;
        this.x = true;
        this.B = -1;
        this.C = new int[2];
        this.D = new int[2];
        this.K = new DifferentialMotionFlingController(getContext(), new DifferentialMotionFlingTargetImpl());
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            edgeEffect = EdgeEffectCompat.Api31Impl.a(context, attributeSet);
        } else {
            edgeEffect = new EdgeEffect(context);
        }
        this.n = edgeEffect;
        if (i >= 31) {
            edgeEffect2 = EdgeEffectCompat.Api31Impl.a(context, attributeSet);
        } else {
            edgeEffect2 = new EdgeEffect(context);
        }
        this.o = edgeEffect2;
        this.j = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        this.m = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.y = viewConfiguration.getScaledTouchSlop();
        this.z = viewConfiguration.getScaledMinimumFlingVelocity();
        this.A = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, N, net.blip.android.R.attr.nestedScrollViewStyle, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.H = new Object();
        this.I = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        ViewCompat.n(this, M);
    }

    private ScrollFeedbackProviderCompat getScrollFeedbackProvider() {
        if (this.p == null) {
            this.p = new ScrollFeedbackProviderCompat(this);
        }
        return this.p;
    }

    public static boolean k(View view, NestedScrollView nestedScrollView) {
        if (view != nestedScrollView) {
            Object parent = view.getParent();
            if ((parent instanceof ViewGroup) && k((View) parent, nestedScrollView)) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final boolean a(int i) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View view = findFocus;
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus != null && l(findNextFocus, maxScrollAmount, getHeight())) {
            Rect rect = this.l;
            findNextFocus.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(findNextFocus, rect);
            r(b(rect), -1, null, 0, 1, true);
            findNextFocus.requestFocus(i);
        } else {
            if (i == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            r(maxScrollAmount, -1, null, 0, 1, true);
        }
        if (view != null && view.isFocused() && !l(view, 0, getHeight())) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        if (getChildCount() <= 0) {
            super.addView(view);
        } else {
            u2.l("ScrollView can host only one direct child");
        }
    }

    public final int b(Rect rect) {
        int i;
        int i2;
        int i3;
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        if (rect.bottom < childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin) {
            i = i4 - verticalFadingEdgeLength;
        } else {
            i = i4;
        }
        int i5 = rect.bottom;
        if (i5 > i && rect.top > scrollY) {
            if (rect.height() > height) {
                i3 = rect.top - scrollY;
            } else {
                i3 = rect.bottom - i;
            }
            return Math.min(i3, (childAt.getBottom() + layoutParams.bottomMargin) - i4);
        }
        if (rect.top >= scrollY || i5 >= i) {
            return 0;
        }
        if (rect.height() > height) {
            i2 = 0 - (i - rect.bottom);
        } else {
            i2 = 0 - (scrollY - rect.top);
        }
        return Math.max(i2, -getScrollY());
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public final void c(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        m(i4, i5, iArr);
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ef  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void computeScroll() {
        int round;
        int i;
        OverScroller overScroller = this.m;
        if (overScroller.isFinished()) {
            return;
        }
        overScroller.computeScrollOffset();
        int currY = overScroller.getCurrY();
        int i2 = currY - this.F;
        int height = getHeight();
        EdgeEffect edgeEffect = this.n;
        EdgeEffect edgeEffect2 = this.o;
        if (i2 > 0 && EdgeEffectCompat.a(edgeEffect) != 0.0f) {
            round = Math.round(EdgeEffectCompat.b(edgeEffect, ((-i2) * 4.0f) / height, 0.5f) * ((-height) / 4.0f));
            if (round != i2) {
                edgeEffect.finish();
            }
        } else {
            if (i2 < 0 && EdgeEffectCompat.a(edgeEffect2) != 0.0f) {
                float f = height;
                round = Math.round(EdgeEffectCompat.b(edgeEffect2, (i2 * 4.0f) / f, 0.5f) * (f / 4.0f));
                if (round != i2) {
                    edgeEffect2.finish();
                }
            }
            int i3 = i2;
            this.F = currY;
            int[] iArr = this.D;
            iArr[1] = 0;
            this.I.c(0, i3, 1, iArr, null);
            i = i3 - iArr[1];
            int scrollRange = getScrollRange();
            if (Build.VERSION.SDK_INT >= 35) {
                Api35Impl.a(this, Math.abs(overScroller.getCurrVelocity()));
            }
            if (i != 0) {
                int scrollY = getScrollY();
                o(i, getScrollX(), scrollY, scrollRange);
                int scrollY2 = getScrollY() - scrollY;
                int i4 = i - scrollY2;
                iArr[1] = 0;
                this.I.d(0, scrollY2, 0, i4, this.C, 1, iArr);
                i = i4 - iArr[1];
            }
            if (i != 0) {
                int overScrollMode = getOverScrollMode();
                if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                    if (i < 0) {
                        if (edgeEffect.isFinished()) {
                            edgeEffect.onAbsorb((int) overScroller.getCurrVelocity());
                        }
                    } else if (edgeEffect2.isFinished()) {
                        edgeEffect2.onAbsorb((int) overScroller.getCurrVelocity());
                    }
                }
                overScroller.abortAnimation();
                v(1);
            }
            if (overScroller.isFinished()) {
                postInvalidateOnAnimation();
                return;
            } else {
                v(1);
                return;
            }
        }
        i2 -= round;
        int i32 = i2;
        this.F = currY;
        int[] iArr2 = this.D;
        iArr2[1] = 0;
        this.I.c(0, i32, 1, iArr2, null);
        i = i32 - iArr2[1];
        int scrollRange2 = getScrollRange();
        if (Build.VERSION.SDK_INT >= 35) {
        }
        if (i != 0) {
        }
        if (i != 0) {
        }
        if (overScroller.isFinished()) {
        }
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        if (scrollY < 0) {
            return bottom - scrollY;
        }
        if (scrollY > max) {
            return (scrollY - max) + bottom;
        }
        return bottom;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void d(View view, int i, int i2, int i3, int i4, int i5) {
        m(i4, i5, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00cb A[RETURN] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z;
        if (!super.dispatchKeyEvent(keyEvent)) {
            this.l.setEmpty();
            int i = 130;
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                if (childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom()) {
                    if (keyEvent.getAction() == 0) {
                        int keyCode = keyEvent.getKeyCode();
                        if (keyCode != 19) {
                            if (keyCode != 20) {
                                if (keyCode != 62) {
                                    if (keyCode != 92) {
                                        if (keyCode != 93) {
                                            if (keyCode != 122) {
                                                if (keyCode == 123) {
                                                    p(130);
                                                }
                                            } else {
                                                p(33);
                                            }
                                        } else {
                                            z = j(130);
                                        }
                                    } else {
                                        z = j(33);
                                    }
                                } else {
                                    if (keyEvent.isShiftPressed()) {
                                        i = 33;
                                    }
                                    p(i);
                                }
                            } else if (keyEvent.isAltPressed()) {
                                z = j(130);
                            } else {
                                z = a(130);
                            }
                        } else if (keyEvent.isAltPressed()) {
                            z = j(33);
                        } else {
                            z = a(33);
                        }
                        if (z) {
                            return false;
                        }
                    }
                    z = false;
                    if (z) {
                    }
                }
            }
            if (isFocused() && keyEvent.getKeyCode() != 4) {
                View findFocus = findFocus();
                if (findFocus == this) {
                    findFocus = null;
                }
                View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, 130);
                if (findNextFocus != null && findNextFocus != this && findNextFocus.requestFocus(130)) {
                    z = true;
                    if (z) {
                    }
                }
            }
            z = false;
            if (z) {
            }
        }
        return true;
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.I.a(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return this.I.b(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.I.c(i, i2, 0, iArr, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.I.d(i, i2, i3, i4, iArr, 0, null);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        int scrollY = getScrollY();
        EdgeEffect edgeEffect = this.n;
        int i2 = 0;
        if (!edgeEffect.isFinished()) {
            int save = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int min = Math.min(0, scrollY);
            if (getClipToPadding()) {
                width -= getPaddingRight() + getPaddingLeft();
                i = getPaddingLeft();
                height -= getPaddingBottom() + getPaddingTop();
                min += getPaddingTop();
            } else {
                i = 0;
            }
            canvas.translate(i, min);
            edgeEffect.setSize(width, height);
            if (edgeEffect.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect2 = this.o;
        if (!edgeEffect2.isFinished()) {
            int save2 = canvas.save();
            int width2 = getWidth();
            int height2 = getHeight();
            int max = Math.max(getScrollRange(), scrollY) + height2;
            if (getClipToPadding()) {
                width2 -= getPaddingRight() + getPaddingLeft();
                i2 = getPaddingLeft();
            }
            if (getClipToPadding()) {
                height2 -= getPaddingBottom() + getPaddingTop();
                max -= getPaddingBottom();
            }
            canvas.translate(i2 - width2, max);
            canvas.rotate(180.0f, width2, 0.0f);
            edgeEffect2.setSize(width2, height2);
            if (edgeEffect2.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(save2);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final boolean e(View view, View view2, int i, int i2) {
        if ((i & 2) != 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void f(View view, View view2, int i, int i2) {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.H;
        if (i2 == 1) {
            nestedScrollingParentHelper.b = i;
        } else {
            nestedScrollingParentHelper.a = i;
        }
        this.I.g(2, i2);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void g(View view, int i) {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.H;
        if (i == 1) {
            nestedScrollingParentHelper.b = 0;
        } else {
            nestedScrollingParentHelper.a = 0;
        }
        v(i);
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.H;
        return nestedScrollingParentHelper.b | nestedScrollingParentHelper.a;
    }

    public int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public float getVerticalScrollFactorCompat() {
        if (this.J == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                this.J = typedValue.getDimension(context.getResources().getDisplayMetrics());
            } else {
                u2.l("Expected theme to define listPreferredItemHeight.");
                return 0.0f;
            }
        }
        return this.J;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void h(View view, int i, int i2, int[] iArr, int i3) {
        this.I.c(i, i2, i3, iArr, null);
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.I.f(0);
    }

    public final void i(int i) {
        if (getChildCount() > 0) {
            this.m.fling(getScrollX(), getScrollY(), 0, i, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            this.I.g(2, 1);
            this.F = getScrollY();
            postInvalidateOnAnimation();
            if (Build.VERSION.SDK_INT >= 35) {
                Api35Impl.a(this, Math.abs(this.m.getCurrVelocity()));
            }
        }
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.I.d;
    }

    public final boolean j(int i) {
        boolean z;
        int childCount;
        if (i == 130) {
            z = true;
        } else {
            z = false;
        }
        int height = getHeight();
        Rect rect = this.l;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            rect.bottom = paddingBottom;
            rect.top = paddingBottom - height;
        }
        return q(i, rect.top, rect.bottom);
    }

    public final boolean l(View view, int i, int i2) {
        Rect rect = this.l;
        view.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(view, rect);
        if (rect.bottom + i >= getScrollY() && rect.top - i <= getScrollY() + i2) {
            return true;
        }
        return false;
    }

    public final void m(int i, int i2, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.I.d(0, scrollY2, 0, i - scrollY2, null, i2, iArr);
    }

    @Override // android.view.ViewGroup
    public final void measureChild(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public final void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    public final void n(MotionEvent motionEvent) {
        int i;
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.B) {
            if (actionIndex == 0) {
                i = 1;
            } else {
                i = 0;
            }
            this.q = (int) motionEvent.getY(i);
            this.B = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.v;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean o(int i, int i2, int i3, int i4) {
        int i5;
        boolean z;
        int i6;
        boolean z2;
        getOverScrollMode();
        super.computeHorizontalScrollRange();
        super.computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        super.computeVerticalScrollExtent();
        int i7 = i3 + i;
        if (i2 > 0 || i2 < 0) {
            i5 = 0;
            z = true;
        } else {
            i5 = i2;
            z = false;
        }
        if (i7 > i4) {
            i6 = i4;
        } else if (i7 < 0) {
            i6 = 0;
        } else {
            i6 = i7;
            z2 = false;
            if (z2 && !this.I.f(1)) {
                this.m.springBack(i5, i6, 0, 0, 0, getScrollRange());
            }
            super.scrollTo(i5, i6);
            if (!z || z2) {
                return true;
            }
            return false;
        }
        z2 = true;
        if (z2) {
            this.m.springBack(i5, i6, 0, 0, 0, getScrollRange());
        }
        super.scrollTo(i5, i6);
        if (!z) {
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.s = false;
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int i;
        int i2;
        float f;
        boolean z;
        if (motionEvent.getAction() == 8 && !this.u) {
            if ((motionEvent.getSource() & 2) == 2) {
                f = motionEvent.getAxisValue(9);
                i = 9;
                i2 = (int) motionEvent.getX();
            } else if ((motionEvent.getSource() & 4194304) == 4194304) {
                float axisValue = motionEvent.getAxisValue(26);
                i = 26;
                i2 = getWidth() / 2;
                f = axisValue;
            } else {
                i = 0;
                i2 = 0;
                f = 0.0f;
            }
            if (f != 0.0f) {
                int verticalScrollFactorCompat = (int) (getVerticalScrollFactorCompat() * f);
                if ((motionEvent.getSource() & 8194) == 8194) {
                    z = true;
                } else {
                    z = false;
                }
                r(-verticalScrollFactorCompat, i, motionEvent, i2, 1, z);
                if (i != 0) {
                    this.K.a(motionEvent, i);
                }
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z = true;
        if (action == 2 && this.u) {
            return true;
        }
        int i = action & 255;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 6) {
                            n(motionEvent);
                        }
                    }
                } else {
                    int i2 = this.B;
                    if (i2 != -1) {
                        int findPointerIndex = motionEvent.findPointerIndex(i2);
                        if (findPointerIndex == -1) {
                            Log.e("NestedScrollView", "Invalid pointerId=" + i2 + " in onInterceptTouchEvent");
                        } else {
                            int y = (int) motionEvent.getY(findPointerIndex);
                            if (Math.abs(y - this.q) > this.y && (2 & getNestedScrollAxes()) == 0) {
                                this.u = true;
                                this.q = y;
                                if (this.v == null) {
                                    this.v = VelocityTracker.obtain();
                                }
                                this.v.addMovement(motionEvent);
                                this.E = 0;
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                    }
                }
            }
            this.u = false;
            this.B = -1;
            VelocityTracker velocityTracker = this.v;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.v = null;
            }
            if (this.m.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                postInvalidateOnAnimation();
            }
            v(0);
        } else {
            int y2 = (int) motionEvent.getY();
            int x = (int) motionEvent.getX();
            int childCount = getChildCount();
            OverScroller overScroller = this.m;
            if (childCount > 0) {
                int scrollY = getScrollY();
                View childAt = getChildAt(0);
                if (y2 >= childAt.getTop() - scrollY && y2 < childAt.getBottom() - scrollY && x >= childAt.getLeft() && x < childAt.getRight()) {
                    this.q = y2;
                    this.B = motionEvent.getPointerId(0);
                    VelocityTracker velocityTracker2 = this.v;
                    if (velocityTracker2 == null) {
                        this.v = VelocityTracker.obtain();
                    } else {
                        velocityTracker2.clear();
                    }
                    this.v.addMovement(motionEvent);
                    overScroller.computeScrollOffset();
                    if (!u(motionEvent) && overScroller.isFinished()) {
                        z = false;
                    }
                    this.u = z;
                    this.I.g(2, 0);
                }
            }
            if (!u(motionEvent) && overScroller.isFinished()) {
                z = false;
            }
            this.u = z;
            VelocityTracker velocityTracker3 = this.v;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.v = null;
            }
        }
        return this.u;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        super.onLayout(z, i, i2, i3, i4);
        int i6 = 0;
        this.r = false;
        View view = this.t;
        if (view != null && k(view, this)) {
            View view2 = this.t;
            Rect rect = this.l;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int b = b(rect);
            if (b != 0) {
                scrollBy(0, b);
            }
        }
        this.t = null;
        if (!this.s) {
            if (this.G != null) {
                scrollTo(getScrollX(), this.G.j);
                this.G = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i5 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            } else {
                i5 = 0;
            }
            int paddingTop = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            if (paddingTop < i5 && scrollY >= 0) {
                i6 = paddingTop + scrollY > i5 ? i5 - paddingTop : scrollY;
            }
            if (i6 != scrollY) {
                scrollTo(getScrollX(), i6);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.s = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.w && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!z) {
            dispatchNestedFling(0.0f, f2, true);
            i((int) f2);
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return this.I.b(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        this.I.c(i, i2, 0, iArr, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        m(i4, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        f(view, view2, i, 0);
    }

    @Override // android.view.View
    public final void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        View findNextFocusFromRect;
        if (i == 2) {
            i = 130;
        } else if (i == 1) {
            i = 33;
        }
        if (rect == null) {
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocus(this, null, i);
        } else {
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocusFromRect(this, rect, i);
        }
        if (findNextFocusFromRect == null || !l(findNextFocusFromRect, 0, getHeight())) {
            return false;
        }
        return findNextFocusFromRect.requestFocus(i, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.G = savedState;
        requestLayout();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View$BaseSavedState, androidx.core.widget.NestedScrollView$SavedState, android.os.Parcelable] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? baseSavedState = new View.BaseSavedState(super.onSaveInstanceState());
        baseSavedState.j = getScrollY();
        return baseSavedState;
    }

    @Override // android.view.View
    public final void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus != null && this != findFocus && l(findFocus, 0, i4)) {
            Rect rect = this.l;
            findFocus.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(findFocus, rect);
            int b = b(rect);
            if (b != 0) {
                if (this.x) {
                    t(0, b, false);
                } else {
                    scrollBy(0, b);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        return e(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        g(view, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0144  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        float b;
        int round;
        if (this.v == null) {
            this.v = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.E = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        float f = 0.0f;
        obtain.offsetLocation(0.0f, this.E);
        NestedScrollingChildHelper nestedScrollingChildHelper = this.I;
        if (actionMasked != 0) {
            EdgeEffect edgeEffect = this.n;
            EdgeEffect edgeEffect2 = this.o;
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked != 5) {
                            if (actionMasked == 6) {
                                n(motionEvent);
                                this.q = (int) motionEvent.getY(motionEvent.findPointerIndex(this.B));
                            }
                        } else {
                            int actionIndex = motionEvent.getActionIndex();
                            this.q = (int) motionEvent.getY(actionIndex);
                            this.B = motionEvent.getPointerId(actionIndex);
                        }
                    } else {
                        if (this.u && getChildCount() > 0) {
                            if (this.m.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                                postInvalidateOnAnimation();
                            }
                        }
                        this.B = -1;
                        this.u = false;
                        VelocityTracker velocityTracker = this.v;
                        if (velocityTracker != null) {
                            velocityTracker.recycle();
                            this.v = null;
                        }
                        v(0);
                        edgeEffect.onRelease();
                        edgeEffect2.onRelease();
                    }
                } else {
                    int findPointerIndex = motionEvent.findPointerIndex(this.B);
                    if (findPointerIndex == -1) {
                        Log.e("NestedScrollView", "Invalid pointerId=" + this.B + " in onTouchEvent");
                    } else {
                        int y = (int) motionEvent.getY(findPointerIndex);
                        int i = this.q - y;
                        float x = motionEvent.getX(findPointerIndex) / getWidth();
                        float height = i / getHeight();
                        if (EdgeEffectCompat.a(edgeEffect) != 0.0f) {
                            b = -EdgeEffectCompat.b(edgeEffect, -height, x);
                            if (EdgeEffectCompat.a(edgeEffect) == 0.0f) {
                                edgeEffect.onRelease();
                            }
                        } else {
                            if (EdgeEffectCompat.a(edgeEffect2) != 0.0f) {
                                b = EdgeEffectCompat.b(edgeEffect2, height, 1.0f - x);
                                if (EdgeEffectCompat.a(edgeEffect2) == 0.0f) {
                                    edgeEffect2.onRelease();
                                }
                            }
                            round = Math.round(f * getHeight());
                            if (round != 0) {
                                invalidate();
                            }
                            int i2 = i - round;
                            if (!this.u) {
                                int abs = Math.abs(i2);
                                int i3 = this.y;
                                if (abs > i3) {
                                    ViewParent parent2 = getParent();
                                    if (parent2 != null) {
                                        parent2.requestDisallowInterceptTouchEvent(true);
                                    }
                                    this.u = true;
                                    i2 = i2 > 0 ? i2 - i3 : i2 + i3;
                                }
                            }
                            if (this.u) {
                                int r = r(i2, 1, motionEvent, (int) motionEvent.getX(findPointerIndex), 0, false);
                                this.q = y - r;
                                this.E += r;
                            }
                        }
                        f = b;
                        round = Math.round(f * getHeight());
                        if (round != 0) {
                        }
                        int i22 = i - round;
                        if (!this.u) {
                        }
                        if (this.u) {
                        }
                    }
                }
            } else {
                VelocityTracker velocityTracker2 = this.v;
                velocityTracker2.computeCurrentVelocity(1000, this.A);
                int yVelocity = (int) velocityTracker2.getYVelocity(this.B);
                if (Math.abs(yVelocity) >= this.z) {
                    if (EdgeEffectCompat.a(edgeEffect) != 0.0f) {
                        if (s(edgeEffect, yVelocity)) {
                            edgeEffect.onAbsorb(yVelocity);
                        } else {
                            i(-yVelocity);
                        }
                    } else if (EdgeEffectCompat.a(edgeEffect2) != 0.0f) {
                        int i4 = -yVelocity;
                        if (s(edgeEffect2, i4)) {
                            edgeEffect2.onAbsorb(i4);
                        } else {
                            i(i4);
                        }
                    } else {
                        int i5 = -yVelocity;
                        float f2 = i5;
                        if (!nestedScrollingChildHelper.b(0.0f, f2)) {
                            dispatchNestedFling(0.0f, f2, true);
                            i(i5);
                        }
                    }
                } else if (this.m.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    postInvalidateOnAnimation();
                }
                this.B = -1;
                this.u = false;
                VelocityTracker velocityTracker3 = this.v;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.v = null;
                }
                v(0);
                edgeEffect.onRelease();
                edgeEffect2.onRelease();
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            if (this.u && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            OverScroller overScroller = this.m;
            if (!overScroller.isFinished()) {
                overScroller.abortAnimation();
                v(1);
            }
            int y2 = (int) motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            this.q = y2;
            this.B = pointerId;
            nestedScrollingChildHelper.g(2, 0);
        }
        VelocityTracker velocityTracker4 = this.v;
        if (velocityTracker4 != null) {
            velocityTracker4.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    public final void p(int i) {
        boolean z;
        if (i == 130) {
            z = true;
        } else {
            z = false;
        }
        int height = getHeight();
        Rect rect = this.l;
        if (z) {
            rect.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
                if (rect.top + height > paddingBottom) {
                    rect.top = paddingBottom - height;
                }
            }
        } else {
            int scrollY = getScrollY() - height;
            rect.top = scrollY;
            if (scrollY < 0) {
                rect.top = 0;
            }
        }
        int i2 = rect.top;
        int i3 = height + i2;
        rect.bottom = i3;
        q(i, i2, i3);
    }

    public final boolean q(int i, int i2, int i3) {
        boolean z;
        View view;
        int i4;
        boolean z2;
        boolean z3;
        boolean z4;
        int height = getHeight();
        int scrollY = getScrollY();
        int i5 = height + scrollY;
        if (i == 33) {
            z = true;
        } else {
            z = false;
        }
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view2 = null;
        boolean z5 = false;
        for (int i6 = 0; i6 < size; i6++) {
            View view3 = focusables.get(i6);
            int top = view3.getTop();
            int bottom = view3.getBottom();
            if (i2 < bottom && top < i3) {
                if (i2 < top && bottom < i3) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (view2 == null) {
                    view2 = view3;
                    z5 = z3;
                } else {
                    if ((z && top < view2.getTop()) || (!z && bottom > view2.getBottom())) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (z5) {
                        if (z3) {
                            if (!z4) {
                            }
                            view2 = view3;
                        }
                    } else if (z3) {
                        view2 = view3;
                        z5 = true;
                    } else {
                        if (!z4) {
                        }
                        view2 = view3;
                    }
                }
            }
        }
        if (view2 == null) {
            view = this;
        } else {
            view = view2;
        }
        if (i2 >= scrollY && i3 <= i5) {
            z2 = false;
        } else {
            if (z) {
                i4 = i2 - scrollY;
            } else {
                i4 = i3 - i5;
            }
            r(i4, -1, null, 0, 1, true);
            z2 = true;
        }
        if (view != findFocus()) {
            view.requestFocus(i);
        }
        return z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0123  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int r(int i, int i2, MotionEvent motionEvent, int i3, int i4, boolean z) {
        int i5;
        int i6;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        VelocityTracker velocityTracker;
        NestedScrollingChildHelper nestedScrollingChildHelper = this.I;
        if (i4 == 1) {
            nestedScrollingChildHelper.g(2, i4);
        }
        boolean c = this.I.c(0, i, i4, this.D, this.C);
        int[] iArr = this.C;
        int[] iArr2 = this.D;
        if (c) {
            i5 = i - iArr2[1];
            i6 = iArr[1];
        } else {
            i5 = i;
            i6 = 0;
        }
        int scrollY = getScrollY();
        int scrollRange = getScrollRange();
        int overScrollMode = getOverScrollMode();
        if ((overScrollMode == 0 || (overScrollMode == 1 && getScrollRange() > 0)) && !z) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (o(i5, 0, scrollY, scrollRange) && !nestedScrollingChildHelper.f(i4)) {
            z3 = true;
        } else {
            z3 = false;
        }
        int scrollY2 = getScrollY() - scrollY;
        if (motionEvent != null && scrollY2 != 0) {
            getScrollFeedbackProvider().b(motionEvent.getDeviceId(), motionEvent.getSource(), i2, scrollY2);
        }
        iArr2[1] = 0;
        this.I.d(0, scrollY2, 0, i5 - scrollY2, this.C, i4, iArr2);
        int i7 = i6 + iArr[1];
        int i8 = i5 - iArr2[1];
        int i9 = scrollY + i8;
        EdgeEffect edgeEffect = this.o;
        EdgeEffect edgeEffect2 = this.n;
        if (i9 < 0) {
            if (z2) {
                EdgeEffectCompat.b(edgeEffect2, (-i8) / getHeight(), i3 / getWidth());
                if (motionEvent != null) {
                    getScrollFeedbackProvider().a(motionEvent.getDeviceId(), motionEvent.getSource(), i2, true);
                }
                if (!edgeEffect.isFinished()) {
                    edgeEffect.onRelease();
                }
            }
        } else if (i9 > scrollRange && z2) {
            EdgeEffectCompat.b(edgeEffect, i8 / getHeight(), 1.0f - (i3 / getWidth()));
            if (motionEvent != null) {
                z4 = false;
                getScrollFeedbackProvider().a(motionEvent.getDeviceId(), motionEvent.getSource(), i2, false);
            } else {
                z4 = false;
            }
            if (!edgeEffect2.isFinished()) {
                edgeEffect2.onRelease();
            }
            if (!edgeEffect2.isFinished() && edgeEffect.isFinished()) {
                z5 = z3;
            } else {
                postInvalidateOnAnimation();
                z5 = z4;
            }
            if (z5 && i4 == 0 && (velocityTracker = this.v) != null) {
                velocityTracker.clear();
            }
            if (i4 == 1) {
                v(i4);
                edgeEffect2.onRelease();
                edgeEffect.onRelease();
            }
            return i7;
        }
        z4 = false;
        if (!edgeEffect2.isFinished()) {
        }
        postInvalidateOnAnimation();
        z5 = z4;
        if (z5) {
            velocityTracker.clear();
        }
        if (i4 == 1) {
        }
        return i7;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (!this.r) {
            Rect rect = this.l;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int b = b(rect);
            if (b != 0) {
                scrollBy(0, b);
            }
        } else {
            this.t = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        boolean z2;
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int b = b(rect);
        if (b != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            if (z) {
                scrollBy(0, b);
                return z2;
            }
            t(0, b, false);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        VelocityTracker velocityTracker;
        if (z && (velocityTracker = this.v) != null) {
            velocityTracker.recycle();
            this.v = null;
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.r = true;
        super.requestLayout();
    }

    public final boolean s(EdgeEffect edgeEffect, int i) {
        if (i > 0) {
            return true;
        }
        float a = EdgeEffectCompat.a(edgeEffect) * getHeight();
        float abs = Math.abs(-i) * 0.35f;
        float f = this.j * 0.015f;
        double log = Math.log(abs / f);
        double d = L;
        if (((float) (Math.exp((d / (d - 1.0d)) * log) * f)) < a) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (width < width2 && i >= 0) {
                if (width + i > width2) {
                    i = width2 - width;
                }
            } else {
                i = 0;
            }
            if (height < height2 && i2 >= 0) {
                if (height + i2 > height2) {
                    i2 = height2 - height;
                }
            } else {
                i2 = 0;
            }
            if (i != getScrollX() || i2 != getScrollY()) {
                super.scrollTo(i, i2);
            }
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.w) {
            this.w = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        NestedScrollingChildHelper nestedScrollingChildHelper = this.I;
        if (nestedScrollingChildHelper.d) {
            ViewGroup viewGroup = nestedScrollingChildHelper.c;
            Field field = ViewCompat.a;
            viewGroup.stopNestedScroll();
        }
        nestedScrollingChildHelper.d = z;
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.x = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return this.I.g(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        v(0);
    }

    public final void t(int i, int i2, boolean z) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.k > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int max = Math.max(0, Math.min(i2 + scrollY, Math.max(0, height - height2))) - scrollY;
            this.m.startScroll(getScrollX(), scrollY, 0, max, 250);
            if (z) {
                this.I.g(2, 1);
            } else {
                v(1);
            }
            this.F = getScrollY();
            postInvalidateOnAnimation();
        } else {
            OverScroller overScroller = this.m;
            if (!overScroller.isFinished()) {
                overScroller.abortAnimation();
                v(1);
            }
            scrollBy(i, i2);
        }
        this.k = AnimationUtils.currentAnimationTimeMillis();
    }

    public final boolean u(MotionEvent motionEvent) {
        boolean z;
        EdgeEffect edgeEffect = this.n;
        if (EdgeEffectCompat.a(edgeEffect) != 0.0f) {
            EdgeEffectCompat.b(edgeEffect, 0.0f, motionEvent.getX() / getWidth());
            z = true;
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.o;
        if (EdgeEffectCompat.a(edgeEffect2) != 0.0f) {
            EdgeEffectCompat.b(edgeEffect2, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
            return true;
        }
        return z;
    }

    public final void v(int i) {
        this.I.h(i);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i) {
        if (getChildCount() <= 0) {
            super.addView(view, i);
        } else {
            u2.l("ScrollView can host only one direct child");
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
        } else {
            u2.l("ScrollView can host only one direct child");
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i, layoutParams);
        } else {
            u2.l("ScrollView can host only one direct child");
        }
    }

    public void setOnScrollChangeListener(OnScrollChangeListener onScrollChangeListener) {
    }
}
