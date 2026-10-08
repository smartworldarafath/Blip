package androidx.navigation;

import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt$valueIterator$1;
import androidx.navigation.NavDestination;
import androidx.navigation.internal.NavGraphImpl;
import androidx.navigation.internal.NavGraphImpl$iterator$1;
import defpackage.fe;
import defpackage.la;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class NavGraph extends NavDestination implements Iterable<NavDestination>, KMappedMarker {
    public static final /* synthetic */ int p = 0;
    public final NavGraphImpl o;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static NavDestination a(NavGraph navGraph) {
            Iterator it = SequencesKt.c(navGraph, new la(16)).iterator();
            if (it.hasNext()) {
                Object next = it.next();
                while (it.hasNext()) {
                    next = it.next();
                }
                return (NavDestination) next;
            }
            fe.o("Sequence is empty.");
            return null;
        }
    }

    public NavGraph(NavGraphNavigator navGraphNavigator) {
        super(navGraphNavigator);
        this.o = new NavGraphImpl(this);
    }

    @Override // androidx.navigation.NavDestination
    public final NavDestination.DeepLinkMatch d(NavDeepLinkRequest navDeepLinkRequest) {
        NavDestination.DeepLinkMatch d = super.d(navDeepLinkRequest);
        NavGraphImpl navGraphImpl = this.o;
        navGraphImpl.getClass();
        return navGraphImpl.d(d, navDeepLinkRequest, false, navGraphImpl.a);
    }

    public final NavDestination.DeepLinkMatch e(NavDeepLinkRequest navDeepLinkRequest, NavDestination navDestination) {
        return this.o.d(super.d(navDeepLinkRequest), navDeepLinkRequest, true, navDestination);
    }

    @Override // androidx.navigation.NavDestination
    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && (obj instanceof NavGraph) && super.equals(obj)) {
                NavGraphImpl navGraphImpl = this.o;
                int f = navGraphImpl.b.f();
                NavGraphImpl navGraphImpl2 = ((NavGraph) obj).o;
                if (f == navGraphImpl2.b.f() && navGraphImpl.c == navGraphImpl2.c) {
                    SparseArrayCompat sparseArrayCompat = navGraphImpl.b;
                    sparseArrayCompat.getClass();
                    Iterator it = SequencesKt.a(new SparseArrayKt$valueIterator$1(sparseArrayCompat)).iterator();
                    while (it.hasNext()) {
                        NavDestination navDestination = (NavDestination) it.next();
                        if (!navDestination.equals(navGraphImpl2.b.c(navDestination.k.d))) {
                            return false;
                        }
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final NavDestination.DeepLinkMatch f(String str, boolean z, NavDestination navDestination) {
        NavDestination.DeepLinkMatch deepLinkMatch;
        NavGraphImpl navGraphImpl = this.o;
        navGraphImpl.getClass();
        NavGraph navGraph = navGraphImpl.a;
        NavDestination.DeepLinkMatch a = navGraph.k.a(str);
        ArrayList arrayList = new ArrayList();
        Iterator<NavDestination> it = navGraph.iterator();
        while (true) {
            deepLinkMatch = null;
            if (!it.hasNext()) {
                break;
            }
            NavDestination next = it.next();
            if (!Intrinsics.a(next, navDestination)) {
                if (next instanceof NavGraph) {
                    deepLinkMatch = ((NavGraph) next).f(str, false, navGraph);
                } else {
                    next.getClass();
                    deepLinkMatch = next.k.a(str);
                }
            }
            if (deepLinkMatch != null) {
                arrayList.add(deepLinkMatch);
            }
        }
        NavDestination.DeepLinkMatch deepLinkMatch2 = (NavDestination.DeepLinkMatch) CollectionsKt.D(arrayList);
        NavGraph navGraph2 = navGraph.l;
        if (navGraph2 != null && z && !navGraph2.equals(navDestination)) {
            deepLinkMatch = navGraph2.f(str, true, navGraph);
        }
        return (NavDestination.DeepLinkMatch) CollectionsKt.D(ArraysKt.p(new NavDestination.DeepLinkMatch[]{a, deepLinkMatch2, deepLinkMatch}));
    }

    @Override // androidx.navigation.NavDestination
    public final int hashCode() {
        NavGraphImpl navGraphImpl = this.o;
        int i = navGraphImpl.c;
        SparseArrayCompat sparseArrayCompat = navGraphImpl.b;
        int f = sparseArrayCompat.f();
        for (int i2 = 0; i2 < f; i2++) {
            i = (((i * 31) + sparseArrayCompat.d(i2)) * 31) + ((NavDestination) sparseArrayCompat.g(i2)).hashCode();
        }
        return i;
    }

    @Override // java.lang.Iterable
    public final Iterator<NavDestination> iterator() {
        NavGraphImpl navGraphImpl = this.o;
        navGraphImpl.getClass();
        return new NavGraphImpl$iterator$1(navGraphImpl);
    }

    @Override // androidx.navigation.NavDestination
    public final String toString() {
        NavDestination navDestination;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        NavGraphImpl navGraphImpl = this.o;
        String str = navGraphImpl.e;
        navGraphImpl.getClass();
        if (str != null && !StringsKt.t(str)) {
            navDestination = navGraphImpl.b(str, true);
        } else {
            navDestination = null;
        }
        if (navDestination == null) {
            navDestination = navGraphImpl.a(navGraphImpl.c);
        }
        sb.append(" startDestination=");
        if (navDestination == null) {
            String str2 = navGraphImpl.e;
            if (str2 != null) {
                sb.append(str2);
            } else {
                String str3 = navGraphImpl.d;
                if (str3 != null) {
                    sb.append(str3);
                } else {
                    sb.append("0x" + Integer.toHexString(navGraphImpl.c));
                }
            }
        } else {
            sb.append("{");
            sb.append(navDestination.toString());
            sb.append("}");
        }
        return sb.toString();
    }
}
