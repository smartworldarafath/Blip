package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.ListPopupWindow;
import androidx.appcompat.widget.MenuItemHoverListener;
import androidx.appcompat.widget.MenuPopupWindow;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import net.blip.android.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CascadingMenuPopup extends MenuPopup implements MenuPresenter, View.OnKeyListener, PopupWindow.OnDismissListener {
    public boolean A;
    public int B;
    public int C;
    public boolean E;
    public MenuPresenter.Callback F;
    public ViewTreeObserver G;
    public PopupWindow.OnDismissListener H;
    public boolean I;
    public final Context k;
    public final int l;
    public final int m;
    public final boolean n;
    public final Handler o;
    public View w;
    public View x;
    public int y;
    public boolean z;
    public final ArrayList p = new ArrayList();
    public final ArrayList q = new ArrayList();
    public final ViewTreeObserver.OnGlobalLayoutListener r = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
            ArrayList arrayList = cascadingMenuPopup.q;
            if (cascadingMenuPopup.c() && arrayList.size() > 0 && !((CascadingMenuInfo) arrayList.get(0)).a.D) {
                View view = cascadingMenuPopup.x;
                if (view != null && view.isShown()) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((CascadingMenuInfo) it.next()).a.f();
                    }
                    return;
                }
                cascadingMenuPopup.dismiss();
            }
        }
    };
    public final View.OnAttachStateChangeListener s = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.2
        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
            ViewTreeObserver viewTreeObserver = cascadingMenuPopup.G;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    cascadingMenuPopup.G = view.getViewTreeObserver();
                }
                cascadingMenuPopup.G.removeGlobalOnLayoutListener(cascadingMenuPopup.r);
            }
            view.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }
    };
    public final MenuItemHoverListener t = new MenuItemHoverListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.3
        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public final void a(final MenuBuilder menuBuilder, final MenuItemImpl menuItemImpl) {
            CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
            Handler handler = cascadingMenuPopup.o;
            final CascadingMenuInfo cascadingMenuInfo = null;
            handler.removeCallbacksAndMessages(null);
            ArrayList arrayList = cascadingMenuPopup.q;
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    if (menuBuilder == ((CascadingMenuInfo) arrayList.get(i)).b) {
                        break;
                    } else {
                        i++;
                    }
                } else {
                    i = -1;
                    break;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            if (i2 < arrayList.size()) {
                cascadingMenuInfo = (CascadingMenuInfo) arrayList.get(i2);
            }
            handler.postAtTime(new Runnable() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    CascadingMenuPopup cascadingMenuPopup2 = CascadingMenuPopup.this;
                    CascadingMenuInfo cascadingMenuInfo2 = cascadingMenuInfo;
                    if (cascadingMenuInfo2 != null) {
                        cascadingMenuPopup2.I = true;
                        cascadingMenuInfo2.b.c(false);
                        cascadingMenuPopup2.I = false;
                    }
                    MenuItemImpl menuItemImpl2 = menuItemImpl;
                    if (menuItemImpl2.isEnabled() && menuItemImpl2.hasSubMenu()) {
                        menuBuilder.p(menuItemImpl2, null, 4);
                    }
                }
            }, menuBuilder, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public final void b(MenuBuilder menuBuilder, MenuItem menuItem) {
            CascadingMenuPopup.this.o.removeCallbacksAndMessages(menuBuilder);
        }
    };
    public int u = 0;
    public int v = 0;
    public boolean D = false;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class CascadingMenuInfo {
        public final MenuPopupWindow a;
        public final MenuBuilder b;
        public final int c;

        public CascadingMenuInfo(MenuPopupWindow menuPopupWindow, MenuBuilder menuBuilder, int i) {
            this.a = menuPopupWindow;
            this.b = menuBuilder;
            this.c = i;
        }
    }

    public CascadingMenuPopup(Context context, View view, int i, boolean z) {
        this.k = context;
        this.w = view;
        this.m = i;
        this.n = z;
        this.y = view.getLayoutDirection() != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.l = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.o = new Handler();
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void a(MenuBuilder menuBuilder, boolean z) {
        int i;
        ArrayList arrayList = this.q;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                if (menuBuilder == ((CascadingMenuInfo) arrayList.get(i2)).b) {
                    break;
                } else {
                    i2++;
                }
            } else {
                i2 = -1;
                break;
            }
        }
        if (i2 >= 0) {
            int i3 = i2 + 1;
            if (i3 < arrayList.size()) {
                ((CascadingMenuInfo) arrayList.get(i3)).b.c(false);
            }
            CascadingMenuInfo cascadingMenuInfo = (CascadingMenuInfo) arrayList.remove(i2);
            MenuBuilder menuBuilder2 = cascadingMenuInfo.b;
            MenuPopupWindow menuPopupWindow = cascadingMenuInfo.a;
            PopupWindow popupWindow = menuPopupWindow.E;
            CopyOnWriteArrayList copyOnWriteArrayList = menuBuilder2.s;
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
                if (menuPresenter == null || menuPresenter == this) {
                    copyOnWriteArrayList.remove(weakReference);
                }
            }
            if (this.I) {
                popupWindow.setExitTransition(null);
                popupWindow.setAnimationStyle(0);
            }
            menuPopupWindow.dismiss();
            int size2 = arrayList.size();
            if (size2 > 0) {
                this.y = ((CascadingMenuInfo) arrayList.get(size2 - 1)).c;
            } else {
                if (this.w.getLayoutDirection() == 1) {
                    i = 0;
                } else {
                    i = 1;
                }
                this.y = i;
            }
            if (size2 == 0) {
                dismiss();
                MenuPresenter.Callback callback = this.F;
                if (callback != null) {
                    callback.a(menuBuilder, true);
                }
                ViewTreeObserver viewTreeObserver = this.G;
                if (viewTreeObserver != null) {
                    if (viewTreeObserver.isAlive()) {
                        this.G.removeGlobalOnLayoutListener(this.r);
                    }
                    this.G = null;
                }
                this.x.removeOnAttachStateChangeListener(this.s);
                this.H.onDismiss();
                return;
            }
            if (z) {
                ((CascadingMenuInfo) arrayList.get(0)).b.c(false);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final boolean c() {
        ArrayList arrayList = this.q;
        if (arrayList.size() <= 0 || !((CascadingMenuInfo) arrayList.get(0)).a.E.isShowing()) {
            return false;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void d(MenuPresenter.Callback callback) {
        this.F = callback;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void dismiss() {
        ArrayList arrayList = this.q;
        int size = arrayList.size();
        if (size > 0) {
            CascadingMenuInfo[] cascadingMenuInfoArr = (CascadingMenuInfo[]) arrayList.toArray(new CascadingMenuInfo[size]);
            for (int i = size - 1; i >= 0; i--) {
                CascadingMenuInfo cascadingMenuInfo = cascadingMenuInfoArr[i];
                if (cascadingMenuInfo.a.E.isShowing()) {
                    cascadingMenuInfo.a.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void f() {
        boolean z;
        if (!c()) {
            ArrayList arrayList = this.p;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                u((MenuBuilder) it.next());
            }
            arrayList.clear();
            View view = this.w;
            this.x = view;
            if (view != null) {
                if (this.G == null) {
                    z = true;
                } else {
                    z = false;
                }
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                this.G = viewTreeObserver;
                if (z) {
                    viewTreeObserver.addOnGlobalLayoutListener(this.r);
                }
                this.x.addOnAttachStateChangeListener(this.s);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void h() {
        Iterator it = this.q.iterator();
        while (it.hasNext()) {
            ListAdapter adapter = ((CascadingMenuInfo) it.next()).a.l.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((MenuAdapter) adapter).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final ListView i() {
        ArrayList arrayList = this.q;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((CascadingMenuInfo) arrayList.get(arrayList.size() - 1)).a.l;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean j(SubMenuBuilder subMenuBuilder) {
        Iterator it = this.q.iterator();
        while (it.hasNext()) {
            CascadingMenuInfo cascadingMenuInfo = (CascadingMenuInfo) it.next();
            if (subMenuBuilder == cascadingMenuInfo.b) {
                cascadingMenuInfo.a.l.requestFocus();
                return true;
            }
        }
        if (subMenuBuilder.hasVisibleItems()) {
            l(subMenuBuilder);
            MenuPresenter.Callback callback = this.F;
            if (callback != null) {
                callback.b(subMenuBuilder);
            }
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void l(MenuBuilder menuBuilder) {
        menuBuilder.b(this, this.k);
        if (c()) {
            u(menuBuilder);
        } else {
            this.p.add(menuBuilder);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void n(View view) {
        if (this.w != view) {
            this.w = view;
            this.v = Gravity.getAbsoluteGravity(this.u, view.getLayoutDirection());
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void o(boolean z) {
        this.D = z;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        CascadingMenuInfo cascadingMenuInfo;
        ArrayList arrayList = this.q;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i < size) {
                cascadingMenuInfo = (CascadingMenuInfo) arrayList.get(i);
                if (!cascadingMenuInfo.a.E.isShowing()) {
                    break;
                } else {
                    i++;
                }
            } else {
                cascadingMenuInfo = null;
                break;
            }
        }
        if (cascadingMenuInfo != null) {
            cascadingMenuInfo.b.c(false);
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
        if (this.u != i) {
            this.u = i;
            this.v = Gravity.getAbsoluteGravity(i, this.w.getLayoutDirection());
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void q(int i) {
        this.z = true;
        this.B = i;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.H = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void s(boolean z) {
        this.E = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void t(int i) {
        this.A = true;
        this.C = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0157, code lost:
    
        if (((r2.getWidth() + r7[r16]) + r5) > r9.right) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0159, code lost:
    
        r2 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x015d, code lost:
    
        r2 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0162, code lost:
    
        if ((r7[r16] - r5) < 0) goto L66;
     */
    /* JADX WARN: Type inference failed for: r8v3, types: [androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.MenuPopupWindow] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void u(MenuBuilder menuBuilder) {
        boolean z;
        int i;
        int i2;
        View view;
        CascadingMenuInfo cascadingMenuInfo;
        Rect rect;
        int i3;
        int i4;
        MenuItem menuItem;
        MenuAdapter menuAdapter;
        int i5;
        int firstVisiblePosition;
        Context context = this.k;
        LayoutInflater from = LayoutInflater.from(context);
        MenuAdapter menuAdapter2 = new MenuAdapter(menuBuilder, from, this.n, R.layout.abc_cascading_menu_item_layout);
        if (!c() && this.D) {
            menuAdapter2.c = true;
        } else if (c()) {
            int size = menuBuilder.f.size();
            int i6 = 0;
            while (true) {
                if (i6 < size) {
                    MenuItem item = menuBuilder.getItem(i6);
                    if (item.isVisible() && item.getIcon() != null) {
                        z = true;
                        break;
                    }
                    i6++;
                } else {
                    z = false;
                    break;
                }
            }
            menuAdapter2.c = z;
        }
        int m = MenuPopup.m(menuAdapter2, context, this.l);
        ?? listPopupWindow = new ListPopupWindow(context, this.m);
        listPopupWindow.H = this.t;
        listPopupWindow.v = this;
        PopupWindow popupWindow = listPopupWindow.E;
        popupWindow.setOnDismissListener(this);
        listPopupWindow.u = this.w;
        listPopupWindow.s = this.v;
        listPopupWindow.D = true;
        popupWindow.setFocusable(true);
        popupWindow.setInputMethodMode(2);
        listPopupWindow.d(menuAdapter2);
        Drawable background = popupWindow.getBackground();
        if (background != null) {
            Rect rect2 = listPopupWindow.B;
            background.getPadding(rect2);
            listPopupWindow.m = rect2.left + rect2.right + m;
        } else {
            listPopupWindow.m = m;
        }
        listPopupWindow.s = this.v;
        ArrayList arrayList = this.q;
        if (arrayList.size() > 0) {
            cascadingMenuInfo = (CascadingMenuInfo) arrayList.get(arrayList.size() - 1);
            MenuBuilder menuBuilder2 = cascadingMenuInfo.b;
            int size2 = menuBuilder2.f.size();
            int i7 = 0;
            while (true) {
                if (i7 < size2) {
                    menuItem = menuBuilder2.getItem(i7);
                    if (menuItem.hasSubMenu()) {
                        i2 = 0;
                        if (menuBuilder == menuItem.getSubMenu()) {
                            break;
                        }
                    }
                    i7++;
                } else {
                    i2 = 0;
                    menuItem = null;
                    break;
                }
            }
            if (menuItem == null) {
                i = 1;
            } else {
                MenuPopupWindow.MenuDropDownListView menuDropDownListView = cascadingMenuInfo.a.l;
                ListAdapter adapter = menuDropDownListView.getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i5 = headerViewListAdapter.getHeadersCount();
                    menuAdapter = (MenuAdapter) headerViewListAdapter.getWrappedAdapter();
                } else {
                    menuAdapter = (MenuAdapter) adapter;
                    i5 = i2;
                }
                int count = menuAdapter.getCount();
                i = 1;
                int i8 = i2;
                while (true) {
                    if (i8 < count) {
                        if (menuItem == menuAdapter.getItem(i8)) {
                            break;
                        } else {
                            i8++;
                        }
                    } else {
                        i8 = -1;
                        break;
                    }
                }
                if (i8 != -1 && (firstVisiblePosition = (i8 + i5) - menuDropDownListView.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < menuDropDownListView.getChildCount()) {
                    view = menuDropDownListView.getChildAt(firstVisiblePosition);
                }
            }
            view = null;
        } else {
            i = 1;
            i2 = 0;
            view = null;
            cascadingMenuInfo = null;
        }
        if (view != null) {
            listPopupWindow.e();
            popupWindow.setEnterTransition(null);
            MenuPopupWindow.MenuDropDownListView menuDropDownListView2 = ((CascadingMenuInfo) arrayList.get(arrayList.size() - 1)).a.l;
            int[] iArr = new int[2];
            menuDropDownListView2.getLocationOnScreen(iArr);
            Rect rect3 = new Rect();
            this.x.getWindowVisibleDisplayFrame(rect3);
            if (this.y == i) {
            }
            if (i3 == 1) {
                i4 = 1;
            } else {
                i4 = i2;
            }
            this.y = i3;
            listPopupWindow.u = view;
            if ((this.v & 5) == 5) {
                if (i4 == 0) {
                    m = 0 - view.getWidth();
                }
            } else if (i4 != 0) {
                m = view.getWidth();
            } else {
                m = 0 - m;
            }
            listPopupWindow.n = m;
            listPopupWindow.r = true;
            listPopupWindow.q = true;
            listPopupWindow.o = i2;
            listPopupWindow.p = true;
        } else {
            if (this.z) {
                listPopupWindow.n = this.B;
            }
            if (this.A) {
                listPopupWindow.o = this.C;
                listPopupWindow.p = true;
            }
            Rect rect4 = this.j;
            if (rect4 != null) {
                rect = new Rect(rect4);
            } else {
                rect = null;
            }
            listPopupWindow.C = rect;
        }
        arrayList.add(new CascadingMenuInfo(listPopupWindow, menuBuilder, this.y));
        listPopupWindow.f();
        MenuPopupWindow.MenuDropDownListView menuDropDownListView3 = listPopupWindow.l;
        menuDropDownListView3.setOnKeyListener(this);
        if (cascadingMenuInfo == null && this.E && menuBuilder.l != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) menuDropDownListView3, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(menuBuilder.l);
            menuDropDownListView3.addHeaderView(frameLayout, null, false);
            listPopupWindow.f();
        }
    }
}
