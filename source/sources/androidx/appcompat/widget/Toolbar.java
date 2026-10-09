package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.R$styleable;
import androidx.appcompat.app.ActionBar$LayoutParams;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.MenuProvider;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import defpackage.e;
import defpackage.v2;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    public int A;
    public int B;
    public RtlSpacingHelper C;
    public int D;
    public int E;
    public final int F;
    public CharSequence G;
    public CharSequence H;
    public ColorStateList I;
    public ColorStateList J;
    public boolean K;
    public boolean L;
    public final ArrayList M;
    public final ArrayList N;
    public final int[] O;
    public final MenuHostHelper P;
    public ArrayList Q;
    public final ActionMenuView.OnMenuItemClickListener R;
    public ToolbarWidgetWrapper S;
    public ExpandedActionViewMenuPresenter T;
    public boolean U;
    public v2 V;
    public OnBackInvokedDispatcher W;
    public boolean a0;
    public final Runnable b0;
    public ActionMenuView j;
    public AppCompatTextView k;
    public AppCompatTextView l;
    public AppCompatImageButton m;
    public AppCompatImageView n;
    public final Drawable o;
    public final CharSequence p;
    public AppCompatImageButton q;
    public View r;
    public Context s;
    public int t;
    public int u;
    public int v;
    public final int w;
    public final int x;
    public int y;
    public int z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.appcompat.widget.Toolbar$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements ActionMenuView.OnMenuItemClickListener {
        public AnonymousClass1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.appcompat.widget.Toolbar$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements MenuBuilder.Callback {
        public AnonymousClass3() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public final boolean a(MenuItem menuItem) {
            return false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api33Impl {
        public static OnBackInvokedDispatcher a(Toolbar toolbar) {
            return toolbar.findOnBackInvokedDispatcher();
        }

        public static void b(Object obj, v2 v2Var) {
            ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(1000000, v2Var);
        }

        public static void c(Object obj, v2 v2Var) {
            ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback(v2Var);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class LayoutParams extends ActionBar$LayoutParams {
        public int b;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface OnMenuItemClickListener {
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, R.attr.toolbarStyle);
        this.F = 8388627;
        this.M = new ArrayList();
        this.N = new ArrayList();
        this.O = new int[2];
        this.P = new MenuHostHelper(new e(18, this));
        this.Q = new ArrayList();
        this.R = new AnonymousClass1();
        this.b0 = new Runnable() { // from class: androidx.appcompat.widget.Toolbar.2
            @Override // java.lang.Runnable
            public final void run() {
                ActionMenuPresenter actionMenuPresenter;
                ActionMenuView actionMenuView = Toolbar.this.j;
                if (actionMenuView != null && (actionMenuPresenter = actionMenuView.B) != null) {
                    actionMenuPresenter.i();
                }
            }
        };
        Context context2 = getContext();
        int[] iArr = R$styleable.s;
        TintTypedArray d = TintTypedArray.d(context2, attributeSet, iArr, R.attr.toolbarStyle);
        ViewCompat.m(this, context, iArr, attributeSet, d.b, R.attr.toolbarStyle);
        TypedArray typedArray = d.b;
        this.u = typedArray.getResourceId(28, 0);
        this.v = typedArray.getResourceId(19, 0);
        this.F = typedArray.getInteger(0, 8388627);
        this.w = typedArray.getInteger(2, 48);
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(22, 0);
        dimensionPixelOffset = typedArray.hasValue(27) ? typedArray.getDimensionPixelOffset(27, dimensionPixelOffset) : dimensionPixelOffset;
        this.B = dimensionPixelOffset;
        this.A = dimensionPixelOffset;
        this.z = dimensionPixelOffset;
        this.y = dimensionPixelOffset;
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(25, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.y = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = typedArray.getDimensionPixelOffset(24, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.z = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = typedArray.getDimensionPixelOffset(26, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.A = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = typedArray.getDimensionPixelOffset(23, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.B = dimensionPixelOffset5;
        }
        this.x = typedArray.getDimensionPixelSize(13, -1);
        int dimensionPixelOffset6 = typedArray.getDimensionPixelOffset(9, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = typedArray.getDimensionPixelOffset(5, Integer.MIN_VALUE);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(7, 0);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(8, 0);
        d();
        RtlSpacingHelper rtlSpacingHelper = this.C;
        rtlSpacingHelper.h = false;
        if (dimensionPixelSize != Integer.MIN_VALUE) {
            rtlSpacingHelper.e = dimensionPixelSize;
            rtlSpacingHelper.a = dimensionPixelSize;
        }
        if (dimensionPixelSize2 != Integer.MIN_VALUE) {
            rtlSpacingHelper.f = dimensionPixelSize2;
            rtlSpacingHelper.b = dimensionPixelSize2;
        }
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            rtlSpacingHelper.a(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.D = typedArray.getDimensionPixelOffset(10, Integer.MIN_VALUE);
        this.E = typedArray.getDimensionPixelOffset(6, Integer.MIN_VALUE);
        this.o = d.b(4);
        this.p = typedArray.getText(3);
        CharSequence text = typedArray.getText(21);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = typedArray.getText(18);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.s = getContext();
        setPopupTheme(typedArray.getResourceId(17, 0));
        Drawable b = d.b(16);
        if (b != null) {
            setNavigationIcon(b);
        }
        CharSequence text3 = typedArray.getText(15);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable b2 = d.b(11);
        if (b2 != null) {
            setLogo(b2);
        }
        CharSequence text4 = typedArray.getText(12);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (typedArray.hasValue(29)) {
            setTitleTextColor(d.a(29));
        }
        if (typedArray.hasValue(20)) {
            setSubtitleTextColor(d.a(20));
        }
        if (typedArray.hasValue(14)) {
            getMenuInflater().inflate(typedArray.getResourceId(14, 0), getMenu());
        }
        d.e();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.appcompat.widget.Toolbar$LayoutParams, androidx.appcompat.app.ActionBar$LayoutParams, android.view.ViewGroup$MarginLayoutParams] */
    public static LayoutParams g() {
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        marginLayoutParams.b = 0;
        marginLayoutParams.a = 8388627;
        return marginLayoutParams;
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i = 0; i < menu.size(); i++) {
            arrayList.add(menu.getItem(i));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new SupportMenuInflater(getContext());
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.appcompat.widget.Toolbar$LayoutParams, androidx.appcompat.app.ActionBar$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.appcompat.widget.Toolbar$LayoutParams, androidx.appcompat.app.ActionBar$LayoutParams, android.view.ViewGroup$MarginLayoutParams] */
    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.appcompat.widget.Toolbar$LayoutParams, androidx.appcompat.app.ActionBar$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.appcompat.widget.Toolbar$LayoutParams, androidx.appcompat.app.ActionBar$LayoutParams] */
    public static LayoutParams h(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            ?? actionBar$LayoutParams = new ActionBar$LayoutParams((ActionBar$LayoutParams) layoutParams2);
            actionBar$LayoutParams.b = 0;
            actionBar$LayoutParams.b = layoutParams2.b;
            return actionBar$LayoutParams;
        }
        if (layoutParams instanceof ActionBar$LayoutParams) {
            ?? actionBar$LayoutParams2 = new ActionBar$LayoutParams((ActionBar$LayoutParams) layoutParams);
            actionBar$LayoutParams2.b = 0;
            return actionBar$LayoutParams2;
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            ?? actionBar$LayoutParams3 = new ActionBar$LayoutParams(marginLayoutParams);
            actionBar$LayoutParams3.b = 0;
            ((ViewGroup.MarginLayoutParams) actionBar$LayoutParams3).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) actionBar$LayoutParams3).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) actionBar$LayoutParams3).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) actionBar$LayoutParams3).bottomMargin = marginLayoutParams.bottomMargin;
            return actionBar$LayoutParams3;
        }
        ?? actionBar$LayoutParams4 = new ActionBar$LayoutParams(layoutParams);
        actionBar$LayoutParams4.b = 0;
        return actionBar$LayoutParams4;
    }

    public static int j(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart();
    }

    public static int k(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final void a(int i, ArrayList arrayList) {
        boolean z;
        if (getLayoutDirection() == 1) {
            z = true;
        } else {
            z = false;
        }
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection());
        arrayList.clear();
        if (z) {
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                View childAt = getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.b == 0 && r(childAt)) {
                    int i3 = layoutParams.a;
                    int layoutDirection = getLayoutDirection();
                    int absoluteGravity2 = Gravity.getAbsoluteGravity(i3, layoutDirection) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = layoutDirection == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt2 = getChildAt(i4);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.b == 0 && r(childAt2)) {
                int i5 = layoutParams2.a;
                int layoutDirection2 = getLayoutDirection();
                int absoluteGravity3 = Gravity.getAbsoluteGravity(i5, layoutDirection2) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = layoutDirection2 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    public final void b(View view, boolean z) {
        LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams = g();
        } else if (!checkLayoutParams(layoutParams2)) {
            layoutParams = h(layoutParams2);
        } else {
            layoutParams = (LayoutParams) layoutParams2;
        }
        layoutParams.b = 1;
        if (z && this.r != null) {
            view.setLayoutParams(layoutParams);
            this.N.add(view);
        } else {
            addView(view, layoutParams);
        }
    }

    public final void c() {
        if (this.q == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.q = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.o);
            this.q.setContentDescription(this.p);
            LayoutParams g = g();
            g.a = (this.w & 112) | 8388611;
            g.b = 2;
            this.q.setLayoutParams(g);
            this.q.setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.Toolbar.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MenuItemImpl menuItemImpl;
                    ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = Toolbar.this.T;
                    if (expandedActionViewMenuPresenter == null) {
                        menuItemImpl = null;
                    } else {
                        menuItemImpl = expandedActionViewMenuPresenter.k;
                    }
                    if (menuItemImpl != null) {
                        menuItemImpl.collapseActionView();
                    }
                }
            });
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.widget.RtlSpacingHelper, java.lang.Object] */
    public final void d() {
        if (this.C == null) {
            ?? obj = new Object();
            obj.a = 0;
            obj.b = 0;
            obj.c = Integer.MIN_VALUE;
            obj.d = Integer.MIN_VALUE;
            obj.e = 0;
            obj.f = 0;
            obj.g = false;
            obj.h = false;
            this.C = obj;
        }
    }

    public final void e() {
        if (this.j == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.j = actionMenuView;
            actionMenuView.setPopupTheme(this.t);
            this.j.setOnMenuItemClickListener(this.R);
            ActionMenuView actionMenuView2 = this.j;
            AnonymousClass3 anonymousClass3 = new AnonymousClass3();
            actionMenuView2.getClass();
            actionMenuView2.C = anonymousClass3;
            LayoutParams g = g();
            g.a = (this.w & 112) | 8388613;
            this.j.setLayoutParams(g);
            b(this.j, false);
        }
        ActionMenuView actionMenuView3 = this.j;
        if (actionMenuView3.y == null) {
            MenuBuilder menuBuilder = (MenuBuilder) actionMenuView3.getMenu();
            if (this.T == null) {
                this.T = new ExpandedActionViewMenuPresenter();
            }
            this.j.setExpandedActionViewsExclusive(true);
            menuBuilder.b(this.T, this.s);
            s();
        }
    }

    public final void f() {
        if (this.m == null) {
            this.m = new AppCompatImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            LayoutParams g = g();
            g.a = (this.w & 112) | 8388611;
            this.m.setLayoutParams(g);
        }
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return g();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.appcompat.widget.Toolbar$LayoutParams, androidx.appcompat.app.ActionBar$LayoutParams, android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(context, attributeSet);
        marginLayoutParams.a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.b);
        marginLayoutParams.a = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
        marginLayoutParams.b = 0;
        return marginLayoutParams;
    }

    public CharSequence getCollapseContentDescription() {
        AppCompatImageButton appCompatImageButton = this.q;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        AppCompatImageButton appCompatImageButton = this.q;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        RtlSpacingHelper rtlSpacingHelper = this.C;
        if (rtlSpacingHelper != null) {
            if (rtlSpacingHelper.g) {
                return rtlSpacingHelper.a;
            }
            return rtlSpacingHelper.b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.E;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        return getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        RtlSpacingHelper rtlSpacingHelper = this.C;
        if (rtlSpacingHelper != null) {
            return rtlSpacingHelper.a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        RtlSpacingHelper rtlSpacingHelper = this.C;
        if (rtlSpacingHelper != null) {
            return rtlSpacingHelper.b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        RtlSpacingHelper rtlSpacingHelper = this.C;
        if (rtlSpacingHelper != null) {
            if (rtlSpacingHelper.g) {
                return rtlSpacingHelper.b;
            }
            return rtlSpacingHelper.a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.D;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        return getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        MenuBuilder menuBuilder;
        ActionMenuView actionMenuView = this.j;
        if (actionMenuView != null && (menuBuilder = actionMenuView.y) != null && menuBuilder.hasVisibleItems()) {
            return Math.max(getContentInsetEnd(), Math.max(this.E, 0));
        }
        return getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        if (getLayoutDirection() == 1) {
            return getCurrentContentInsetEnd();
        }
        return getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        if (getLayoutDirection() == 1) {
            return getCurrentContentInsetStart();
        }
        return getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        if (getNavigationIcon() != null) {
            return Math.max(getContentInsetStart(), Math.max(this.D, 0));
        }
        return getContentInsetStart();
    }

    public Drawable getLogo() {
        AppCompatImageView appCompatImageView = this.n;
        if (appCompatImageView != null) {
            return appCompatImageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        AppCompatImageView appCompatImageView = this.n;
        if (appCompatImageView != null) {
            return appCompatImageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.j.getMenu();
    }

    public View getNavButtonView() {
        return this.m;
    }

    public CharSequence getNavigationContentDescription() {
        AppCompatImageButton appCompatImageButton = this.m;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        AppCompatImageButton appCompatImageButton = this.m;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getDrawable();
        }
        return null;
    }

    public ActionMenuPresenter getOuterActionMenuPresenter() {
        return null;
    }

    public Drawable getOverflowIcon() {
        e();
        return this.j.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.s;
    }

    public int getPopupTheme() {
        return this.t;
    }

    public CharSequence getSubtitle() {
        return this.H;
    }

    public final TextView getSubtitleTextView() {
        return this.l;
    }

    public CharSequence getTitle() {
        return this.G;
    }

    public int getTitleMarginBottom() {
        return this.B;
    }

    public int getTitleMarginEnd() {
        return this.z;
    }

    public int getTitleMarginStart() {
        return this.y;
    }

    public int getTitleMarginTop() {
        return this.A;
    }

    public final TextView getTitleTextView() {
        return this.k;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, androidx.appcompat.widget.ToolbarWidgetWrapper] */
    /* JADX WARN: Type inference failed for: r1v4, types: [android.view.View$OnClickListener, java.lang.Object] */
    public DecorToolbar getWrapper() {
        boolean z;
        Drawable drawable;
        if (this.S == null) {
            ?? obj = new Object();
            obj.k = 0;
            obj.a = this;
            obj.h = getTitle();
            obj.i = getSubtitle();
            if (obj.h != null) {
                z = true;
            } else {
                z = false;
            }
            obj.g = z;
            obj.f = getNavigationIcon();
            String str = null;
            TintTypedArray d = TintTypedArray.d(getContext(), null, R$styleable.a, R.attr.actionBarStyle);
            TypedArray typedArray = d.b;
            obj.l = d.b(15);
            CharSequence text = typedArray.getText(27);
            if (!TextUtils.isEmpty(text)) {
                obj.g = true;
                obj.h = text;
                if ((obj.b & 8) != 0) {
                    setTitle(text);
                    if (obj.g) {
                        ViewCompat.o(getRootView(), text);
                    }
                }
            }
            CharSequence text2 = typedArray.getText(25);
            if (!TextUtils.isEmpty(text2)) {
                obj.i = text2;
                if ((obj.b & 8) != 0) {
                    setSubtitle(text2);
                }
            }
            Drawable b = d.b(20);
            if (b != null) {
                obj.e = b;
                obj.c();
            }
            Drawable b2 = d.b(17);
            if (b2 != null) {
                obj.d = b2;
                obj.c();
            }
            if (obj.f == null && (drawable = obj.l) != null) {
                obj.f = drawable;
                if ((obj.b & 4) != 0) {
                    setNavigationIcon(drawable);
                } else {
                    setNavigationIcon((Drawable) null);
                }
            }
            obj.a(typedArray.getInt(10, 0));
            int resourceId = typedArray.getResourceId(9, 0);
            if (resourceId != 0) {
                View inflate = LayoutInflater.from(getContext()).inflate(resourceId, (ViewGroup) this, false);
                View view = obj.c;
                if (view != null && (obj.b & 16) != 0) {
                    removeView(view);
                }
                obj.c = inflate;
                if (inflate != null && (obj.b & 16) != 0) {
                    addView(inflate);
                }
                obj.a(obj.b | 16);
            }
            int layoutDimension = typedArray.getLayoutDimension(13, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                layoutParams.height = layoutDimension;
                setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = typedArray.getDimensionPixelOffset(7, -1);
            int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(3, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                int max = Math.max(dimensionPixelOffset, 0);
                int max2 = Math.max(dimensionPixelOffset2, 0);
                d();
                this.C.a(max, max2);
            }
            int resourceId2 = typedArray.getResourceId(28, 0);
            if (resourceId2 != 0) {
                Context context = getContext();
                this.u = resourceId2;
                AppCompatTextView appCompatTextView = this.k;
                if (appCompatTextView != null) {
                    appCompatTextView.setTextAppearance(context, resourceId2);
                }
            }
            int resourceId3 = typedArray.getResourceId(26, 0);
            if (resourceId3 != 0) {
                Context context2 = getContext();
                this.v = resourceId3;
                AppCompatTextView appCompatTextView2 = this.l;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTextAppearance(context2, resourceId3);
                }
            }
            int resourceId4 = typedArray.getResourceId(22, 0);
            if (resourceId4 != 0) {
                setPopupTheme(resourceId4);
            }
            d.e();
            if (R.string.abc_action_bar_up_description != obj.k) {
                obj.k = R.string.abc_action_bar_up_description;
                if (TextUtils.isEmpty(getNavigationContentDescription())) {
                    int i = obj.k;
                    if (i != 0) {
                        str = getContext().getString(i);
                    }
                    obj.j = str;
                    obj.b();
                }
            }
            obj.j = getNavigationContentDescription();
            ?? obj2 = new Object();
            obj.a.getContext();
            setNavigationOnClickListener(obj2);
            this.S = obj;
        }
        return this.S;
    }

    public final int i(View view, int i) {
        int i2;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        if (i > 0) {
            i2 = (measuredHeight - i) / 2;
        } else {
            i2 = 0;
        }
        int i3 = layoutParams.a & 112;
        if (i3 != 16 && i3 != 48 && i3 != 80) {
            i3 = this.F & 112;
        }
        if (i3 != 48) {
            if (i3 != 80) {
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
                int i5 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                if (i4 < i5) {
                    i4 = i5;
                } else {
                    int i6 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
                    int i7 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    if (i6 < i7) {
                        i4 = Math.max(0, i4 - (i7 - i6));
                    }
                }
                return paddingTop + i4;
            }
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - i2;
        }
        return getPaddingTop() - i2;
    }

    public final void l() {
        Iterator it = this.Q.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(((MenuItem) it.next()).getItemId());
        }
        Menu menu = getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        MenuInflater menuInflater = getMenuInflater();
        Iterator it2 = this.P.a.iterator();
        while (it2.hasNext()) {
            ((MenuProvider) it2.next()).c(menu, menuInflater);
        }
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.Q = currentMenuItems2;
    }

    public final boolean m(View view) {
        if (view.getParent() != this && !this.N.contains(view)) {
            return false;
        }
        return true;
    }

    public final int n(View view, int i, int i2, int[] iArr) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - iArr[0];
        int max = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int i4 = i(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, i4, max + measuredWidth, view.getMeasuredHeight() + i4);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + max;
    }

    public final int o(View view, int i, int i2, int[] iArr) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int i4 = i(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, i4, max, view.getMeasuredHeight() + i4);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        s();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.b0);
        s();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.L = false;
        }
        if (!this.L) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.L = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.L = false;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0285 A[LOOP:0: B:44:0x0283->B:45:0x0285, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x029d A[LOOP:1: B:48:0x029b->B:49:0x029d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x02bd A[LOOP:2: B:52:0x02bb->B:53:0x02bd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0310 A[LOOP:3: B:61:0x030e->B:62:0x0310, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x020e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        int i5;
        int i6;
        int i7;
        int max;
        boolean r;
        boolean r2;
        boolean z3;
        int i8;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        boolean z4;
        int i9;
        int paddingTop;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int size;
        int i16;
        int i17;
        int size2;
        int i18;
        int size3;
        int i19;
        int i20;
        int i21;
        int size4;
        if (getLayoutDirection() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i22 = width - paddingRight;
        int[] iArr = this.O;
        iArr[1] = 0;
        iArr[0] = 0;
        Field field = ViewCompat.a;
        int minimumHeight = getMinimumHeight();
        if (minimumHeight >= 0) {
            i5 = Math.min(minimumHeight, i4 - i2);
        } else {
            i5 = 0;
        }
        if (r(this.m)) {
            AppCompatImageButton appCompatImageButton = this.m;
            if (z2) {
                i7 = o(appCompatImageButton, i22, i5, iArr);
                i6 = paddingLeft;
                if (r(this.q)) {
                    AppCompatImageButton appCompatImageButton2 = this.q;
                    if (z2) {
                        i7 = o(appCompatImageButton2, i7, i5, iArr);
                    } else {
                        i6 = n(appCompatImageButton2, i6, i5, iArr);
                    }
                }
                if (r(this.j)) {
                    ActionMenuView actionMenuView = this.j;
                    if (z2) {
                        i6 = n(actionMenuView, i6, i5, iArr);
                    } else {
                        i7 = o(actionMenuView, i7, i5, iArr);
                    }
                }
                int currentContentInsetLeft = getCurrentContentInsetLeft();
                int currentContentInsetRight = getCurrentContentInsetRight();
                iArr[0] = Math.max(0, currentContentInsetLeft - i6);
                iArr[1] = Math.max(0, currentContentInsetRight - (i22 - i7));
                max = Math.max(i6, currentContentInsetLeft);
                int min = Math.min(i7, i22 - currentContentInsetRight);
                if (r(this.r)) {
                    View view = this.r;
                    if (z2) {
                        min = o(view, min, i5, iArr);
                    } else {
                        max = n(view, max, i5, iArr);
                    }
                }
                if (r(this.n)) {
                    AppCompatImageView appCompatImageView = this.n;
                    if (z2) {
                        min = o(appCompatImageView, min, i5, iArr);
                    } else {
                        max = n(appCompatImageView, max, i5, iArr);
                    }
                }
                r = r(this.k);
                r2 = r(this.l);
                if (!r) {
                    LayoutParams layoutParams = (LayoutParams) this.k.getLayoutParams();
                    z3 = z2;
                    i8 = this.k.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                } else {
                    z3 = z2;
                    i8 = 0;
                }
                if (!r2) {
                    LayoutParams layoutParams2 = (LayoutParams) this.l.getLayoutParams();
                    i8 = this.l.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin + i8;
                }
                if (!r || r2) {
                    if (!r) {
                        appCompatTextView = this.k;
                    } else {
                        appCompatTextView = this.l;
                    }
                    if (!r2) {
                        appCompatTextView2 = this.l;
                    } else {
                        appCompatTextView2 = this.k;
                    }
                    LayoutParams layoutParams3 = (LayoutParams) appCompatTextView.getLayoutParams();
                    LayoutParams layoutParams4 = (LayoutParams) appCompatTextView2.getLayoutParams();
                    int i23 = i8;
                    if ((!r && this.k.getMeasuredWidth() > 0) || (r2 && this.l.getMeasuredWidth() > 0)) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    i9 = this.F & 112;
                    int i24 = max;
                    if (i9 == 48) {
                        if (i9 != 80) {
                            int i25 = (((height - paddingTop2) - paddingBottom) - i23) / 2;
                            int i26 = ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin + this.A;
                            if (i25 < i26) {
                                i25 = i26;
                            } else {
                                int i27 = (((height - paddingBottom) - i23) - i25) - paddingTop2;
                                int i28 = ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin;
                                int i29 = this.B;
                                if (i27 < i28 + i29) {
                                    i25 = Math.max(0, i25 - ((((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin + i29) - i27));
                                }
                            }
                            paddingTop = paddingTop2 + i25;
                        } else {
                            paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin) - this.B) - i23;
                        }
                    } else {
                        paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin + this.A;
                    }
                    if (!z3) {
                        if (z4) {
                            i13 = this.y;
                        } else {
                            i13 = 0;
                        }
                        int i30 = i13 - iArr[1];
                        min -= Math.max(0, i30);
                        iArr[1] = Math.max(0, -i30);
                        if (r) {
                            LayoutParams layoutParams5 = (LayoutParams) this.k.getLayoutParams();
                            int measuredWidth = min - this.k.getMeasuredWidth();
                            int measuredHeight = this.k.getMeasuredHeight() + paddingTop;
                            this.k.layout(measuredWidth, paddingTop, min, measuredHeight);
                            i14 = measuredWidth - this.z;
                            paddingTop = measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams5).bottomMargin;
                        } else {
                            i14 = min;
                        }
                        if (r2) {
                            int i31 = paddingTop + ((ViewGroup.MarginLayoutParams) ((LayoutParams) this.l.getLayoutParams())).topMargin;
                            this.l.layout(min - this.l.getMeasuredWidth(), i31, min, this.l.getMeasuredHeight() + i31);
                            i15 = min - this.z;
                        } else {
                            i15 = min;
                        }
                        if (z4) {
                            min = Math.min(i14, i15);
                        }
                        max = i24;
                    } else {
                        if (z4) {
                            i10 = this.y;
                        } else {
                            i10 = 0;
                        }
                        int i32 = i10 - iArr[0];
                        max = Math.max(0, i32) + i24;
                        iArr[0] = Math.max(0, -i32);
                        if (r) {
                            LayoutParams layoutParams6 = (LayoutParams) this.k.getLayoutParams();
                            int measuredWidth2 = this.k.getMeasuredWidth() + max;
                            int measuredHeight2 = this.k.getMeasuredHeight() + paddingTop;
                            this.k.layout(max, paddingTop, measuredWidth2, measuredHeight2);
                            i11 = measuredWidth2 + this.z;
                            paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) layoutParams6).bottomMargin;
                        } else {
                            i11 = max;
                        }
                        if (r2) {
                            int i33 = paddingTop + ((ViewGroup.MarginLayoutParams) ((LayoutParams) this.l.getLayoutParams())).topMargin;
                            int measuredWidth3 = this.l.getMeasuredWidth() + max;
                            this.l.layout(max, i33, measuredWidth3, this.l.getMeasuredHeight() + i33);
                            i12 = measuredWidth3 + this.z;
                        } else {
                            i12 = max;
                        }
                        if (z4) {
                            max = Math.max(i11, i12);
                        }
                    }
                }
                ArrayList arrayList = this.M;
                a(3, arrayList);
                size = arrayList.size();
                i16 = max;
                for (i17 = 0; i17 < size; i17++) {
                    i16 = n((View) arrayList.get(i17), i16, i5, iArr);
                }
                a(5, arrayList);
                size2 = arrayList.size();
                for (i18 = 0; i18 < size2; i18++) {
                    min = o((View) arrayList.get(i18), min, i5, iArr);
                }
                a(1, arrayList);
                int i34 = iArr[0];
                int i35 = iArr[1];
                size3 = arrayList.size();
                int i36 = i34;
                i19 = 0;
                int i37 = 0;
                while (i19 < size3) {
                    View view2 = (View) arrayList.get(i19);
                    LayoutParams layoutParams7 = (LayoutParams) view2.getLayoutParams();
                    int i38 = i35;
                    int i39 = ((ViewGroup.MarginLayoutParams) layoutParams7).leftMargin - i36;
                    int i40 = ((ViewGroup.MarginLayoutParams) layoutParams7).rightMargin - i38;
                    int max2 = Math.max(0, i39);
                    int max3 = Math.max(0, i40);
                    int max4 = Math.max(0, -i39);
                    int max5 = Math.max(0, -i40);
                    i37 += view2.getMeasuredWidth() + max2 + max3;
                    i19++;
                    i36 = max4;
                    i35 = max5;
                }
                i21 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (i37 / 2);
                int i41 = i37 + i21;
                if (i21 >= i16) {
                    if (i41 > min) {
                        i16 = i21 - (i41 - min);
                    } else {
                        i16 = i21;
                    }
                }
                size4 = arrayList.size();
                for (i20 = 0; i20 < size4; i20++) {
                    i16 = n((View) arrayList.get(i20), i16, i5, iArr);
                }
                arrayList.clear();
            }
            i6 = n(appCompatImageButton, paddingLeft, i5, iArr);
        } else {
            i6 = paddingLeft;
        }
        i7 = i22;
        if (r(this.q)) {
        }
        if (r(this.j)) {
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - i6);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i22 - i7));
        max = Math.max(i6, currentContentInsetLeft2);
        int min2 = Math.min(i7, i22 - currentContentInsetRight2);
        if (r(this.r)) {
        }
        if (r(this.n)) {
        }
        r = r(this.k);
        r2 = r(this.l);
        if (!r) {
        }
        if (!r2) {
        }
        if (!r) {
        }
        if (!r) {
        }
        if (!r2) {
        }
        LayoutParams layoutParams32 = (LayoutParams) appCompatTextView.getLayoutParams();
        LayoutParams layoutParams42 = (LayoutParams) appCompatTextView2.getLayoutParams();
        int i232 = i8;
        if (!r) {
        }
        z4 = false;
        i9 = this.F & 112;
        int i242 = max;
        if (i9 == 48) {
        }
        if (!z3) {
        }
        ArrayList arrayList2 = this.M;
        a(3, arrayList2);
        size = arrayList2.size();
        i16 = max;
        while (i17 < size) {
        }
        a(5, arrayList2);
        size2 = arrayList2.size();
        while (i18 < size2) {
        }
        a(1, arrayList2);
        int i342 = iArr[0];
        int i352 = iArr[1];
        size3 = arrayList2.size();
        int i362 = i342;
        i19 = 0;
        int i372 = 0;
        while (i19 < size3) {
        }
        i21 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (i372 / 2);
        int i412 = i372 + i21;
        if (i21 >= i16) {
        }
        size4 = arrayList2.size();
        while (i20 < size4) {
        }
        arrayList2.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        char c;
        Object[] objArr;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11 = 0;
        if (getLayoutDirection() == 1) {
            objArr = true;
            c = 0;
        } else {
            c = 1;
            objArr = false;
        }
        if (r(this.m)) {
            q(this.m, i, 0, i2, this.x);
            i3 = j(this.m) + this.m.getMeasuredWidth();
            i4 = Math.max(0, k(this.m) + this.m.getMeasuredHeight());
            i5 = View.combineMeasuredStates(0, this.m.getMeasuredState());
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        if (r(this.q)) {
            q(this.q, i, 0, i2, this.x);
            i3 = j(this.q) + this.q.getMeasuredWidth();
            i4 = Math.max(i4, k(this.q) + this.q.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.q.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = Math.max(currentContentInsetStart, i3);
        int max2 = Math.max(0, currentContentInsetStart - i3);
        Object[] objArr2 = objArr;
        int[] iArr = this.O;
        iArr[objArr2 == true ? 1 : 0] = max2;
        if (r(this.j)) {
            q(this.j, i, max, i2, this.x);
            i6 = j(this.j) + this.j.getMeasuredWidth();
            i4 = Math.max(i4, k(this.j) + this.j.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.j.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max3 = max + Math.max(currentContentInsetEnd, i6);
        iArr[c] = Math.max(0, currentContentInsetEnd - i6);
        if (r(this.r)) {
            max3 += p(this.r, i, max3, i2, 0, iArr);
            i4 = Math.max(i4, k(this.r) + this.r.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.r.getMeasuredState());
        }
        if (r(this.n)) {
            max3 += p(this.n, i, max3, i2, 0, iArr);
            i4 = Math.max(i4, k(this.n) + this.n.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.n.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (((LayoutParams) childAt.getLayoutParams()).b == 0 && r(childAt)) {
                max3 += p(childAt, i, max3, i2, 0, iArr);
                int max4 = Math.max(i4, k(childAt) + childAt.getMeasuredHeight());
                i5 = View.combineMeasuredStates(i5, childAt.getMeasuredState());
                i4 = max4;
            } else {
                max3 = max3;
            }
        }
        int i13 = max3;
        int i14 = this.A + this.B;
        int i15 = this.y + this.z;
        if (r(this.k)) {
            p(this.k, i, i13 + i15, i2, i14, iArr);
            i7 = i14;
            int j = j(this.k) + this.k.getMeasuredWidth();
            i8 = k(this.k) + this.k.getMeasuredHeight();
            i9 = View.combineMeasuredStates(i5, this.k.getMeasuredState());
            i10 = j;
        } else {
            i7 = i14;
            i8 = 0;
            i9 = i5;
            i10 = 0;
        }
        if (r(this.l)) {
            i10 = Math.max(i10, p(this.l, i, i13 + i15, i2, i8 + i7, iArr));
            i8 += k(this.l) + this.l.getMeasuredHeight();
            i9 = View.combineMeasuredStates(i9, this.l.getMeasuredState());
        }
        if (r(this.k) || r(this.l)) {
            i8 += i7;
        }
        int max5 = Math.max(i4, i8);
        int paddingRight = getPaddingRight() + getPaddingLeft() + i13 + i10;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + max5;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i, (-16777216) & i9);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, i9 << 16);
        if (this.U) {
            int childCount2 = getChildCount();
            for (int i16 = 0; i16 < childCount2; i16++) {
                View childAt2 = getChildAt(i16);
                if (!r(childAt2) || childAt2.getMeasuredWidth() <= 0 || childAt2.getMeasuredHeight() <= 0) {
                }
            }
            setMeasuredDimension(resolveSizeAndState, i11);
        }
        i11 = resolveSizeAndState2;
        setMeasuredDimension(resolveSizeAndState, i11);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        MenuBuilder menuBuilder;
        MenuItem findItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.j);
        ActionMenuView actionMenuView = this.j;
        if (actionMenuView != null) {
            menuBuilder = actionMenuView.y;
        } else {
            menuBuilder = null;
        }
        int i = savedState.l;
        if (i != 0 && this.T != null && menuBuilder != null && (findItem = menuBuilder.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (savedState.m) {
            Runnable runnable = this.b0;
            removeCallbacks(runnable);
            post(runnable);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        d();
        RtlSpacingHelper rtlSpacingHelper = this.C;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (z == rtlSpacingHelper.g) {
            return;
        }
        rtlSpacingHelper.g = z;
        if (rtlSpacingHelper.h) {
            if (z) {
                int i2 = rtlSpacingHelper.d;
                if (i2 == Integer.MIN_VALUE) {
                    i2 = rtlSpacingHelper.e;
                }
                rtlSpacingHelper.a = i2;
                int i3 = rtlSpacingHelper.c;
                if (i3 == Integer.MIN_VALUE) {
                    i3 = rtlSpacingHelper.f;
                }
                rtlSpacingHelper.b = i3;
                return;
            }
            int i4 = rtlSpacingHelper.c;
            if (i4 == Integer.MIN_VALUE) {
                i4 = rtlSpacingHelper.e;
            }
            rtlSpacingHelper.a = i4;
            int i5 = rtlSpacingHelper.d;
            if (i5 == Integer.MIN_VALUE) {
                i5 = rtlSpacingHelper.f;
            }
            rtlSpacingHelper.b = i5;
            return;
        }
        rtlSpacingHelper.a = rtlSpacingHelper.e;
        rtlSpacingHelper.b = rtlSpacingHelper.f;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Parcelable, androidx.customview.view.AbsSavedState, androidx.appcompat.widget.Toolbar$SavedState] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        boolean z;
        ActionMenuPresenter actionMenuPresenter;
        ActionMenuPresenter.OverflowPopup overflowPopup;
        MenuItemImpl menuItemImpl;
        ?? absSavedState = new AbsSavedState(super.onSaveInstanceState());
        ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.T;
        if (expandedActionViewMenuPresenter != null && (menuItemImpl = expandedActionViewMenuPresenter.k) != null) {
            absSavedState.l = menuItemImpl.a;
        }
        ActionMenuView actionMenuView = this.j;
        if (actionMenuView != null && (actionMenuPresenter = actionMenuView.B) != null && (overflowPopup = actionMenuPresenter.A) != null && overflowPopup.b()) {
            z = true;
        } else {
            z = false;
        }
        absSavedState.m = z;
        return absSavedState;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.K = false;
        }
        if (!this.K) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.K = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.K = false;
        return true;
    }

    public final int p(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i5);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    public final void q(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i4 >= 0) {
            if (mode != 0) {
                i4 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i4);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final boolean r(View view) {
        if (view != null && view.getParent() == this && view.getVisibility() != 8) {
            return true;
        }
        return false;
    }

    public final void s() {
        boolean z;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher a = Api33Impl.a(this);
            ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.T;
            if (expandedActionViewMenuPresenter != null && expandedActionViewMenuPresenter.k != null && a != null && isAttachedToWindow() && this.a0) {
                z = true;
            } else {
                z = false;
            }
            if (z && this.W == null) {
                if (this.V == null) {
                    this.V = new v2(2, new a(this));
                }
                Api33Impl.b(a, this.V);
                this.W = a;
                return;
            }
            if (!z && (onBackInvokedDispatcher = this.W) != null) {
                Api33Impl.c(onBackInvokedDispatcher, this.V);
                this.W = null;
            }
        }
    }

    public void setBackInvokedCallbackEnabled(boolean z) {
        if (this.a0 != z) {
            this.a0 = z;
            s();
        }
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        AppCompatImageButton appCompatImageButton = this.q;
        if (appCompatImageButton != null) {
            appCompatImageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.q.setImageDrawable(drawable);
        } else {
            AppCompatImageButton appCompatImageButton = this.q;
            if (appCompatImageButton != null) {
                appCompatImageButton.setImageDrawable(this.o);
            }
        }
    }

    public void setCollapsible(boolean z) {
        this.U = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.E) {
            this.E = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.D) {
            this.D = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(Drawable drawable) {
        AppCompatImageView appCompatImageView = this.n;
        if (drawable != null) {
            if (appCompatImageView == null) {
                this.n = new AppCompatImageView(getContext(), 0);
            }
            if (!m(this.n)) {
                b(this.n, true);
            }
        } else if (appCompatImageView != null && m(appCompatImageView)) {
            removeView(this.n);
            this.N.remove(this.n);
        }
        AppCompatImageView appCompatImageView2 = this.n;
        if (appCompatImageView2 != null) {
            appCompatImageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.n == null) {
            this.n = new AppCompatImageView(getContext(), 0);
        }
        AppCompatImageView appCompatImageView = this.n;
        if (appCompatImageView != null) {
            appCompatImageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            f();
        }
        AppCompatImageButton appCompatImageButton = this.m;
        if (appCompatImageButton != null) {
            appCompatImageButton.setContentDescription(charSequence);
            this.m.setTooltipText(charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            f();
            if (!m(this.m)) {
                b(this.m, true);
            }
        } else {
            AppCompatImageButton appCompatImageButton = this.m;
            if (appCompatImageButton != null && m(appCompatImageButton)) {
                removeView(this.m);
                this.N.remove(this.m);
            }
        }
        AppCompatImageButton appCompatImageButton2 = this.m;
        if (appCompatImageButton2 != null) {
            appCompatImageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        f();
        this.m.setOnClickListener(onClickListener);
    }

    public void setOverflowIcon(Drawable drawable) {
        e();
        this.j.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.t != i) {
            this.t = i;
            if (i == 0) {
                this.s = getContext();
            } else {
                this.s = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        boolean isEmpty = TextUtils.isEmpty(charSequence);
        AppCompatTextView appCompatTextView = this.l;
        if (!isEmpty) {
            if (appCompatTextView == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                this.l = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.l.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.v;
                if (i != 0) {
                    this.l.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.J;
                if (colorStateList != null) {
                    this.l.setTextColor(colorStateList);
                }
            }
            if (!m(this.l)) {
                b(this.l, true);
            }
        } else if (appCompatTextView != null && m(appCompatTextView)) {
            removeView(this.l);
            this.N.remove(this.l);
        }
        AppCompatTextView appCompatTextView3 = this.l;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.H = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.J = colorStateList;
        AppCompatTextView appCompatTextView = this.l;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        boolean isEmpty = TextUtils.isEmpty(charSequence);
        AppCompatTextView appCompatTextView = this.k;
        if (!isEmpty) {
            if (appCompatTextView == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                this.k = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.k.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.u;
                if (i != 0) {
                    this.k.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.I;
                if (colorStateList != null) {
                    this.k.setTextColor(colorStateList);
                }
            }
            if (!m(this.k)) {
                b(this.k, true);
            }
        } else if (appCompatTextView != null && m(appCompatTextView)) {
            removeView(this.k);
            this.N.remove(this.k);
        }
        AppCompatTextView appCompatTextView3 = this.k;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.G = charSequence;
    }

    public void setTitleMarginBottom(int i) {
        this.B = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.z = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.y = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.A = i;
        requestLayout();
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.I = colorStateList;
        AppCompatTextView appCompatTextView = this.k;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public int l;
        public boolean m;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            boolean z;
            this.l = parcel.readInt();
            if (parcel.readInt() != 0) {
                z = true;
            } else {
                z = false;
            }
            this.m = z;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.l);
            parcel.writeInt(this.m ? 1 : 0);
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: androidx.appcompat.widget.Toolbar$SavedState$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
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

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(AppCompatResources.b(getContext(), i));
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return h(layoutParams);
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class ExpandedActionViewMenuPresenter implements MenuPresenter {
        public MenuBuilder j;
        public MenuItemImpl k;

        public ExpandedActionViewMenuPresenter() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final boolean b() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final boolean e(MenuItemImpl menuItemImpl) {
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.r);
            toolbar.removeView(toolbar.q);
            toolbar.r = null;
            ArrayList arrayList = toolbar.N;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                toolbar.addView((View) arrayList.get(size));
            }
            arrayList.clear();
            this.k = null;
            toolbar.requestLayout();
            menuItemImpl.B = false;
            menuItemImpl.n.o(false);
            toolbar.s();
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final void g(Context context, MenuBuilder menuBuilder) {
            MenuItemImpl menuItemImpl;
            MenuBuilder menuBuilder2 = this.j;
            if (menuBuilder2 != null && (menuItemImpl = this.k) != null) {
                menuBuilder2.d(menuItemImpl);
            }
            this.j = menuBuilder;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final void h() {
            if (this.k != null) {
                MenuBuilder menuBuilder = this.j;
                if (menuBuilder != null) {
                    int size = menuBuilder.f.size();
                    for (int i = 0; i < size; i++) {
                        if (this.j.getItem(i) == this.k) {
                            return;
                        }
                    }
                }
                e(this.k);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final boolean j(SubMenuBuilder subMenuBuilder) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final boolean k(MenuItemImpl menuItemImpl) {
            Toolbar toolbar = Toolbar.this;
            toolbar.c();
            ViewParent parent = toolbar.q.getParent();
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.q);
                }
                toolbar.addView(toolbar.q);
            }
            View view = menuItemImpl.z;
            if (view == null) {
                view = null;
            }
            toolbar.r = view;
            this.k = menuItemImpl;
            ViewParent parent2 = view.getParent();
            if (parent2 != toolbar) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar.r);
                }
                LayoutParams g = Toolbar.g();
                g.a = (toolbar.w & 112) | 8388611;
                g.b = 2;
                toolbar.r.setLayoutParams(g);
                toolbar.addView(toolbar.r);
            }
            for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = toolbar.getChildAt(childCount);
                if (((LayoutParams) childAt.getLayoutParams()).b != 2 && childAt != toolbar.j) {
                    toolbar.removeViewAt(childCount);
                    toolbar.N.add(childAt);
                }
            }
            toolbar.requestLayout();
            menuItemImpl.B = true;
            menuItemImpl.n.o(false);
            toolbar.s();
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final void a(MenuBuilder menuBuilder, boolean z) {
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(AppCompatResources.b(getContext(), i));
    }

    public void setLogo(int i) {
        setLogo(AppCompatResources.b(getContext(), i));
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
