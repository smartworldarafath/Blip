package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class MenuAdapter extends BaseAdapter {
    public final MenuBuilder a;
    public int b = -1;
    public boolean c;
    public final boolean d;
    public final LayoutInflater e;
    public final int f;

    public MenuAdapter(MenuBuilder menuBuilder, LayoutInflater layoutInflater, boolean z, int i) {
        this.d = z;
        this.e = layoutInflater;
        this.a = menuBuilder;
        this.f = i;
        a();
    }

    public final void a() {
        MenuBuilder menuBuilder = this.a;
        MenuItemImpl menuItemImpl = menuBuilder.t;
        if (menuItemImpl != null) {
            menuBuilder.i();
            ArrayList arrayList = menuBuilder.j;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((MenuItemImpl) arrayList.get(i)) == menuItemImpl) {
                    this.b = i;
                    return;
                }
            }
        }
        this.b = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final MenuItemImpl getItem(int i) {
        ArrayList k;
        boolean z = this.d;
        MenuBuilder menuBuilder = this.a;
        if (z) {
            menuBuilder.i();
            k = menuBuilder.j;
        } else {
            k = menuBuilder.k();
        }
        int i2 = this.b;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (MenuItemImpl) k.get(i);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList k;
        boolean z = this.d;
        MenuBuilder menuBuilder = this.a;
        if (z) {
            menuBuilder.i();
            k = menuBuilder.j;
        } else {
            k = menuBuilder.k();
        }
        if (this.b < 0) {
            return k.size();
        }
        return k.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        int i2;
        boolean z = false;
        if (view == null) {
            view = this.e.inflate(this.f, viewGroup, false);
        }
        int i3 = getItem(i).b;
        int i4 = i - 1;
        if (i4 >= 0) {
            i2 = getItem(i4).b;
        } else {
            i2 = i3;
        }
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.a.l() && i3 != i2) {
            z = true;
        }
        listMenuItemView.setGroupDividerEnabled(z);
        MenuView$ItemView menuView$ItemView = (MenuView$ItemView) view;
        if (this.c) {
            listMenuItemView.setForceShowIcon(true);
        }
        menuView$ItemView.c(getItem(i));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
