package androidx.appcompat.view.menu;

import android.content.Context;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface MenuPresenter {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Callback {
        void a(MenuBuilder menuBuilder, boolean z);

        boolean b(MenuBuilder menuBuilder);
    }

    void a(MenuBuilder menuBuilder, boolean z);

    boolean b();

    void d(Callback callback);

    boolean e(MenuItemImpl menuItemImpl);

    void g(Context context, MenuBuilder menuBuilder);

    void h();

    boolean j(SubMenuBuilder subMenuBuilder);

    boolean k(MenuItemImpl menuItemImpl);
}
