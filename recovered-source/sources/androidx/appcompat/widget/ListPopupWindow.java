package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.appcompat.widget.MenuPopupWindow;
import java.lang.reflect.Method;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ListPopupWindow implements ShowableListMenu {
    public static final Method F;
    public static final Method G;
    public final Handler A;
    public Rect C;
    public boolean D;
    public final PopupWindow E;
    public final Context j;
    public ListAdapter k;
    public MenuPopupWindow.MenuDropDownListView l;
    public int n;
    public int o;
    public boolean p;
    public boolean q;
    public boolean r;
    public DataSetObserver t;
    public View u;
    public AdapterView.OnItemClickListener v;
    public int m = -2;
    public int s = 0;
    public final ResizePopupRunnable w = new ResizePopupRunnable();
    public final PopupTouchInterceptor x = new PopupTouchInterceptor();
    public final PopupScrollListener y = new PopupScrollListener();
    public final ListSelectorHider z = new ListSelectorHider();
    public final Rect B = new Rect();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api29Impl {
        public static void a(PopupWindow popupWindow, Rect rect) {
            popupWindow.setEpicenterBounds(rect);
        }

        public static void b(PopupWindow popupWindow) {
            popupWindow.setIsClippedToScreen(true);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class ListSelectorHider implements Runnable {
        public ListSelectorHider() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MenuPopupWindow.MenuDropDownListView menuDropDownListView = ListPopupWindow.this.l;
            if (menuDropDownListView != null) {
                menuDropDownListView.setListSelectionHidden(true);
                menuDropDownListView.requestLayout();
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class PopupDataSetObserver extends DataSetObserver {
        public PopupDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (listPopupWindow.E.isShowing()) {
                listPopupWindow.f();
            }
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class PopupTouchInterceptor implements View.OnTouchListener {
        public PopupTouchInterceptor() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            ResizePopupRunnable resizePopupRunnable = listPopupWindow.w;
            Handler handler = listPopupWindow.A;
            PopupWindow popupWindow = listPopupWindow.E;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && popupWindow != null && popupWindow.isShowing() && x >= 0 && x < popupWindow.getWidth() && y >= 0 && y < popupWindow.getHeight()) {
                handler.postDelayed(resizePopupRunnable, 250L);
                return false;
            }
            if (action == 1) {
                handler.removeCallbacks(resizePopupRunnable);
                return false;
            }
            return false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class ResizePopupRunnable implements Runnable {
        public ResizePopupRunnable() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            MenuPopupWindow.MenuDropDownListView menuDropDownListView = listPopupWindow.l;
            if (menuDropDownListView != null && menuDropDownListView.isAttachedToWindow() && listPopupWindow.l.getCount() > listPopupWindow.l.getChildCount() && listPopupWindow.l.getChildCount() <= Integer.MAX_VALUE) {
                listPopupWindow.E.setInputMethodMode(2);
                listPopupWindow.f();
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                F = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                G = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
    }

    public ListPopupWindow(Context context, int i) {
        this.j = context;
        this.A = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R$styleable.l, i, 0);
        this.n = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.o = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.p = true;
        }
        obtainStyledAttributes.recycle();
        PopupWindow popupWindow = new PopupWindow(context, (AttributeSet) null, i, 0);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(null, R$styleable.p, i, 0);
        TintTypedArray tintTypedArray = new TintTypedArray(context, obtainStyledAttributes2);
        if (obtainStyledAttributes2.hasValue(2)) {
            popupWindow.setOverlapAnchor(obtainStyledAttributes2.getBoolean(2, false));
        }
        popupWindow.setBackgroundDrawable(tintTypedArray.b(0));
        tintTypedArray.e();
        this.E = popupWindow;
        popupWindow.setInputMethodMode(1);
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final boolean c() {
        return this.E.isShowing();
    }

    public final void d(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.t;
        if (dataSetObserver == null) {
            this.t = new PopupDataSetObserver();
        } else {
            ListAdapter listAdapter2 = this.k;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.k = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.t);
        }
        MenuPopupWindow.MenuDropDownListView menuDropDownListView = this.l;
        if (menuDropDownListView != null) {
            menuDropDownListView.setAdapter(this.k);
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void dismiss() {
        PopupWindow popupWindow = this.E;
        popupWindow.dismiss();
        popupWindow.setContentView(null);
        this.l = null;
        this.A.removeCallbacks(this.w);
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void f() {
        int i;
        boolean z;
        int makeMeasureSpec;
        int i2;
        MenuPopupWindow.MenuDropDownListView menuDropDownListView;
        int i3;
        int i4;
        MenuPopupWindow.MenuDropDownListView menuDropDownListView2 = this.l;
        Context context = this.j;
        PopupWindow popupWindow = this.E;
        if (menuDropDownListView2 == null) {
            MenuPopupWindow.MenuDropDownListView menuDropDownListView3 = new MenuPopupWindow.MenuDropDownListView(context, !this.D);
            menuDropDownListView3.setHoverListener((MenuPopupWindow) this);
            this.l = menuDropDownListView3;
            menuDropDownListView3.setAdapter(this.k);
            this.l.setOnItemClickListener(this.v);
            this.l.setFocusable(true);
            this.l.setFocusableInTouchMode(true);
            this.l.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.ListPopupWindow.3
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public final void onItemSelected(AdapterView adapterView, View view, int i5, long j) {
                    MenuPopupWindow.MenuDropDownListView menuDropDownListView4;
                    if (i5 != -1 && (menuDropDownListView4 = ListPopupWindow.this.l) != null) {
                        menuDropDownListView4.setListSelectionHidden(false);
                    }
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public final void onNothingSelected(AdapterView adapterView) {
                }
            });
            this.l.setOnScrollListener(this.y);
            popupWindow.setContentView(this.l);
        }
        Drawable background = popupWindow.getBackground();
        Rect rect = this.B;
        if (background != null) {
            background.getPadding(rect);
            int i5 = rect.top;
            i = rect.bottom + i5;
            if (!this.p) {
                this.o = -i5;
            }
        } else {
            rect.setEmpty();
            i = 0;
        }
        if (popupWindow.getInputMethodMode() == 2) {
            z = true;
        } else {
            z = false;
        }
        int maxAvailableHeight = popupWindow.getMaxAvailableHeight(this.u, this.o, z);
        int i6 = this.m;
        if (i6 != -2) {
            if (i6 != -1) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824);
            }
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE);
        }
        int b = this.l.b(makeMeasureSpec, maxAvailableHeight);
        if (b > 0) {
            i2 = this.l.getPaddingBottom() + this.l.getPaddingTop() + i;
        } else {
            i2 = 0;
        }
        int i7 = b + i2;
        popupWindow.getInputMethodMode();
        popupWindow.setWindowLayoutType(1002);
        if (popupWindow.isShowing()) {
            if (this.u.isAttachedToWindow()) {
                int i8 = this.m;
                if (i8 == -1) {
                    i8 = -1;
                } else if (i8 == -2) {
                    i8 = this.u.getWidth();
                }
                popupWindow.setOutsideTouchable(true);
                View view = this.u;
                int i9 = this.n;
                int i10 = this.o;
                if (i8 < 0) {
                    i3 = -1;
                } else {
                    i3 = i8;
                }
                if (i7 < 0) {
                    i4 = -1;
                } else {
                    i4 = i7;
                }
                popupWindow.update(view, i9, i10, i3, i4);
                return;
            }
            return;
        }
        int i11 = this.m;
        if (i11 == -1) {
            i11 = -1;
        } else if (i11 == -2) {
            i11 = this.u.getWidth();
        }
        popupWindow.setWidth(i11);
        popupWindow.setHeight(i7);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = F;
            if (method != null) {
                try {
                    method.invoke(popupWindow, Boolean.TRUE);
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            Api29Impl.b(popupWindow);
        }
        popupWindow.setOutsideTouchable(true);
        popupWindow.setTouchInterceptor(this.x);
        if (this.r) {
            popupWindow.setOverlapAnchor(this.q);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = G;
            if (method2 != null) {
                try {
                    method2.invoke(popupWindow, this.C);
                } catch (Exception e) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e);
                }
            }
        } else {
            Api29Impl.a(popupWindow, this.C);
        }
        popupWindow.showAsDropDown(this.u, this.n, this.o, this.s);
        this.l.setSelection(-1);
        if ((!this.D || this.l.isInTouchMode()) && (menuDropDownListView = this.l) != null) {
            menuDropDownListView.setListSelectionHidden(true);
            menuDropDownListView.requestLayout();
        }
        if (!this.D) {
            this.A.post(this.z);
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final ListView i() {
        return this.l;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class PopupScrollListener implements AbsListView.OnScrollListener {
        public PopupScrollListener() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i) {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            ResizePopupRunnable resizePopupRunnable = listPopupWindow.w;
            PopupWindow popupWindow = listPopupWindow.E;
            if (i == 1 && popupWindow.getInputMethodMode() != 2 && popupWindow.getContentView() != null) {
                listPopupWindow.A.removeCallbacks(resizePopupRunnable);
                resizePopupRunnable.run();
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }
    }
}
