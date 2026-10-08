package io.sentry.android.replay;

import android.view.View;
import io.sentry.ISentryLifecycleToken;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jdk7.AutoCloseableKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RootViewsSpy$listeners$1 extends CopyOnWriteArrayList<OnRootViewsChangedListener> {
    public final /* synthetic */ RootViewsSpy j;

    public RootViewsSpy$listeners$1(RootViewsSpy rootViewsSpy) {
        this.j = rootViewsSpy;
    }

    @Override // java.util.concurrent.CopyOnWriteArrayList, java.util.List, java.util.Collection
    public final boolean add(Object obj) {
        OnRootViewsChangedListener onRootViewsChangedListener = (OnRootViewsChangedListener) obj;
        RootViewsSpy rootViewsSpy = this.j;
        ISentryLifecycleToken a = rootViewsSpy.k.a();
        try {
            Iterator<View> it = rootViewsSpy.m.iterator();
            while (it.hasNext()) {
                View next = it.next();
                if (onRootViewsChangedListener != null) {
                    onRootViewsChangedListener.a(next, true);
                }
            }
            AutoCloseableKt.a(a, null);
            return super.add(onRootViewsChangedListener);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.a(a, th);
                throw th2;
            }
        }
    }

    @Override // java.util.concurrent.CopyOnWriteArrayList, java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        boolean z;
        if (obj == null) {
            z = true;
        } else {
            z = obj instanceof OnRootViewsChangedListener;
        }
        if (!z) {
            return false;
        }
        return super.contains((OnRootViewsChangedListener) obj);
    }

    @Override // java.util.concurrent.CopyOnWriteArrayList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        boolean z;
        if (obj == null) {
            z = true;
        } else {
            z = obj instanceof OnRootViewsChangedListener;
        }
        if (!z) {
            return -1;
        }
        return super.indexOf((OnRootViewsChangedListener) obj);
    }

    @Override // java.util.concurrent.CopyOnWriteArrayList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        boolean z;
        if (obj == null) {
            z = true;
        } else {
            z = obj instanceof OnRootViewsChangedListener;
        }
        if (!z) {
            return -1;
        }
        return super.lastIndexOf((OnRootViewsChangedListener) obj);
    }

    @Override // java.util.concurrent.CopyOnWriteArrayList, java.util.List, java.util.Collection
    public final /* bridge */ boolean remove(Object obj) {
        boolean z;
        if (obj == null) {
            z = true;
        } else {
            z = obj instanceof OnRootViewsChangedListener;
        }
        if (!z) {
            return false;
        }
        return super.remove((OnRootViewsChangedListener) obj);
    }
}
