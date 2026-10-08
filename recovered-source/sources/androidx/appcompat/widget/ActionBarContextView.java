package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import defpackage.u2;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ActionBarContextView extends AbsActionBarView {
    public CharSequence m;
    public CharSequence n;
    public View o;
    public LinearLayout p;
    public TextView q;
    public TextView r;
    public final int s;
    public final int t;
    public boolean u;
    public int v;
    public int w;

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.actionModeStyle);
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) && typedValue.resourceId != 0) {
            new ContextThemeWrapper(context, typedValue.resourceId);
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.d, R.attr.actionModeStyle, 0);
        TintTypedArray tintTypedArray = new TintTypedArray(context, obtainStyledAttributes);
        setBackground(tintTypedArray.b(0));
        this.s = obtainStyledAttributes.getResourceId(5, 0);
        this.t = obtainStyledAttributes.getResourceId(4, 0);
        this.j = obtainStyledAttributes.getLayoutDimension(3, 0);
        obtainStyledAttributes.getResourceId(2, R.layout.abc_action_mode_close_item_material);
        tintTypedArray.e();
        this.v = getPaddingLeft();
        getPaddingTop();
        this.w = getPaddingRight();
        getPaddingBottom();
    }

    public final void b() {
        int i;
        if (this.p == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.p = linearLayout;
            this.q = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.r = (TextView) this.p.findViewById(R.id.action_bar_subtitle);
            int i2 = this.s;
            if (i2 != 0) {
                this.q.setTextAppearance(getContext(), i2);
            }
            int i3 = this.t;
            if (i3 != 0) {
                this.r.setTextAppearance(getContext(), i3);
            }
        }
        this.q.setText(this.m);
        this.r.setText(this.n);
        boolean isEmpty = TextUtils.isEmpty(this.m);
        boolean isEmpty2 = TextUtils.isEmpty(this.n);
        TextView textView = this.r;
        int i4 = 8;
        if (!isEmpty2) {
            i = 0;
        } else {
            i = 8;
        }
        textView.setVisibility(i);
        LinearLayout linearLayout2 = this.p;
        if (!isEmpty || !isEmpty2) {
            i4 = 0;
        }
        linearLayout2.setVisibility(i4);
        if (this.p.getParent() == null) {
            addView(this.p);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getAnimatedVisibility() {
        return getVisibility();
    }

    public int getContentHeight() {
        return this.j;
    }

    public CharSequence getSubtitle() {
        return this.n;
    }

    public CharSequence getTitle() {
        return this.m;
    }

    @Override // androidx.appcompat.widget.AbsActionBarView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.d, R.attr.actionModeStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(3, 0));
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft;
        boolean z2 = true;
        if (getLayoutDirection() != 1) {
            z2 = false;
        }
        if (z2) {
            paddingLeft = (i3 - i) - getPaddingRight();
        } else {
            paddingLeft = getPaddingLeft();
        }
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        LinearLayout linearLayout = this.p;
        if (linearLayout != null && this.o == null && linearLayout.getVisibility() != 8) {
            paddingLeft += AbsActionBarView.a(this.p, paddingLeft, paddingTop, paddingTop2, z2);
        }
        View view = this.o;
        if (view != null) {
            AbsActionBarView.a(view, paddingLeft, paddingTop, paddingTop2, z2);
        }
        if (z2) {
            getPaddingLeft();
        } else {
            getPaddingRight();
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        int i5 = 1073741824;
        if (View.MeasureSpec.getMode(i) == 1073741824) {
            if (View.MeasureSpec.getMode(i2) != 0) {
                int size = View.MeasureSpec.getSize(i);
                int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
                int paddingBottom = getPaddingBottom() + getPaddingTop();
                int i6 = this.j;
                if (i6 <= 0) {
                    i6 = View.MeasureSpec.getSize(i2);
                }
                int i7 = i6 - paddingBottom;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE);
                LinearLayout linearLayout = this.p;
                if (linearLayout != null && this.o == null) {
                    if (this.u) {
                        this.p.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                        int measuredWidth = this.p.getMeasuredWidth();
                        if (measuredWidth <= paddingLeft) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            paddingLeft -= measuredWidth;
                        }
                        LinearLayout linearLayout2 = this.p;
                        if (z) {
                            i4 = 0;
                        } else {
                            i4 = 8;
                        }
                        linearLayout2.setVisibility(i4);
                    } else {
                        linearLayout.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, Integer.MIN_VALUE), makeMeasureSpec);
                        paddingLeft = Math.max(0, paddingLeft - linearLayout.getMeasuredWidth());
                    }
                }
                View view = this.o;
                if (view != null) {
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    int i8 = layoutParams.width;
                    if (i8 != -2) {
                        i3 = 1073741824;
                    } else {
                        i3 = Integer.MIN_VALUE;
                    }
                    if (i8 >= 0) {
                        paddingLeft = Math.min(i8, paddingLeft);
                    }
                    int i9 = layoutParams.height;
                    if (i9 == -2) {
                        i5 = Integer.MIN_VALUE;
                    }
                    if (i9 >= 0) {
                        i7 = Math.min(i9, i7);
                    }
                    this.o.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i3), View.MeasureSpec.makeMeasureSpec(i7, i5));
                }
                if (this.j <= 0) {
                    int childCount = getChildCount();
                    int i10 = 0;
                    for (int i11 = 0; i11 < childCount; i11++) {
                        int measuredHeight = getChildAt(i11).getMeasuredHeight() + paddingBottom;
                        if (measuredHeight > i10) {
                            i10 = measuredHeight;
                        }
                    }
                    setMeasuredDimension(size, i10);
                    return;
                }
                setMeasuredDimension(size, i6);
                return;
            }
            u2.l(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
            return;
        }
        u2.l(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public void setContentHeight(int i) {
        this.j = i;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.o;
        if (view2 != null) {
            removeView(view2);
        }
        this.o = view;
        if (view != null && (linearLayout = this.p) != null) {
            removeView(linearLayout);
            this.p = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        this.v = i;
        this.w = i3;
        super.setPadding(i, i2, i3, i4);
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i, int i2, int i3, int i4) {
        if (getLayoutDirection() != 1) {
            this.v = i;
            this.w = i3;
        } else {
            this.v = i3;
            this.w = i;
        }
        super.setPadding(this.v, i2, this.w, i4);
    }

    public void setSubtitle(CharSequence charSequence) {
        this.n = charSequence;
        b();
    }

    public void setTitle(CharSequence charSequence) {
        this.m = charSequence;
        b();
        ViewCompat.o(this, charSequence);
    }

    public void setTitleOptional(boolean z) {
        if (z != this.u) {
            requestLayout();
        }
        this.u = z;
    }

    @Override // androidx.appcompat.widget.AbsActionBarView, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
