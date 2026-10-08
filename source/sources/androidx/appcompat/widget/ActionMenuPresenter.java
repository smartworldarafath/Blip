package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.BaseMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPopup;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView$ItemView;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.MenuProvider;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Iterator;
import net.blip.android.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ActionMenuPresenter extends BaseMenuPresenter {
    public OverflowPopup A;
    public ActionButtonSubmenu B;
    public OpenOverflowRunnable C;
    public ActionMenuPopupCallback D;
    public final PopupPresenterCallback E;
    public OverflowMenuButton q;
    public Drawable r;
    public boolean s;
    public boolean t;
    public boolean u;
    public int v;
    public int w;
    public int x;
    public boolean y;
    public final SparseBooleanArray z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class ActionButtonSubmenu extends MenuPopupHelper {
        public ActionButtonSubmenu(Context context, SubMenuBuilder subMenuBuilder, View view) {
            super(context, subMenuBuilder, view, false, R.attr.actionOverflowMenuStyle, 0);
            if ((subMenuBuilder.x.x & 32) != 32) {
                View view2 = ActionMenuPresenter.this.q;
                this.e = view2 == null ? ActionMenuPresenter.this.p : view2;
            }
            PopupPresenterCallback popupPresenterCallback = ActionMenuPresenter.this.E;
            this.h = popupPresenterCallback;
            MenuPopup menuPopup = this.i;
            if (menuPopup != null) {
                menuPopup.d(popupPresenterCallback);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        public final void c() {
            ActionMenuPresenter.this.B = null;
            super.c();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class ActionMenuPopupCallback extends ActionMenuItemView.PopupCallback {
        public ActionMenuPopupCallback() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.PopupCallback
        public final ShowableListMenu a() {
            ActionButtonSubmenu actionButtonSubmenu = ActionMenuPresenter.this.B;
            if (actionButtonSubmenu != null) {
                return actionButtonSubmenu.a();
            }
            return null;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class OpenOverflowRunnable implements Runnable {
        public final OverflowPopup j;

        public OpenOverflowRunnable(OverflowPopup overflowPopup) {
            this.j = overflowPopup;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MenuBuilder.Callback callback;
            MenuBuilder.Callback callback2;
            OverflowPopup overflowPopup;
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            MenuBuilder menuBuilder = actionMenuPresenter.l;
            if (menuBuilder != null && (callback = menuBuilder.e) != null && (callback2 = ActionMenuView.this.C) != null) {
                Toolbar toolbar = Toolbar.this;
                ActionMenuPresenter actionMenuPresenter2 = toolbar.j.B;
                if (actionMenuPresenter2 == null || (overflowPopup = actionMenuPresenter2.A) == null || !overflowPopup.b()) {
                    Iterator it = toolbar.P.a.iterator();
                    while (it.hasNext()) {
                        ((MenuProvider) it.next()).d(menuBuilder);
                    }
                }
            }
            ActionMenuView actionMenuView = actionMenuPresenter.p;
            if (actionMenuView != null && actionMenuView.getWindowToken() != null) {
                OverflowPopup overflowPopup2 = this.j;
                if (!overflowPopup2.b()) {
                    if (overflowPopup2.e != null) {
                        overflowPopup2.e(0, 0, false, false);
                    }
                }
                actionMenuPresenter.A = overflowPopup2;
            }
            actionMenuPresenter.C = null;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class OverflowMenuButton extends AppCompatImageView implements ActionMenuView.ActionMenuChildView {
        public OverflowMenuButton(Context context) {
            super(context, R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            setTooltipText(getContentDescription());
            setOnTouchListener(new ForwardingListener(this) { // from class: androidx.appcompat.widget.ActionMenuPresenter.OverflowMenuButton.1
                @Override // androidx.appcompat.widget.ForwardingListener
                public final ShowableListMenu b() {
                    OverflowPopup overflowPopup = ActionMenuPresenter.this.A;
                    if (overflowPopup == null) {
                        return null;
                    }
                    return overflowPopup.a();
                }

                @Override // androidx.appcompat.widget.ForwardingListener
                public final boolean c() {
                    ActionMenuPresenter.this.i();
                    return true;
                }

                @Override // androidx.appcompat.widget.ForwardingListener
                public final boolean d() {
                    ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
                    if (actionMenuPresenter.C != null) {
                        return false;
                    }
                    actionMenuPresenter.f();
                    return true;
                }
            });
        }

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public final boolean a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public final boolean b() {
            return false;
        }

        @Override // android.view.View
        public final boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.i();
            return true;
        }

        @Override // android.widget.ImageView
        public final boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                background.setHotspotBounds(paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class OverflowPopup extends MenuPopupHelper {
        public OverflowPopup(Context context, MenuBuilder menuBuilder, View view) {
            super(context, menuBuilder, view, true, R.attr.actionOverflowMenuStyle, 0);
            this.f = 8388613;
            PopupPresenterCallback popupPresenterCallback = ActionMenuPresenter.this.E;
            this.h = popupPresenterCallback;
            MenuPopup menuPopup = this.i;
            if (menuPopup != null) {
                menuPopup.d(popupPresenterCallback);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        public final void c() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            MenuBuilder menuBuilder = actionMenuPresenter.l;
            if (menuBuilder != null) {
                menuBuilder.c(true);
            }
            actionMenuPresenter.A = null;
            super.c();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class PopupPresenterCallback implements MenuPresenter.Callback {
        public PopupPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final void a(MenuBuilder menuBuilder, boolean z) {
            if (menuBuilder instanceof SubMenuBuilder) {
                ((SubMenuBuilder) menuBuilder).w.j().c(false);
            }
            MenuPresenter.Callback callback = ActionMenuPresenter.this.n;
            if (callback != null) {
                callback.a(menuBuilder, z);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final boolean b(MenuBuilder menuBuilder) {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            if (menuBuilder != actionMenuPresenter.l) {
                ((SubMenuBuilder) menuBuilder).x.getClass();
                MenuPresenter.Callback callback = actionMenuPresenter.n;
                if (callback != null) {
                    return callback.b(menuBuilder);
                }
                return false;
            }
            return false;
        }
    }

    public ActionMenuPresenter(Context context) {
        this.j = context;
        this.m = LayoutInflater.from(context);
        this.o = R.layout.abc_action_menu_item_layout;
        this.z = new SparseBooleanArray();
        this.E = new PopupPresenterCallback();
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void a(MenuBuilder menuBuilder, boolean z) {
        f();
        ActionButtonSubmenu actionButtonSubmenu = this.B;
        if (actionButtonSubmenu != null && actionButtonSubmenu.b()) {
            actionButtonSubmenu.i.dismiss();
        }
        MenuPresenter.Callback callback = this.n;
        if (callback != null) {
            callback.a(menuBuilder, z);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean b() {
        int i;
        ArrayList arrayList;
        int i2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        ActionMenuPresenter actionMenuPresenter = this;
        MenuBuilder menuBuilder = actionMenuPresenter.l;
        if (menuBuilder != null) {
            arrayList = menuBuilder.k();
            i = arrayList.size();
        } else {
            i = 0;
            arrayList = null;
        }
        int i3 = actionMenuPresenter.x;
        int i4 = actionMenuPresenter.w;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ActionMenuView actionMenuView = actionMenuPresenter.p;
        int i5 = 0;
        boolean z5 = false;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i2 = 2;
            z = true;
            if (i5 >= i) {
                break;
            }
            MenuItemImpl menuItemImpl = (MenuItemImpl) arrayList.get(i5);
            int i8 = menuItemImpl.y;
            if ((i8 & 2) == 2) {
                i6++;
            } else if ((i8 & 1) == 1) {
                i7++;
            } else {
                z5 = true;
            }
            if (actionMenuPresenter.y && menuItemImpl.B) {
                i3 = 0;
            }
            i5++;
        }
        if (actionMenuPresenter.t && (z5 || i7 + i6 > i3)) {
            i3--;
        }
        int i9 = i3 - i6;
        SparseBooleanArray sparseBooleanArray = actionMenuPresenter.z;
        sparseBooleanArray.clear();
        int i10 = 0;
        int i11 = 0;
        while (i10 < i) {
            MenuItemImpl menuItemImpl2 = (MenuItemImpl) arrayList.get(i10);
            int i12 = menuItemImpl2.y;
            if ((i12 & 2) == i2) {
                z2 = z;
            } else {
                z2 = false;
            }
            int i13 = menuItemImpl2.b;
            if (z2) {
                View c = actionMenuPresenter.c(menuItemImpl2, null, actionMenuView);
                c.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredWidth = c.getMeasuredWidth();
                i4 -= measuredWidth;
                if (i11 == 0) {
                    i11 = measuredWidth;
                }
                if (i13 != 0) {
                    sparseBooleanArray.put(i13, z);
                }
                menuItemImpl2.c(z);
            } else if ((i12 & 1) == z) {
                boolean z6 = sparseBooleanArray.get(i13);
                if ((i9 > 0 || z6) && i4 > 0) {
                    z3 = z;
                } else {
                    z3 = false;
                }
                if (z3) {
                    View c2 = actionMenuPresenter.c(menuItemImpl2, null, actionMenuView);
                    c2.measure(makeMeasureSpec, makeMeasureSpec);
                    int measuredWidth2 = c2.getMeasuredWidth();
                    i4 -= measuredWidth2;
                    if (i11 == 0) {
                        i11 = measuredWidth2;
                    }
                    if (i4 + i11 > 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    z3 &= z4;
                }
                if (z3 && i13 != 0) {
                    sparseBooleanArray.put(i13, true);
                } else if (z6) {
                    sparseBooleanArray.put(i13, false);
                    for (int i14 = 0; i14 < i10; i14++) {
                        MenuItemImpl menuItemImpl3 = (MenuItemImpl) arrayList.get(i14);
                        if (menuItemImpl3.b == i13) {
                            if ((menuItemImpl3.x & 32) == 32) {
                                i9++;
                            }
                            menuItemImpl3.c(false);
                        }
                    }
                }
                if (z3) {
                    i9--;
                }
                menuItemImpl2.c(z3);
            } else {
                menuItemImpl2.c(false);
                i10++;
                i2 = 2;
                actionMenuPresenter = this;
                z = true;
            }
            i10++;
            i2 = 2;
            actionMenuPresenter = this;
            z = true;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r7v4, types: [androidx.appcompat.view.menu.MenuView$ItemView] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    public final View c(MenuItemImpl menuItemImpl, View view, ActionMenuView actionMenuView) {
        View view2;
        ActionMenuItemView actionMenuItemView;
        View view3 = menuItemImpl.z;
        if (view3 != null) {
            view2 = view3;
        } else {
            view2 = null;
        }
        int i = 8;
        if (view2 == null || ((menuItemImpl.y & 8) != 0 && view3 != null)) {
            if (view instanceof MenuView$ItemView) {
                actionMenuItemView = (MenuView$ItemView) view;
            } else {
                actionMenuItemView = (MenuView$ItemView) this.m.inflate(this.o, (ViewGroup) actionMenuView, false);
            }
            actionMenuItemView.c(menuItemImpl);
            ActionMenuItemView actionMenuItemView2 = actionMenuItemView;
            actionMenuItemView2.setItemInvoker(this.p);
            if (this.D == null) {
                this.D = new ActionMenuPopupCallback();
            }
            actionMenuItemView2.setPopupCallback(this.D);
            view2 = actionMenuItemView;
        }
        if (!menuItemImpl.B) {
            i = 0;
        }
        view2.setVisibility(i);
        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
        actionMenuView.getClass();
        if (!(layoutParams instanceof ActionMenuView.LayoutParams)) {
            view2.setLayoutParams(ActionMenuView.j(layoutParams));
        }
        return view2;
    }

    public final boolean f() {
        ActionMenuView actionMenuView;
        OpenOverflowRunnable openOverflowRunnable = this.C;
        if (openOverflowRunnable != null && (actionMenuView = this.p) != null) {
            actionMenuView.removeCallbacks(openOverflowRunnable);
            this.C = null;
            return true;
        }
        OverflowPopup overflowPopup = this.A;
        if (overflowPopup != null) {
            if (overflowPopup.b()) {
                overflowPopup.i.dismiss();
            }
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void g(Context context, MenuBuilder menuBuilder) {
        this.k = context;
        LayoutInflater.from(context);
        this.l = menuBuilder;
        Resources resources = context.getResources();
        if (!this.u) {
            this.t = true;
        }
        int i = 2;
        this.v = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i3 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp <= 600 && i2 <= 600 && ((i2 <= 960 || i3 <= 720) && (i2 <= 720 || i3 <= 960))) {
            if (i2 < 500 && ((i2 <= 640 || i3 <= 480) && (i2 <= 480 || i3 <= 640))) {
                if (i2 >= 360) {
                    i = 3;
                }
            } else {
                i = 4;
            }
        } else {
            i = 5;
        }
        this.x = i;
        int i4 = this.v;
        if (this.t) {
            if (this.q == null) {
                OverflowMenuButton overflowMenuButton = new OverflowMenuButton(this.j);
                this.q = overflowMenuButton;
                if (this.s) {
                    overflowMenuButton.setImageDrawable(this.r);
                    this.r = null;
                    this.s = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.q.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i4 -= this.q.getMeasuredWidth();
        } else {
            this.q = null;
        }
        this.w = i4;
        float f = resources.getDisplayMetrics().density;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void h() {
        int i;
        MenuItemImpl menuItemImpl;
        ActionMenuView actionMenuView = this.p;
        ArrayList arrayList = null;
        boolean z = false;
        if (actionMenuView != null) {
            MenuBuilder menuBuilder = this.l;
            if (menuBuilder != null) {
                menuBuilder.i();
                ArrayList k = this.l.k();
                int size = k.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    MenuItemImpl menuItemImpl2 = (MenuItemImpl) k.get(i2);
                    if ((menuItemImpl2.x & 32) == 32) {
                        View childAt = actionMenuView.getChildAt(i);
                        if (childAt instanceof MenuView$ItemView) {
                            menuItemImpl = ((MenuView$ItemView) childAt).getItemData();
                        } else {
                            menuItemImpl = null;
                        }
                        View c = c(menuItemImpl2, childAt, actionMenuView);
                        if (menuItemImpl2 != menuItemImpl) {
                            c.setPressed(false);
                            c.jumpDrawablesToCurrentState();
                        }
                        if (c != childAt) {
                            ViewGroup viewGroup = (ViewGroup) c.getParent();
                            if (viewGroup != null) {
                                viewGroup.removeView(c);
                            }
                            this.p.addView(c, i);
                        }
                        i++;
                    }
                }
            } else {
                i = 0;
            }
            while (i < actionMenuView.getChildCount()) {
                if (actionMenuView.getChildAt(i) == this.q) {
                    i++;
                } else {
                    actionMenuView.removeViewAt(i);
                }
            }
        }
        this.p.requestLayout();
        MenuBuilder menuBuilder2 = this.l;
        if (menuBuilder2 != null) {
            menuBuilder2.i();
            ArrayList arrayList2 = menuBuilder2.i;
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ((MenuItemImpl) arrayList2.get(i3)).getClass();
            }
        }
        MenuBuilder menuBuilder3 = this.l;
        if (menuBuilder3 != null) {
            menuBuilder3.i();
            arrayList = menuBuilder3.j;
        }
        if (this.t && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z = !((MenuItemImpl) arrayList.get(0)).B;
            } else if (size3 > 0) {
                z = true;
            }
        }
        OverflowMenuButton overflowMenuButton = this.q;
        if (z) {
            if (overflowMenuButton == null) {
                this.q = new OverflowMenuButton(this.j);
            }
            ViewGroup viewGroup2 = (ViewGroup) this.q.getParent();
            if (viewGroup2 != this.p) {
                if (viewGroup2 != null) {
                    viewGroup2.removeView(this.q);
                }
                ActionMenuView actionMenuView2 = this.p;
                OverflowMenuButton overflowMenuButton2 = this.q;
                actionMenuView2.getClass();
                ActionMenuView.LayoutParams i4 = ActionMenuView.i();
                i4.a = true;
                actionMenuView2.addView(overflowMenuButton2, i4);
            }
        } else if (overflowMenuButton != null) {
            ViewParent parent = overflowMenuButton.getParent();
            ActionMenuView actionMenuView3 = this.p;
            if (parent == actionMenuView3) {
                actionMenuView3.removeView(this.q);
            }
        }
        this.p.setOverflowReserved(this.t);
    }

    public final boolean i() {
        MenuBuilder menuBuilder;
        if (this.t) {
            OverflowPopup overflowPopup = this.A;
            if ((overflowPopup == null || !overflowPopup.b()) && (menuBuilder = this.l) != null && this.p != null && this.C == null) {
                menuBuilder.i();
                if (!menuBuilder.j.isEmpty()) {
                    OpenOverflowRunnable openOverflowRunnable = new OpenOverflowRunnable(new OverflowPopup(this.k, this.l, this.q));
                    this.C = openOverflowRunnable;
                    this.p.post(openOverflowRunnable);
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean j(SubMenuBuilder subMenuBuilder) {
        boolean z;
        if (subMenuBuilder.hasVisibleItems()) {
            SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
            while (true) {
                MenuBuilder menuBuilder = subMenuBuilder2.w;
                if (menuBuilder == this.l) {
                    break;
                }
                subMenuBuilder2 = (SubMenuBuilder) menuBuilder;
            }
            MenuItemImpl menuItemImpl = subMenuBuilder2.x;
            ActionMenuView actionMenuView = this.p;
            View view = null;
            if (actionMenuView != null) {
                int childCount = actionMenuView.getChildCount();
                int i = 0;
                while (true) {
                    if (i >= childCount) {
                        break;
                    }
                    View childAt = actionMenuView.getChildAt(i);
                    if ((childAt instanceof MenuView$ItemView) && ((MenuView$ItemView) childAt).getItemData() == menuItemImpl) {
                        view = childAt;
                        break;
                    }
                    i++;
                }
            }
            if (view != null) {
                subMenuBuilder.x.getClass();
                int size = subMenuBuilder.f.size();
                int i2 = 0;
                while (true) {
                    if (i2 < size) {
                        MenuItem item = subMenuBuilder.getItem(i2);
                        if (item.isVisible() && item.getIcon() != null) {
                            z = true;
                            break;
                        }
                        i2++;
                    } else {
                        z = false;
                        break;
                    }
                }
                ActionButtonSubmenu actionButtonSubmenu = new ActionButtonSubmenu(this.k, subMenuBuilder, view);
                this.B = actionButtonSubmenu;
                actionButtonSubmenu.d(z);
                ActionButtonSubmenu actionButtonSubmenu2 = this.B;
                if (!actionButtonSubmenu2.b()) {
                    if (actionButtonSubmenu2.e != null) {
                        actionButtonSubmenu2.e(0, 0, false, false);
                    } else {
                        u2.l("MenuPopupHelper cannot be used without an anchor");
                        return false;
                    }
                }
                MenuPresenter.Callback callback = this.n;
                if (callback != null) {
                    callback.b(subMenuBuilder);
                }
                return true;
            }
        }
        return false;
    }
}
