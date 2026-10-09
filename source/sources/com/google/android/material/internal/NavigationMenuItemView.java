package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView$ItemView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.lang.reflect.Field;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class NavigationMenuItemView extends ForegroundLinearLayout implements MenuView$ItemView {
    public static final int[] O = {R.attr.state_checked};
    public int E;
    public boolean F;
    public boolean G;
    public final CheckedTextView H;
    public FrameLayout I;
    public MenuItemImpl J;
    public ColorStateList K;
    public boolean L;
    public Drawable M;
    public final AccessibilityDelegateCompat N;

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        AccessibilityDelegateCompat accessibilityDelegateCompat = new AccessibilityDelegateCompat() { // from class: com.google.android.material.internal.NavigationMenuItemView.1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.a;
                this.j.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.setCheckable(NavigationMenuItemView.this.G);
            }
        };
        this.N = accessibilityDelegateCompat;
        setOrientation(0);
        LayoutInflater.from(context).inflate(net.blip.android.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(net.blip.android.R.dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(net.blip.android.R.id.design_menu_item_text);
        this.H = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        ViewCompat.n(checkedTextView, accessibilityDelegateCompat);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.I == null) {
                this.I = (FrameLayout) ((ViewStub) findViewById(net.blip.android.R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.I.removeAllViews();
            this.I.addView(view);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView$ItemView
    public final void c(MenuItemImpl menuItemImpl) {
        int i;
        StateListDrawable stateListDrawable;
        this.J = menuItemImpl;
        int i2 = menuItemImpl.a;
        if (i2 > 0) {
            setId(i2);
        }
        if (menuItemImpl.isVisible()) {
            i = 0;
        } else {
            i = 8;
        }
        setVisibility(i);
        View view = null;
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(net.blip.android.R.attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(O, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            Field field = ViewCompat.a;
            setBackground(stateListDrawable);
        }
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setTitle(menuItemImpl.e);
        setIcon(menuItemImpl.getIcon());
        View view2 = menuItemImpl.z;
        if (view2 == null) {
            view2 = null;
        }
        setActionView(view2);
        setContentDescription(menuItemImpl.q);
        setTooltipText(menuItemImpl.r);
        MenuItemImpl menuItemImpl2 = this.J;
        CharSequence charSequence = menuItemImpl2.e;
        CheckedTextView checkedTextView = this.H;
        if (charSequence == null && menuItemImpl2.getIcon() == null) {
            View view3 = this.J.z;
            if (view3 != null) {
                view = view3;
            }
            if (view != null) {
                checkedTextView.setVisibility(8);
                FrameLayout frameLayout = this.I;
                if (frameLayout != null) {
                    LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
                    ((LinearLayout.LayoutParams) layoutParams).width = -1;
                    this.I.setLayoutParams(layoutParams);
                    return;
                }
                return;
            }
        }
        checkedTextView.setVisibility(0);
        FrameLayout frameLayout2 = this.I;
        if (frameLayout2 != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) layoutParams2).width = -2;
            this.I.setLayoutParams(layoutParams2);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView$ItemView
    public MenuItemImpl getItemData() {
        return this.J;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        MenuItemImpl menuItemImpl = this.J;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.J.isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, O);
        }
        return onCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.G != z) {
            this.G = z;
            this.N.h(this.H, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.H.setChecked(z);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, 0, i, 0);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.L) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = drawable.mutate();
                drawable.setTintList(this.K);
            }
            int i = this.E;
            drawable.setBounds(0, 0, i, i);
        } else if (this.F) {
            if (this.M == null) {
                Resources resources = getResources();
                Resources.Theme theme = getContext().getTheme();
                ThreadLocal threadLocal = ResourcesCompat.a;
                Drawable drawable2 = resources.getDrawable(net.blip.android.R.drawable.navigation_empty_icon, theme);
                this.M = drawable2;
                if (drawable2 != null) {
                    int i2 = this.E;
                    drawable2.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.M;
        }
        this.H.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.H.setCompoundDrawablePadding(i);
    }

    public void setIconSize(int i) {
        this.E = i;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        boolean z;
        this.K = colorStateList;
        if (colorStateList != null) {
            z = true;
        } else {
            z = false;
        }
        this.L = z;
        MenuItemImpl menuItemImpl = this.J;
        if (menuItemImpl != null) {
            setIcon(menuItemImpl.getIcon());
        }
    }

    public void setMaxLines(int i) {
        this.H.setMaxLines(i);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.F = z;
    }

    public void setTextAppearance(int i) {
        this.H.setTextAppearance(i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.H.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.H.setText(charSequence);
    }
}
