package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.ListPopupWindow;
import androidx.appcompat.widget.MenuPopupWindow;
import defpackage.u2;
import net.blip.android.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StandardMenuPopup extends MenuPopup implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, MenuPresenter, View.OnKeyListener {
    public int A;
    public boolean C;
    public final Context k;
    public final MenuBuilder l;
    public final MenuAdapter m;
    public final boolean n;
    public final int o;
    public final int p;
    public final MenuPopupWindow q;
    public PopupWindow.OnDismissListener t;
    public View u;
    public View v;
    public MenuPresenter.Callback w;
    public ViewTreeObserver x;
    public boolean y;
    public boolean z;
    public final ViewTreeObserver.OnGlobalLayoutListener r = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.StandardMenuPopup.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            StandardMenuPopup standardMenuPopup = StandardMenuPopup.this;
            MenuPopupWindow menuPopupWindow = standardMenuPopup.q;
            if (standardMenuPopup.c() && !menuPopupWindow.D) {
                View view = standardMenuPopup.v;
                if (view != null && view.isShown()) {
                    menuPopupWindow.f();
                } else {
                    standardMenuPopup.dismiss();
                }
            }
        }
    };
    public final View.OnAttachStateChangeListener s = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.StandardMenuPopup.2
        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            StandardMenuPopup standardMenuPopup = StandardMenuPopup.this;
            ViewTreeObserver viewTreeObserver = standardMenuPopup.x;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    standardMenuPopup.x = view.getViewTreeObserver();
                }
                standardMenuPopup.x.removeGlobalOnLayoutListener(standardMenuPopup.r);
            }
            view.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }
    };
    public int B = 0;

    /* JADX WARN: Type inference failed for: r6v1, types: [androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.MenuPopupWindow] */
    public StandardMenuPopup(Context context, MenuBuilder menuBuilder, View view, int i, boolean z) {
        this.k = context;
        this.l = menuBuilder;
        this.n = z;
        this.m = new MenuAdapter(menuBuilder, LayoutInflater.from(context), z, R.layout.abc_popup_menu_item_layout);
        this.p = i;
        Resources resources = context.getResources();
        this.o = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.u = view;
        this.q = new ListPopupWindow(context, i);
        menuBuilder.b(this, context);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void a(MenuBuilder menuBuilder, boolean z) {
        if (menuBuilder == this.l) {
            dismiss();
            MenuPresenter.Callback callback = this.w;
            if (callback != null) {
                callback.a(menuBuilder, z);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final boolean c() {
        if (!this.y && this.q.E.isShowing()) {
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void d(MenuPresenter.Callback callback) {
        this.w = callback;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void dismiss() {
        if (c()) {
            this.q.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void f() {
        View view;
        boolean z;
        Rect rect;
        if (c()) {
            return;
        }
        if (!this.y && (view = this.u) != null) {
            this.v = view;
            MenuPopupWindow menuPopupWindow = this.q;
            PopupWindow popupWindow = menuPopupWindow.E;
            PopupWindow popupWindow2 = menuPopupWindow.E;
            popupWindow.setOnDismissListener(this);
            menuPopupWindow.v = this;
            menuPopupWindow.D = true;
            popupWindow2.setFocusable(true);
            View view2 = this.v;
            if (this.x == null) {
                z = true;
            } else {
                z = false;
            }
            ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
            this.x = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.r);
            }
            view2.addOnAttachStateChangeListener(this.s);
            menuPopupWindow.u = view2;
            menuPopupWindow.s = this.B;
            boolean z2 = this.z;
            Context context = this.k;
            MenuAdapter menuAdapter = this.m;
            if (!z2) {
                this.A = MenuPopup.m(menuAdapter, context, this.o);
                this.z = true;
            }
            int i = this.A;
            Rect rect2 = menuPopupWindow.B;
            Drawable background = popupWindow2.getBackground();
            if (background != null) {
                background.getPadding(rect2);
                menuPopupWindow.m = rect2.left + rect2.right + i;
            } else {
                menuPopupWindow.m = i;
            }
            popupWindow2.setInputMethodMode(2);
            Rect rect3 = this.j;
            if (rect3 != null) {
                rect = new Rect(rect3);
            } else {
                rect = null;
            }
            menuPopupWindow.C = rect;
            menuPopupWindow.f();
            MenuPopupWindow.MenuDropDownListView menuDropDownListView = menuPopupWindow.l;
            menuDropDownListView.setOnKeyListener(this);
            if (this.C) {
                MenuBuilder menuBuilder = this.l;
                if (menuBuilder.l != null) {
                    FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) menuDropDownListView, false);
                    TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                    if (textView != null) {
                        textView.setText(menuBuilder.l);
                    }
                    frameLayout.setEnabled(false);
                    menuDropDownListView.addHeaderView(frameLayout, null, false);
                }
            }
            menuPopupWindow.d(menuAdapter);
            menuPopupWindow.f();
            return;
        }
        u2.l("StandardMenuPopup cannot be used without an anchor");
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void h() {
        this.z = false;
        MenuAdapter menuAdapter = this.m;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final ListView i() {
        return this.q.l;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean j(SubMenuBuilder subMenuBuilder) {
        boolean z;
        int i;
        if (subMenuBuilder.hasVisibleItems()) {
            MenuPopupHelper menuPopupHelper = new MenuPopupHelper(this.k, subMenuBuilder, this.v, this.n, this.p, 0);
            MenuPresenter.Callback callback = this.w;
            menuPopupHelper.h = callback;
            MenuPopup menuPopup = menuPopupHelper.i;
            if (menuPopup != null) {
                menuPopup.d(callback);
            }
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
            menuPopupHelper.d(z);
            menuPopupHelper.j = this.t;
            this.t = null;
            this.l.c(false);
            MenuPopupWindow menuPopupWindow = this.q;
            int i3 = menuPopupWindow.n;
            if (!menuPopupWindow.p) {
                i = 0;
            } else {
                i = menuPopupWindow.o;
            }
            if ((Gravity.getAbsoluteGravity(this.B, this.u.getLayoutDirection()) & 7) == 5) {
                i3 += this.u.getWidth();
            }
            if (!menuPopupHelper.b()) {
                if (menuPopupHelper.e != null) {
                    menuPopupHelper.e(i3, i, true, true);
                }
            }
            MenuPresenter.Callback callback2 = this.w;
            if (callback2 != null) {
                callback2.b(subMenuBuilder);
            }
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void n(View view) {
        this.u = view;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void o(boolean z) {
        this.m.c = z;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.y = true;
        this.l.c(true);
        ViewTreeObserver viewTreeObserver = this.x;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.x = this.v.getViewTreeObserver();
            }
            this.x.removeGlobalOnLayoutListener(this.r);
            this.x = null;
        }
        this.v.removeOnAttachStateChangeListener(this.s);
        PopupWindow.OnDismissListener onDismissListener = this.t;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i == 82) {
            dismiss();
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void p(int i) {
        this.B = i;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void q(int i) {
        this.q.n = i;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.t = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void s(boolean z) {
        this.C = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void t(int i) {
        MenuPopupWindow menuPopupWindow = this.q;
        menuPopupWindow.o = i;
        menuPopupWindow.p = true;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void l(MenuBuilder menuBuilder) {
    }
}
