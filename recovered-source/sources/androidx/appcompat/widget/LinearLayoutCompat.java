package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LinearLayoutCompat extends ViewGroup {
    public boolean j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public float p;
    public boolean q;
    public int[] r;
    public int[] s;
    public Drawable t;
    public int u;
    public int v;
    public int w;
    public int x;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class LayoutParams extends LinearLayout.LayoutParams {
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, 0);
        this.j = true;
        this.k = -1;
        this.l = 0;
        this.n = 8388659;
        int[] iArr = R$styleable.k;
        TintTypedArray d = TintTypedArray.d(context, attributeSet, iArr, 0);
        ViewCompat.m(this, context, iArr, attributeSet, d.b, 0);
        TypedArray typedArray = d.b;
        int i2 = typedArray.getInt(1, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = typedArray.getInt(0, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = typedArray.getBoolean(2, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.p = typedArray.getFloat(4, -1.0f);
        this.k = typedArray.getInt(3, -1);
        this.q = typedArray.getBoolean(7, false);
        setDividerDrawable(d.b(5));
        this.w = typedArray.getInt(8, 0);
        this.x = typedArray.getDimensionPixelSize(6, 0);
        d.e();
    }

    public final void b(Canvas canvas, int i) {
        this.t.setBounds(getPaddingLeft() + this.x, i, (getWidth() - getPaddingRight()) - this.x, this.v + i);
        this.t.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final void d(Canvas canvas, int i) {
        this.t.setBounds(i, getPaddingTop() + this.x, this.u + i, (getHeight() - getPaddingBottom()) - this.x);
        this.t.draw(canvas);
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.appcompat.widget.LinearLayoutCompat$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.appcompat.widget.LinearLayoutCompat$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    @Override // android.view.ViewGroup
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.m;
        if (i == 0) {
            return new LinearLayout.LayoutParams(-2, -2);
        }
        if (i == 1) {
            return new LinearLayout.LayoutParams(-1, -2);
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.appcompat.widget.LinearLayoutCompat$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    @Override // android.view.ViewGroup
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LinearLayout.LayoutParams(getContext(), attributeSet);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.appcompat.widget.LinearLayoutCompat$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.appcompat.widget.LinearLayoutCompat$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.appcompat.widget.LinearLayoutCompat$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    @Override // android.view.ViewGroup
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LinearLayout.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LinearLayout.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LinearLayout.LayoutParams(layoutParams);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.k < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.k;
        if (childCount > i2) {
            View childAt = getChildAt(i2);
            int baseline = childAt.getBaseline();
            if (baseline == -1) {
                if (this.k == 0) {
                    return -1;
                }
                u2.n("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
                return 0;
            }
            int i3 = this.l;
            if (this.m == 1 && (i = this.n & 112) != 48) {
                if (i != 16) {
                    if (i == 80) {
                        i3 = ((getBottom() - getTop()) - getPaddingBottom()) - this.o;
                    }
                } else {
                    i3 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.o) / 2;
                }
            }
            return i3 + ((LinearLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
        }
        u2.n("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        return 0;
    }

    public int getBaselineAlignedChildIndex() {
        return this.k;
    }

    public Drawable getDividerDrawable() {
        return this.t;
    }

    public int getDividerPadding() {
        return this.x;
    }

    public int getDividerWidth() {
        return this.u;
    }

    public int getGravity() {
        return this.n;
    }

    public int getOrientation() {
        return this.m;
    }

    public int getShowDividers() {
        return this.w;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.p;
    }

    public final boolean h(int i) {
        if (i == 0) {
            if ((this.w & 1) == 0) {
                return false;
            }
            return true;
        }
        int childCount = getChildCount();
        int i2 = this.w;
        if (i == childCount) {
            if ((i2 & 4) == 0) {
                return false;
            }
            return true;
        }
        if ((i2 & 2) != 0) {
            for (int i3 = i - 1; i3 >= 0; i3--) {
                if (getChildAt(i3).getVisibility() != 8) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        boolean z;
        int right;
        int left;
        int i;
        int left2;
        int bottom;
        if (this.t != null) {
            int i2 = 0;
            if (this.m == 1) {
                int virtualChildCount = getVirtualChildCount();
                while (i2 < virtualChildCount) {
                    View childAt = getChildAt(i2);
                    if (childAt != null && childAt.getVisibility() != 8 && h(i2)) {
                        b(canvas, (childAt.getTop() - ((LinearLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin) - this.v);
                    }
                    i2++;
                }
                if (h(virtualChildCount)) {
                    View childAt2 = getChildAt(virtualChildCount - 1);
                    if (childAt2 == null) {
                        bottom = (getHeight() - getPaddingBottom()) - this.v;
                    } else {
                        bottom = childAt2.getBottom() + ((LinearLayout.LayoutParams) ((LayoutParams) childAt2.getLayoutParams())).bottomMargin;
                    }
                    b(canvas, bottom);
                    return;
                }
                return;
            }
            int virtualChildCount2 = getVirtualChildCount();
            if (getLayoutDirection() == 1) {
                z = true;
            } else {
                z = false;
            }
            while (i2 < virtualChildCount2) {
                View childAt3 = getChildAt(i2);
                if (childAt3 != null && childAt3.getVisibility() != 8 && h(i2)) {
                    LayoutParams layoutParams = (LayoutParams) childAt3.getLayoutParams();
                    if (z) {
                        left2 = childAt3.getRight() + ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                    } else {
                        left2 = (childAt3.getLeft() - ((LinearLayout.LayoutParams) layoutParams).leftMargin) - this.u;
                    }
                    d(canvas, left2);
                }
                i2++;
            }
            if (h(virtualChildCount2)) {
                View childAt4 = getChildAt(virtualChildCount2 - 1);
                if (childAt4 == null) {
                    if (z) {
                        right = getPaddingLeft();
                    } else {
                        left = getWidth() - getPaddingRight();
                        i = this.u;
                        right = left - i;
                    }
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) childAt4.getLayoutParams();
                    if (z) {
                        left = childAt4.getLeft() - ((LinearLayout.LayoutParams) layoutParams2).leftMargin;
                        i = this.u;
                        right = left - i;
                    } else {
                        right = childAt4.getRight() + ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                    }
                }
                d(canvas, right);
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x018f  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        int paddingLeft;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int paddingTop;
        char c;
        int i15;
        int i16;
        int i17;
        int i18 = 8;
        char c2 = 2;
        if (this.m == 1) {
            int paddingLeft2 = getPaddingLeft();
            int i19 = i3 - i;
            int paddingRight = i19 - getPaddingRight();
            int paddingRight2 = (i19 - paddingLeft2) - getPaddingRight();
            int virtualChildCount = getVirtualChildCount();
            int i20 = this.n;
            int i21 = i20 & 112;
            int i22 = 8388615 & i20;
            if (i21 != 16) {
                if (i21 != 80) {
                    paddingTop = getPaddingTop();
                } else {
                    paddingTop = ((getPaddingTop() + i4) - i2) - this.o;
                }
            } else {
                paddingTop = getPaddingTop() + (((i4 - i2) - this.o) / 2);
            }
            int i23 = 0;
            while (i23 < virtualChildCount) {
                View childAt = getChildAt(i23);
                if (childAt == null || childAt.getVisibility() == i18) {
                    c = c2;
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                    c = c2;
                    int i24 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                    if (i24 < 0) {
                        i24 = i22;
                    }
                    int absoluteGravity = Gravity.getAbsoluteGravity(i24, getLayoutDirection()) & 7;
                    if (absoluteGravity != 1) {
                        if (absoluteGravity != 5) {
                            i17 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + paddingLeft2;
                            if (h(i23)) {
                                paddingTop += this.v;
                            }
                            int i25 = paddingTop + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                            childAt.layout(i17, i25, measuredWidth + i17, i25 + measuredHeight);
                            paddingTop = measuredHeight + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + i25;
                        } else {
                            i15 = paddingRight - measuredWidth;
                            i16 = ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                        }
                    } else {
                        i15 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft2 + ((LinearLayout.LayoutParams) layoutParams).leftMargin;
                        i16 = ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                    }
                    i17 = i15 - i16;
                    if (h(i23)) {
                    }
                    int i252 = paddingTop + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                    childAt.layout(i17, i252, measuredWidth + i17, i252 + measuredHeight);
                    paddingTop = measuredHeight + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + i252;
                }
                i23++;
                c2 = c;
                i18 = 8;
            }
            return;
        }
        if (getLayoutDirection() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        int paddingTop2 = getPaddingTop();
        int i26 = i4 - i2;
        int paddingBottom = i26 - getPaddingBottom();
        int paddingBottom2 = (i26 - paddingTop2) - getPaddingBottom();
        int virtualChildCount2 = getVirtualChildCount();
        int i27 = this.n;
        int i28 = 8388615 & i27;
        int i29 = i27 & 112;
        boolean z3 = this.j;
        int[] iArr = this.r;
        int[] iArr2 = this.s;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i28, getLayoutDirection());
        if (absoluteGravity2 != 1) {
            if (absoluteGravity2 != 5) {
                paddingLeft = getPaddingLeft();
            } else {
                paddingLeft = ((getPaddingLeft() + i3) - i) - this.o;
            }
        } else {
            paddingLeft = getPaddingLeft() + (((i3 - i) - this.o) / 2);
        }
        if (z2) {
            i6 = virtualChildCount2 - 1;
            i5 = -1;
        } else {
            i5 = 1;
            i6 = 0;
        }
        int i30 = 0;
        while (i30 < virtualChildCount2) {
            int i31 = (i5 * i30) + i6;
            View childAt2 = getChildAt(i31);
            if (childAt2 == null) {
                i7 = i6;
            } else {
                i7 = i6;
                if (childAt2.getVisibility() != 8) {
                    int measuredWidth2 = childAt2.getMeasuredWidth();
                    int measuredHeight2 = childAt2.getMeasuredHeight();
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    int i32 = paddingLeft;
                    if (z3) {
                        i8 = paddingTop2;
                        if (((LinearLayout.LayoutParams) layoutParams2).height != -1) {
                            i9 = childAt2.getBaseline();
                            i10 = ((LinearLayout.LayoutParams) layoutParams2).gravity;
                            if (i10 < 0) {
                                i10 = i29;
                            }
                            i11 = i10 & 112;
                            if (i11 == 16) {
                                if (i11 != 48) {
                                    if (i11 != 80) {
                                        i12 = i8;
                                    } else {
                                        i12 = (paddingBottom - measuredHeight2) - ((LinearLayout.LayoutParams) layoutParams2).bottomMargin;
                                        if (i9 != -1) {
                                            i13 = iArr2[2] - (childAt2.getMeasuredHeight() - i9);
                                        }
                                    }
                                } else {
                                    i12 = i8 + ((LinearLayout.LayoutParams) layoutParams2).topMargin;
                                    if (i9 != -1) {
                                        i12 = (iArr[1] - i9) + i12;
                                    }
                                }
                                if (h(i31)) {
                                    i14 = i32 + this.u;
                                } else {
                                    i14 = i32;
                                }
                                int i33 = i14 + ((LinearLayout.LayoutParams) layoutParams2).leftMargin;
                                childAt2.layout(i33, i12, i33 + measuredWidth2, i12 + measuredHeight2);
                                paddingLeft = measuredWidth2 + ((LinearLayout.LayoutParams) layoutParams2).rightMargin + i33;
                                i30++;
                                i6 = i7;
                                paddingTop2 = i8;
                            } else {
                                i12 = ((paddingBottom2 - measuredHeight2) / 2) + i8 + ((LinearLayout.LayoutParams) layoutParams2).topMargin;
                                i13 = ((LinearLayout.LayoutParams) layoutParams2).bottomMargin;
                            }
                            i12 -= i13;
                            if (h(i31)) {
                            }
                            int i332 = i14 + ((LinearLayout.LayoutParams) layoutParams2).leftMargin;
                            childAt2.layout(i332, i12, i332 + measuredWidth2, i12 + measuredHeight2);
                            paddingLeft = measuredWidth2 + ((LinearLayout.LayoutParams) layoutParams2).rightMargin + i332;
                            i30++;
                            i6 = i7;
                            paddingTop2 = i8;
                        }
                    } else {
                        i8 = paddingTop2;
                    }
                    i9 = -1;
                    i10 = ((LinearLayout.LayoutParams) layoutParams2).gravity;
                    if (i10 < 0) {
                    }
                    i11 = i10 & 112;
                    if (i11 == 16) {
                    }
                    i12 -= i13;
                    if (h(i31)) {
                    }
                    int i3322 = i14 + ((LinearLayout.LayoutParams) layoutParams2).leftMargin;
                    childAt2.layout(i3322, i12, i3322 + measuredWidth2, i12 + measuredHeight2);
                    paddingLeft = measuredWidth2 + ((LinearLayout.LayoutParams) layoutParams2).rightMargin + i3322;
                    i30++;
                    i6 = i7;
                    paddingTop2 = i8;
                }
            }
            i8 = paddingTop2;
            i30++;
            i6 = i7;
            paddingTop2 = i8;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:223:0x04f1  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0536  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0540  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x051f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0146  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) {
        boolean z;
        int max;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z2;
        int i8;
        boolean z3;
        int baseline;
        int i9;
        int i10;
        int i11;
        int[] iArr;
        int i12;
        int i13;
        boolean z4;
        boolean z5;
        LayoutParams layoutParams;
        int i14;
        int[] iArr2;
        int i15;
        View view;
        int i16;
        boolean z6;
        boolean z7;
        boolean z8;
        int max2;
        int i17;
        int i18;
        int i19;
        boolean z9;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        boolean z10;
        int i25;
        int i26;
        int i27;
        View view2;
        boolean z11;
        boolean z12;
        LinearLayoutCompat linearLayoutCompat = this;
        int i28 = -2;
        int i29 = 0;
        int i30 = 1073741824;
        int i31 = 8;
        if (linearLayoutCompat.m == 1) {
            linearLayoutCompat.o = 0;
            int virtualChildCount = linearLayoutCompat.getVirtualChildCount();
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int i32 = linearLayoutCompat.k;
            boolean z13 = linearLayoutCompat.q;
            int i33 = 0;
            int i34 = 0;
            int i35 = 0;
            boolean z14 = false;
            int i36 = 0;
            boolean z15 = false;
            boolean z16 = true;
            float f = 0.0f;
            int i37 = 0;
            while (i33 < virtualChildCount) {
                int i38 = mode;
                View childAt = linearLayoutCompat.getChildAt(i33);
                if (childAt == null) {
                    linearLayoutCompat.o = linearLayoutCompat.o;
                } else if (childAt.getVisibility() != i31) {
                    if (linearLayoutCompat.h(i33)) {
                        linearLayoutCompat.o += linearLayoutCompat.v;
                    }
                    LayoutParams layoutParams2 = (LayoutParams) childAt.getLayoutParams();
                    float f2 = ((LinearLayout.LayoutParams) layoutParams2).weight;
                    f += f2;
                    if (mode2 == i30 && ((LinearLayout.LayoutParams) layoutParams2).height == 0 && f2 > 0.0f) {
                        int i39 = linearLayoutCompat.o;
                        linearLayoutCompat.o = Math.max(i39, ((LinearLayout.LayoutParams) layoutParams2).topMargin + i39 + ((LinearLayout.LayoutParams) layoutParams2).bottomMargin);
                        view2 = childAt;
                        i24 = mode2;
                        i25 = i32;
                        z10 = z13;
                        i26 = i33;
                        z14 = true;
                        i27 = i38;
                    } else {
                        if (((LinearLayout.LayoutParams) layoutParams2).height == 0 && f2 > 0.0f) {
                            ((LinearLayout.LayoutParams) layoutParams2).height = i28;
                            i21 = 0;
                        } else {
                            i21 = Integer.MIN_VALUE;
                        }
                        if (f == 0.0f) {
                            i22 = i33;
                            i23 = linearLayoutCompat.o;
                        } else {
                            i22 = i33;
                            i23 = 0;
                        }
                        i24 = mode2;
                        z10 = z13;
                        i25 = i32;
                        i26 = i22;
                        i27 = i38;
                        linearLayoutCompat.measureChildWithMargins(childAt, i, 0, i2, i23);
                        if (i21 != Integer.MIN_VALUE) {
                            ((LinearLayout.LayoutParams) layoutParams2).height = i21;
                        }
                        int measuredHeight = childAt.getMeasuredHeight();
                        int i40 = linearLayoutCompat.o;
                        view2 = childAt;
                        linearLayoutCompat.o = Math.max(i40, i40 + measuredHeight + ((LinearLayout.LayoutParams) layoutParams2).topMargin + ((LinearLayout.LayoutParams) layoutParams2).bottomMargin);
                        if (z10) {
                            i37 = Math.max(measuredHeight, i37);
                        }
                    }
                    if (i25 >= 0 && i25 == i26 + 1) {
                        linearLayoutCompat.l = linearLayoutCompat.o;
                    }
                    if (i26 < i25 && ((LinearLayout.LayoutParams) layoutParams2).weight > 0.0f) {
                        u2.n("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        return;
                    }
                    if (i27 != 1073741824 && ((LinearLayout.LayoutParams) layoutParams2).width == -1) {
                        z11 = true;
                        z15 = true;
                    } else {
                        z11 = false;
                    }
                    int i41 = ((LinearLayout.LayoutParams) layoutParams2).leftMargin + ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                    int measuredWidth = view2.getMeasuredWidth() + i41;
                    i29 = Math.max(i29, measuredWidth);
                    int measuredState = view2.getMeasuredState();
                    boolean z17 = z11;
                    int combineMeasuredStates = View.combineMeasuredStates(i36, measuredState);
                    if (z16) {
                        i36 = combineMeasuredStates;
                        if (((LinearLayout.LayoutParams) layoutParams2).width == -1) {
                            z12 = true;
                            if (((LinearLayout.LayoutParams) layoutParams2).weight <= 0.0f) {
                                if (!z17) {
                                    i41 = measuredWidth;
                                }
                                i35 = Math.max(i35, i41);
                            } else {
                                if (!z17) {
                                    i41 = measuredWidth;
                                }
                                i34 = Math.max(i34, i41);
                            }
                            z16 = z12;
                            i33 = i26 + 1;
                            i32 = i25;
                            mode = i27;
                            z13 = z10;
                            mode2 = i24;
                            i28 = -2;
                            i30 = 1073741824;
                            i31 = 8;
                        }
                    } else {
                        i36 = combineMeasuredStates;
                    }
                    z12 = false;
                    if (((LinearLayout.LayoutParams) layoutParams2).weight <= 0.0f) {
                    }
                    z16 = z12;
                    i33 = i26 + 1;
                    i32 = i25;
                    mode = i27;
                    z13 = z10;
                    mode2 = i24;
                    i28 = -2;
                    i30 = 1073741824;
                    i31 = 8;
                }
                i24 = mode2;
                i25 = i32;
                z10 = z13;
                i26 = i33;
                i27 = i38;
                i33 = i26 + 1;
                i32 = i25;
                mode = i27;
                z13 = z10;
                mode2 = i24;
                i28 = -2;
                i30 = 1073741824;
                i31 = 8;
            }
            int i42 = mode;
            int i43 = mode2;
            boolean z18 = z13;
            int i44 = i36;
            int i45 = i2;
            if (linearLayoutCompat.o > 0 && linearLayoutCompat.h(virtualChildCount)) {
                linearLayoutCompat.o += linearLayoutCompat.v;
            }
            if (z18 && (i43 == Integer.MIN_VALUE || i43 == 0)) {
                linearLayoutCompat.o = 0;
                for (int i46 = 0; i46 < virtualChildCount; i46++) {
                    View childAt2 = linearLayoutCompat.getChildAt(i46);
                    if (childAt2 == null) {
                        linearLayoutCompat.o = linearLayoutCompat.o;
                    } else if (childAt2.getVisibility() != 8) {
                        LayoutParams layoutParams3 = (LayoutParams) childAt2.getLayoutParams();
                        int i47 = linearLayoutCompat.o;
                        linearLayoutCompat.o = Math.max(i47, i47 + i37 + ((LinearLayout.LayoutParams) layoutParams3).topMargin + ((LinearLayout.LayoutParams) layoutParams3).bottomMargin);
                    }
                }
            }
            int paddingBottom = linearLayoutCompat.getPaddingBottom() + linearLayoutCompat.getPaddingTop() + linearLayoutCompat.o;
            linearLayoutCompat.o = paddingBottom;
            int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingBottom, linearLayoutCompat.getSuggestedMinimumHeight()), i45, 0);
            int i48 = (resolveSizeAndState & 16777215) - linearLayoutCompat.o;
            if (!z14 && (i48 == 0 || f <= 0.0f)) {
                i34 = Math.max(i34, i35);
                if (z18 && i43 != 1073741824) {
                    for (int i49 = 0; i49 < virtualChildCount; i49++) {
                        View childAt3 = linearLayoutCompat.getChildAt(i49);
                        if (childAt3 != null && childAt3.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((LayoutParams) childAt3.getLayoutParams())).weight > 0.0f) {
                            childAt3.measure(View.MeasureSpec.makeMeasureSpec(childAt3.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i37, 1073741824));
                        }
                    }
                }
            } else {
                float f3 = linearLayoutCompat.p;
                if (f3 > 0.0f) {
                    f = f3;
                }
                linearLayoutCompat.o = 0;
                int i50 = i44;
                int i51 = 0;
                while (i51 < virtualChildCount) {
                    View childAt4 = linearLayoutCompat.getChildAt(i51);
                    if (childAt4.getVisibility() == 8) {
                        i18 = i51;
                    } else {
                        LayoutParams layoutParams4 = (LayoutParams) childAt4.getLayoutParams();
                        float f4 = ((LinearLayout.LayoutParams) layoutParams4).weight;
                        if (f4 > 0.0f) {
                            int i52 = (int) ((i48 * f4) / f);
                            f -= f4;
                            i48 -= i52;
                            i18 = i51;
                            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, linearLayoutCompat.getPaddingRight() + linearLayoutCompat.getPaddingLeft() + ((LinearLayout.LayoutParams) layoutParams4).leftMargin + ((LinearLayout.LayoutParams) layoutParams4).rightMargin, ((LinearLayout.LayoutParams) layoutParams4).width);
                            if (((LinearLayout.LayoutParams) layoutParams4).height == 0) {
                                i20 = 1073741824;
                                if (i43 == 1073741824) {
                                    if (i52 <= 0) {
                                        i52 = 0;
                                    }
                                    childAt4.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i52, 1073741824));
                                    i50 = View.combineMeasuredStates(i50, childAt4.getMeasuredState() & (-256));
                                }
                            } else {
                                i20 = 1073741824;
                            }
                            int measuredHeight2 = childAt4.getMeasuredHeight() + i52;
                            if (measuredHeight2 < 0) {
                                measuredHeight2 = 0;
                            }
                            childAt4.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight2, i20));
                            i50 = View.combineMeasuredStates(i50, childAt4.getMeasuredState() & (-256));
                        } else {
                            i18 = i51;
                        }
                        int i53 = ((LinearLayout.LayoutParams) layoutParams4).leftMargin + ((LinearLayout.LayoutParams) layoutParams4).rightMargin;
                        int measuredWidth2 = childAt4.getMeasuredWidth() + i53;
                        i29 = Math.max(i29, measuredWidth2);
                        if (i42 != 1073741824) {
                            i19 = -1;
                            if (((LinearLayout.LayoutParams) layoutParams4).width == -1) {
                                measuredWidth2 = i53;
                            }
                        } else {
                            i19 = -1;
                        }
                        i34 = Math.max(i34, measuredWidth2);
                        if (z16 && ((LinearLayout.LayoutParams) layoutParams4).width == i19) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        int i54 = linearLayoutCompat.o;
                        linearLayoutCompat.o = Math.max(i54, childAt4.getMeasuredHeight() + i54 + ((LinearLayout.LayoutParams) layoutParams4).topMargin + ((LinearLayout.LayoutParams) layoutParams4).bottomMargin);
                        z16 = z9;
                    }
                    i51 = i18 + 1;
                }
                linearLayoutCompat.o = linearLayoutCompat.getPaddingBottom() + linearLayoutCompat.getPaddingTop() + linearLayoutCompat.o;
                i44 = i50;
            }
            if (z16 || i42 == 1073741824) {
                i34 = i29;
            }
            linearLayoutCompat.setMeasuredDimension(View.resolveSizeAndState(Math.max(linearLayoutCompat.getPaddingRight() + linearLayoutCompat.getPaddingLeft() + i34, linearLayoutCompat.getSuggestedMinimumWidth()), i, i44), resolveSizeAndState);
            if (z15) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(linearLayoutCompat.getMeasuredWidth(), 1073741824);
                int i55 = 0;
                while (i55 < virtualChildCount) {
                    View childAt5 = linearLayoutCompat.getChildAt(i55);
                    if (childAt5.getVisibility() != 8) {
                        LayoutParams layoutParams5 = (LayoutParams) childAt5.getLayoutParams();
                        if (((LinearLayout.LayoutParams) layoutParams5).width == -1) {
                            int i56 = ((LinearLayout.LayoutParams) layoutParams5).height;
                            ((LinearLayout.LayoutParams) layoutParams5).height = childAt5.getMeasuredHeight();
                            linearLayoutCompat.measureChildWithMargins(childAt5, makeMeasureSpec, 0, i45, 0);
                            ((LinearLayout.LayoutParams) layoutParams5).height = i56;
                        }
                    }
                    i55++;
                    i45 = i2;
                }
                return;
            }
            return;
        }
        int i57 = i;
        linearLayoutCompat.o = 0;
        int virtualChildCount2 = linearLayoutCompat.getVirtualChildCount();
        int mode3 = View.MeasureSpec.getMode(i57);
        int mode4 = View.MeasureSpec.getMode(i2);
        if (linearLayoutCompat.r == null || linearLayoutCompat.s == null) {
            linearLayoutCompat.r = new int[4];
            linearLayoutCompat.s = new int[4];
        }
        int[] iArr3 = linearLayoutCompat.r;
        int[] iArr4 = linearLayoutCompat.s;
        iArr3[3] = -1;
        char c = 2;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        iArr4[3] = -1;
        iArr4[2] = -1;
        iArr4[1] = -1;
        iArr4[0] = -1;
        boolean z19 = linearLayoutCompat.j;
        boolean z20 = linearLayoutCompat.q;
        if (mode3 == 1073741824) {
            z = true;
        } else {
            z = false;
        }
        float f5 = 0.0f;
        boolean z21 = true;
        int i58 = 0;
        int i59 = 0;
        int i60 = 0;
        int i61 = 0;
        int i62 = 0;
        int i63 = 0;
        boolean z22 = false;
        boolean z23 = false;
        while (i58 < virtualChildCount2) {
            char c2 = c;
            View childAt6 = linearLayoutCompat.getChildAt(i58);
            if (childAt6 == null) {
                linearLayoutCompat.o = linearLayoutCompat.o;
                i13 = i58;
                i17 = i60;
                iArr2 = iArr3;
                iArr = iArr4;
                z4 = z19;
                z5 = z20;
            } else {
                int i64 = i59;
                if (childAt6.getVisibility() == 8) {
                    i57 = i;
                    i13 = i58;
                    i17 = i60;
                    iArr = iArr4;
                    z4 = z19;
                    z5 = z20;
                    i59 = i64;
                    iArr2 = iArr3;
                } else {
                    if (linearLayoutCompat.h(i58)) {
                        linearLayoutCompat.o += linearLayoutCompat.u;
                    }
                    LayoutParams layoutParams6 = (LayoutParams) childAt6.getLayoutParams();
                    float f6 = ((LinearLayout.LayoutParams) layoutParams6).weight;
                    f5 += f6;
                    int i65 = i58;
                    if (mode3 == 1073741824 && ((LinearLayout.LayoutParams) layoutParams6).width == 0 && f6 > 0.0f) {
                        int i66 = linearLayoutCompat.o;
                        int i67 = ((LinearLayout.LayoutParams) layoutParams6).leftMargin;
                        if (z) {
                            linearLayoutCompat.o = i67 + ((LinearLayout.LayoutParams) layoutParams6).rightMargin + i66;
                        } else {
                            linearLayoutCompat.o = Math.max(i66, i66 + i67 + ((LinearLayout.LayoutParams) layoutParams6).rightMargin);
                        }
                        if (z19) {
                            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
                            childAt6.measure(makeMeasureSpec2, makeMeasureSpec2);
                            view = childAt6;
                            z4 = z19;
                            z5 = z20;
                            i14 = i64;
                            i13 = i65;
                            layoutParams = layoutParams6;
                            iArr2 = iArr3;
                            iArr = iArr4;
                            i57 = i;
                            i15 = i60;
                            i12 = i61;
                        } else {
                            view = childAt6;
                            z4 = z19;
                            z5 = z20;
                            z23 = true;
                            i14 = i64;
                            i13 = i65;
                            i16 = 1073741824;
                            layoutParams = layoutParams6;
                            iArr2 = iArr3;
                            iArr = iArr4;
                            i57 = i;
                            i15 = i60;
                            i12 = i61;
                            if (mode4 == i16 && ((LinearLayout.LayoutParams) layoutParams).height == -1) {
                                z6 = true;
                                z22 = true;
                            } else {
                                z6 = false;
                            }
                            int i68 = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                            int measuredHeight3 = view.getMeasuredHeight() + i68;
                            i63 = View.combineMeasuredStates(i63, view.getMeasuredState());
                            if (!z4) {
                                int baseline2 = view.getBaseline();
                                z7 = z6;
                                if (baseline2 != -1) {
                                    int i69 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                                    if (i69 < 0) {
                                        i69 = linearLayoutCompat.n;
                                    }
                                    int i70 = (((i69 & 112) >> 4) & (-2)) >> 1;
                                    iArr2[i70] = Math.max(iArr2[i70], baseline2);
                                    iArr[i70] = Math.max(iArr[i70], measuredHeight3 - baseline2);
                                }
                            } else {
                                z7 = z6;
                            }
                            int max3 = Math.max(i14, measuredHeight3);
                            if (!z21 && ((LinearLayout.LayoutParams) layoutParams).height == -1) {
                                z8 = true;
                            } else {
                                z8 = false;
                            }
                            if (((LinearLayout.LayoutParams) layoutParams).weight <= 0.0f) {
                                if (!z7) {
                                    i68 = measuredHeight3;
                                }
                                i61 = Math.max(i12, i68);
                                max2 = i15;
                            } else {
                                if (!z7) {
                                    i68 = measuredHeight3;
                                }
                                max2 = Math.max(i15, i68);
                                i61 = i12;
                            }
                            int i71 = max2;
                            i59 = max3;
                            i17 = i71;
                            z21 = z8;
                        }
                    } else {
                        if (((LinearLayout.LayoutParams) layoutParams6).width == 0 && f6 > 0.0f) {
                            ((LinearLayout.LayoutParams) layoutParams6).width = -2;
                            i10 = 0;
                        } else {
                            i10 = Integer.MIN_VALUE;
                        }
                        if (f5 == 0.0f) {
                            i11 = linearLayoutCompat.o;
                        } else {
                            i11 = 0;
                        }
                        iArr = iArr4;
                        i12 = i61;
                        i13 = i65;
                        z4 = z19;
                        z5 = z20;
                        int i72 = i10;
                        layoutParams = layoutParams6;
                        i14 = i64;
                        i57 = i;
                        iArr2 = iArr3;
                        i15 = i60;
                        linearLayoutCompat.measureChildWithMargins(childAt6, i57, i11, i2, 0);
                        if (i72 != Integer.MIN_VALUE) {
                            ((LinearLayout.LayoutParams) layoutParams).width = i72;
                        }
                        int measuredWidth3 = childAt6.getMeasuredWidth();
                        int i73 = linearLayoutCompat.o;
                        int i74 = ((LinearLayout.LayoutParams) layoutParams).leftMargin;
                        if (z) {
                            view = childAt6;
                            linearLayoutCompat.o = i74 + measuredWidth3 + ((LinearLayout.LayoutParams) layoutParams).rightMargin + i73;
                        } else {
                            view = childAt6;
                            linearLayoutCompat.o = Math.max(i73, i73 + measuredWidth3 + i74 + ((LinearLayout.LayoutParams) layoutParams).rightMargin);
                        }
                        if (z5) {
                            i62 = Math.max(measuredWidth3, i62);
                        }
                    }
                    i16 = 1073741824;
                    if (mode4 == i16) {
                    }
                    z6 = false;
                    int i682 = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    int measuredHeight32 = view.getMeasuredHeight() + i682;
                    i63 = View.combineMeasuredStates(i63, view.getMeasuredState());
                    if (!z4) {
                    }
                    int max32 = Math.max(i14, measuredHeight32);
                    if (!z21) {
                    }
                    z8 = false;
                    if (((LinearLayout.LayoutParams) layoutParams).weight <= 0.0f) {
                    }
                    int i712 = max2;
                    i59 = max32;
                    i17 = i712;
                    z21 = z8;
                }
            }
            i60 = i17;
            i58 = i13 + 1;
            c = c2;
            iArr3 = iArr2;
            iArr4 = iArr;
            z19 = z4;
            z20 = z5;
        }
        int[] iArr5 = iArr3;
        int[] iArr6 = iArr4;
        char c3 = c;
        boolean z24 = z19;
        boolean z25 = z20;
        int i75 = i59;
        int i76 = i60;
        int i77 = i61;
        if (linearLayoutCompat.o > 0 && linearLayoutCompat.h(virtualChildCount2)) {
            linearLayoutCompat.o += linearLayoutCompat.u;
        }
        int i78 = iArr5[1];
        if (i78 == -1 && iArr5[0] == -1 && iArr5[c3] == -1 && iArr5[3] == -1) {
            max = i75;
        } else {
            max = Math.max(i75, Math.max(iArr6[3], Math.max(iArr6[0], Math.max(iArr6[1], iArr6[c3]))) + Math.max(iArr5[3], Math.max(iArr5[0], Math.max(i78, iArr5[c3]))));
        }
        if (z25 && (mode3 == Integer.MIN_VALUE || mode3 == 0)) {
            linearLayoutCompat.o = 0;
            for (int i79 = 0; i79 < virtualChildCount2; i79++) {
                View childAt7 = linearLayoutCompat.getChildAt(i79);
                if (childAt7 == null) {
                    linearLayoutCompat.o = linearLayoutCompat.o;
                } else if (childAt7.getVisibility() != 8) {
                    LayoutParams layoutParams7 = (LayoutParams) childAt7.getLayoutParams();
                    int i80 = linearLayoutCompat.o;
                    if (z) {
                        linearLayoutCompat.o = ((LinearLayout.LayoutParams) layoutParams7).leftMargin + i62 + ((LinearLayout.LayoutParams) layoutParams7).rightMargin + i80;
                    } else {
                        linearLayoutCompat.o = Math.max(i80, i80 + i62 + ((LinearLayout.LayoutParams) layoutParams7).leftMargin + ((LinearLayout.LayoutParams) layoutParams7).rightMargin);
                    }
                }
            }
        }
        int paddingRight = linearLayoutCompat.getPaddingRight() + linearLayoutCompat.getPaddingLeft() + linearLayoutCompat.o;
        linearLayoutCompat.o = paddingRight;
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingRight, linearLayoutCompat.getSuggestedMinimumWidth()), i57, 0);
        int i81 = (resolveSizeAndState2 & 16777215) - linearLayoutCompat.o;
        if (!z23 && (i81 == 0 || f5 <= 0.0f)) {
            i6 = Math.max(i76, i77);
            if (z25 && mode3 != 1073741824) {
                for (int i82 = 0; i82 < virtualChildCount2; i82++) {
                    View childAt8 = linearLayoutCompat.getChildAt(i82);
                    if (childAt8 != null && childAt8.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((LayoutParams) childAt8.getLayoutParams())).weight > 0.0f) {
                        childAt8.measure(View.MeasureSpec.makeMeasureSpec(i62, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt8.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i3 = resolveSizeAndState2;
            i4 = -16777216;
            i5 = 0;
        } else {
            float f7 = linearLayoutCompat.p;
            if (f7 > 0.0f) {
                f5 = f7;
            }
            iArr5[3] = -1;
            iArr5[c3] = -1;
            iArr5[1] = -1;
            iArr5[0] = -1;
            iArr6[3] = -1;
            iArr6[c3] = -1;
            iArr6[1] = -1;
            iArr6[0] = -1;
            linearLayoutCompat.o = 0;
            max = -1;
            int i83 = 0;
            while (i83 < virtualChildCount2) {
                View childAt9 = linearLayoutCompat.getChildAt(i83);
                if (childAt9 == null || childAt9.getVisibility() == 8) {
                    i7 = resolveSizeAndState2;
                } else {
                    LayoutParams layoutParams8 = (LayoutParams) childAt9.getLayoutParams();
                    float f8 = ((LinearLayout.LayoutParams) layoutParams8).weight;
                    if (f8 > 0.0f) {
                        int i84 = (int) ((i81 * f8) / f5);
                        f5 -= f8;
                        i81 -= i84;
                        i7 = resolveSizeAndState2;
                        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i2, linearLayoutCompat.getPaddingBottom() + linearLayoutCompat.getPaddingTop() + ((LinearLayout.LayoutParams) layoutParams8).topMargin + ((LinearLayout.LayoutParams) layoutParams8).bottomMargin, ((LinearLayout.LayoutParams) layoutParams8).height);
                        if (((LinearLayout.LayoutParams) layoutParams8).width == 0) {
                            i9 = 1073741824;
                            if (mode3 == 1073741824) {
                                if (i84 <= 0) {
                                    i84 = 0;
                                }
                                childAt9.measure(View.MeasureSpec.makeMeasureSpec(i84, 1073741824), childMeasureSpec2);
                                i63 = View.combineMeasuredStates(i63, childAt9.getMeasuredState() & (-16777216));
                            }
                        } else {
                            i9 = 1073741824;
                        }
                        int measuredWidth4 = childAt9.getMeasuredWidth() + i84;
                        if (measuredWidth4 < 0) {
                            measuredWidth4 = 0;
                        }
                        childAt9.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth4, i9), childMeasureSpec2);
                        i63 = View.combineMeasuredStates(i63, childAt9.getMeasuredState() & (-16777216));
                    } else {
                        i7 = resolveSizeAndState2;
                    }
                    int i85 = linearLayoutCompat.o;
                    if (z) {
                        linearLayoutCompat.o = childAt9.getMeasuredWidth() + ((LinearLayout.LayoutParams) layoutParams8).leftMargin + ((LinearLayout.LayoutParams) layoutParams8).rightMargin + i85;
                    } else {
                        linearLayoutCompat.o = Math.max(i85, childAt9.getMeasuredWidth() + i85 + ((LinearLayout.LayoutParams) layoutParams8).leftMargin + ((LinearLayout.LayoutParams) layoutParams8).rightMargin);
                    }
                    if (mode4 != 1073741824 && ((LinearLayout.LayoutParams) layoutParams8).height == -1) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    int i86 = ((LinearLayout.LayoutParams) layoutParams8).topMargin + ((LinearLayout.LayoutParams) layoutParams8).bottomMargin;
                    int measuredHeight4 = childAt9.getMeasuredHeight() + i86;
                    max = Math.max(max, measuredHeight4);
                    if (!z2) {
                        i86 = measuredHeight4;
                    }
                    int max4 = Math.max(i76, i86);
                    if (z21) {
                        i8 = -1;
                        if (((LinearLayout.LayoutParams) layoutParams8).height == -1) {
                            z3 = true;
                            if (!z24 && (baseline = childAt9.getBaseline()) != i8) {
                                int i87 = ((LinearLayout.LayoutParams) layoutParams8).gravity;
                                if (i87 < 0) {
                                    i87 = linearLayoutCompat.n;
                                }
                                int i88 = (((i87 & 112) >> 4) & (-2)) >> 1;
                                iArr5[i88] = Math.max(iArr5[i88], baseline);
                                iArr6[i88] = Math.max(iArr6[i88], measuredHeight4 - baseline);
                            }
                            z21 = z3;
                            i76 = max4;
                        }
                    } else {
                        i8 = -1;
                    }
                    z3 = false;
                    if (!z24) {
                    }
                    z21 = z3;
                    i76 = max4;
                }
                i83++;
                resolveSizeAndState2 = i7;
            }
            i3 = resolveSizeAndState2;
            i4 = -16777216;
            linearLayoutCompat.o = linearLayoutCompat.getPaddingRight() + linearLayoutCompat.getPaddingLeft() + linearLayoutCompat.o;
            int i89 = iArr5[1];
            if (i89 == -1 && iArr5[0] == -1 && iArr5[c3] == -1 && iArr5[3] == -1) {
                i5 = 0;
            } else {
                i5 = 0;
                max = Math.max(max, Math.max(iArr6[3], Math.max(iArr6[0], Math.max(iArr6[1], iArr6[c3]))) + Math.max(iArr5[3], Math.max(iArr5[0], Math.max(i89, iArr5[c3]))));
            }
            i6 = i76;
        }
        if (!z21 && mode4 != 1073741824) {
            max = i6;
        }
        linearLayoutCompat.setMeasuredDimension(i3 | (i63 & i4), View.resolveSizeAndState(Math.max(linearLayoutCompat.getPaddingBottom() + linearLayoutCompat.getPaddingTop() + max, linearLayoutCompat.getSuggestedMinimumHeight()), i2, i63 << 16));
        if (z22) {
            int makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(linearLayoutCompat.getMeasuredHeight(), 1073741824);
            int i90 = i5;
            while (i90 < virtualChildCount2) {
                View childAt10 = linearLayoutCompat.getChildAt(i90);
                if (childAt10.getVisibility() != 8) {
                    LayoutParams layoutParams9 = (LayoutParams) childAt10.getLayoutParams();
                    if (((LinearLayout.LayoutParams) layoutParams9).height == -1) {
                        int i91 = ((LinearLayout.LayoutParams) layoutParams9).width;
                        ((LinearLayout.LayoutParams) layoutParams9).width = childAt10.getMeasuredWidth();
                        linearLayoutCompat.measureChildWithMargins(childAt10, i57, 0, makeMeasureSpec3, 0);
                        ((LinearLayout.LayoutParams) layoutParams9).width = i91;
                    }
                }
                i90++;
                linearLayoutCompat = this;
                i57 = i;
            }
        }
    }

    public void setBaselineAligned(boolean z) {
        this.j = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.k = i;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.t) {
            return;
        }
        this.t = drawable;
        boolean z = false;
        if (drawable != null) {
            this.u = drawable.getIntrinsicWidth();
            this.v = drawable.getIntrinsicHeight();
        } else {
            this.u = 0;
            this.v = 0;
        }
        if (drawable == null) {
            z = true;
        }
        setWillNotDraw(z);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.x = i;
    }

    public void setGravity(int i) {
        if (this.n != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.n = i;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.n;
        if ((8388615 & i3) != i2) {
            this.n = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.q = z;
    }

    public void setOrientation(int i) {
        if (this.m != i) {
            this.m = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.w) {
            requestLayout();
        }
        this.w = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.n;
        if ((i3 & 112) != i2) {
            this.n = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.p = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
