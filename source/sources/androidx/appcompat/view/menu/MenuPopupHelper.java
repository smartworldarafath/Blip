package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.MenuPresenter;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class MenuPopupHelper {
    public final Context a;
    public final MenuBuilder b;
    public final boolean c;
    public final int d;
    public View e;
    public boolean g;
    public MenuPresenter.Callback h;
    public MenuPopup i;
    public PopupWindow.OnDismissListener j;
    public int f = 8388611;
    public final PopupWindow.OnDismissListener k = new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.view.menu.MenuPopupHelper.1
        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            MenuPopupHelper.this.c();
        }
    };

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder, View view, boolean z, int i, int i2) {
        this.a = context;
        this.b = menuBuilder;
        this.e = view;
        this.c = z;
        this.d = i;
    }

    public final MenuPopup a() {
        MenuPopup standardMenuPopup;
        if (this.i == null) {
            Context context = this.a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            int min = Math.min(point.x, point.y);
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width);
            Context context2 = this.a;
            if (min >= dimensionPixelSize) {
                standardMenuPopup = new CascadingMenuPopup(context2, this.e, this.d, this.c);
            } else {
                standardMenuPopup = new StandardMenuPopup(context2, this.b, this.e, this.d, this.c);
            }
            standardMenuPopup.l(this.b);
            standardMenuPopup.r(this.k);
            standardMenuPopup.n(this.e);
            standardMenuPopup.d(this.h);
            standardMenuPopup.o(this.g);
            standardMenuPopup.p(this.f);
            this.i = standardMenuPopup;
        }
        return this.i;
    }

    public final boolean b() {
        MenuPopup menuPopup = this.i;
        if (menuPopup != null && menuPopup.c()) {
            return true;
        }
        return false;
    }

    public void c() {
        this.i = null;
        PopupWindow.OnDismissListener onDismissListener = this.j;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public final void d(boolean z) {
        this.g = z;
        MenuPopup menuPopup = this.i;
        if (menuPopup != null) {
            menuPopup.o(z);
        }
    }

    public final void e(int i, int i2, boolean z, boolean z2) {
        MenuPopup a = a();
        a.s(z2);
        if (z) {
            if ((Gravity.getAbsoluteGravity(this.f, this.e.getLayoutDirection()) & 7) == 5) {
                i -= this.e.getWidth();
            }
            a.q(i);
            a.t(i2);
            int i3 = (int) ((this.a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            a.j = new Rect(i - i3, i2 - i3, i + i3, i2 + i3);
        }
        a.f();
    }
}
