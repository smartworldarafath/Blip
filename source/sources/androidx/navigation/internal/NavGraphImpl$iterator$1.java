package androidx.navigation.internal;

import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayCompatKt;
import androidx.navigation.NavDestination;
import defpackage.k8;
import defpackage.u2;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NavGraphImpl$iterator$1 implements Iterator<NavDestination>, KMappedMarker {
    public int j = -1;
    public boolean k;
    public final /* synthetic */ NavGraphImpl l;

    public NavGraphImpl$iterator$1(NavGraphImpl navGraphImpl) {
        this.l = navGraphImpl;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.j + 1 < this.l.b.f()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final NavDestination next() {
        if (hasNext()) {
            this.k = true;
            SparseArrayCompat sparseArrayCompat = this.l.b;
            int i = this.j + 1;
            this.j = i;
            return (NavDestination) sparseArrayCompat.g(i);
        }
        k8.o();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.k) {
            SparseArrayCompat sparseArrayCompat = this.l.b;
            ((NavDestination) sparseArrayCompat.g(this.j)).l = null;
            int i = this.j;
            Object[] objArr = sparseArrayCompat.l;
            Object obj = objArr[i];
            Object obj2 = SparseArrayCompatKt.a;
            if (obj != obj2) {
                objArr[i] = obj2;
                sparseArrayCompat.j = true;
            }
            this.j = i - 1;
            this.k = false;
            return;
        }
        u2.l("You must call next() before you can remove an element");
    }
}
