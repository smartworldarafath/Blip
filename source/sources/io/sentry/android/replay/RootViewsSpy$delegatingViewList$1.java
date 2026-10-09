package io.sentry.android.replay;

import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RootViewsSpy$delegatingViewList$1 extends ArrayList<View> {
    public final /* synthetic */ RootViewsSpy j;

    public RootViewsSpy$delegatingViewList$1(RootViewsSpy rootViewsSpy) {
        this.j = rootViewsSpy;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        View view = (View) obj;
        view.getClass();
        Iterator<OnRootViewsChangedListener> it = this.j.l.iterator();
        while (it.hasNext()) {
            it.next().a(view, true);
        }
        return super.add(view);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        collection.getClass();
        Iterator<OnRootViewsChangedListener> it = this.j.l.iterator();
        while (it.hasNext()) {
            OnRootViewsChangedListener next = it.next();
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                next.a((View) it2.next(), true);
            }
        }
        return super.addAll(collection);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof View)) {
            return false;
        }
        return super.contains((View) obj);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (!(obj instanceof View)) {
            return -1;
        }
        return super.indexOf((View) obj);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj instanceof View)) {
            return -1;
        }
        return super.lastIndexOf((View) obj);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        Object remove = super.remove(i);
        remove.getClass();
        View view = (View) remove;
        Iterator<OnRootViewsChangedListener> it = this.j.l.iterator();
        while (it.hasNext()) {
            it.next().a(view, false);
        }
        return view;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof View) {
            return super.remove((View) obj);
        }
        return false;
    }
}
