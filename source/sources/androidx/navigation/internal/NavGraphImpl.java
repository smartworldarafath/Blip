package androidx.navigation.internal;

import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt$valueIterator$1;
import androidx.navigation.NavDeepLinkRequest;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NavGraphImpl {
    public final NavGraph a;
    public final SparseArrayCompat b = new SparseArrayCompat(0);
    public int c;
    public String d;
    public String e;

    public NavGraphImpl(NavGraph navGraph) {
        this.a = navGraph;
    }

    public final NavDestination a(int i) {
        return c(i, this.a, null, false);
    }

    public final NavDestination b(String str, boolean z) {
        Object obj;
        NavGraph navGraph;
        str.getClass();
        SparseArrayCompat sparseArrayCompat = this.b;
        sparseArrayCompat.getClass();
        Iterator it = SequencesKt.a(new SparseArrayKt$valueIterator$1(sparseArrayCompat)).iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                NavDestination navDestination = (NavDestination) obj;
                if (StringsKt.o(navDestination.k.e, str, false) || navDestination.k.a(str) != null) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        NavDestination navDestination2 = (NavDestination) obj;
        if (navDestination2 == null) {
            if (!z || (navGraph = this.a.l) == null) {
                return null;
            }
            NavGraphImpl navGraphImpl = navGraph.o;
            navGraphImpl.getClass();
            if (StringsKt.t(str)) {
                return null;
            }
            return navGraphImpl.b(str, true);
        }
        return navDestination2;
    }

    public final NavDestination c(int i, NavDestination navDestination, NavDestination navDestination2, boolean z) {
        SparseArrayCompat sparseArrayCompat = this.b;
        NavDestination navDestination3 = (NavDestination) sparseArrayCompat.c(i);
        if (navDestination2 != null) {
            if (Intrinsics.a(navDestination3, navDestination2) && Intrinsics.a(navDestination3.l, navDestination2.l)) {
                return navDestination3;
            }
            navDestination3 = null;
        } else if (navDestination3 != null) {
            return navDestination3;
        }
        NavGraph navGraph = this.a;
        if (z) {
            Iterator it = SequencesKt.a(new SparseArrayKt$valueIterator$1(sparseArrayCompat)).iterator();
            while (true) {
                if (it.hasNext()) {
                    NavDestination navDestination4 = (NavDestination) it.next();
                    if ((navDestination4 instanceof NavGraph) && !navDestination4.equals(navDestination)) {
                        navDestination3 = ((NavGraph) navDestination4).o.c(i, navGraph, navDestination2, true);
                    } else {
                        navDestination3 = null;
                    }
                    if (navDestination3 != null) {
                        break;
                    }
                } else {
                    navDestination3 = null;
                    break;
                }
            }
        }
        if (navDestination3 == null) {
            NavGraph navGraph2 = navGraph.l;
            if (navGraph2 == null || navGraph2.equals(navDestination)) {
                return null;
            }
            NavGraph navGraph3 = navGraph.l;
            navGraph3.getClass();
            return navGraph3.o.c(i, navGraph, navDestination2, z);
        }
        return navDestination3;
    }

    public final NavDestination.DeepLinkMatch d(NavDestination.DeepLinkMatch deepLinkMatch, NavDeepLinkRequest navDeepLinkRequest, boolean z, NavDestination navDestination) {
        NavDestination.DeepLinkMatch deepLinkMatch2;
        ArrayList arrayList = new ArrayList();
        NavGraph navGraph = this.a;
        Iterator<NavDestination> it = navGraph.iterator();
        while (true) {
            deepLinkMatch2 = null;
            if (!it.hasNext()) {
                break;
            }
            NavDestination next = it.next();
            if (!Intrinsics.a(next, navDestination)) {
                deepLinkMatch2 = next.d(navDeepLinkRequest);
            }
            if (deepLinkMatch2 != null) {
                arrayList.add(deepLinkMatch2);
            }
        }
        NavDestination.DeepLinkMatch deepLinkMatch3 = (NavDestination.DeepLinkMatch) CollectionsKt.D(arrayList);
        NavGraph navGraph2 = navGraph.l;
        if (navGraph2 != null && z && !navGraph2.equals(navDestination)) {
            deepLinkMatch2 = navGraph2.e(navDeepLinkRequest, navGraph);
        }
        return (NavDestination.DeepLinkMatch) CollectionsKt.D(ArraysKt.p(new NavDestination.DeepLinkMatch[]{deepLinkMatch, deepLinkMatch3, deepLinkMatch2}));
    }
}
