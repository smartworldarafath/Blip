package androidx.navigation;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigator;
import androidx.navigation.internal.NavDestinationImpl;
import androidx.navigation.internal.NavGraphImpl;
import defpackage.k8;
import defpackage.o0;
import defpackage.q;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Navigator.Name("navigation")
/* loaded from: classes.dex */
public class NavGraphNavigator extends Navigator<NavGraph> {
    public final NavigatorProvider c;

    public NavGraphNavigator(NavigatorProvider navigatorProvider) {
        navigatorProvider.getClass();
        this.c = navigatorProvider;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // androidx.navigation.Navigator
    public final void d(List list, NavOptions navOptions) {
        NavDestination navDestination;
        Bundle bundle;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
            NavDestination navDestination2 = navBackStackEntry.k;
            navDestination2.getClass();
            NavGraph navGraph = (NavGraph) navDestination2;
            NavDestinationImpl navDestinationImpl = navGraph.k;
            ?? obj = new Object();
            obj.j = navBackStackEntry.b();
            NavGraphImpl navGraphImpl = navGraph.o;
            int i = navGraphImpl.c;
            String str = navGraphImpl.e;
            if (i == 0 && str == null) {
                navDestinationImpl.getClass();
                String valueOf = String.valueOf(navDestinationImpl.d);
                valueOf.getClass();
                if (navGraphImpl.a.k.d == 0) {
                    valueOf = "the root navigation";
                }
                u2.f("no start destination defined via app:startDestination for ".concat(valueOf));
                return;
            }
            if (str != null) {
                navDestination = navGraphImpl.b(str, false);
            } else {
                navDestination = (NavDestination) navGraphImpl.b.c(i);
            }
            if (navDestination == null) {
                if (navGraphImpl.d == null) {
                    String str2 = navGraphImpl.e;
                    if (str2 == null) {
                        str2 = String.valueOf(navGraphImpl.c);
                    }
                    navGraphImpl.d = str2;
                }
                String str3 = navGraphImpl.d;
                str3.getClass();
                u2.g(q.i("navigation destination ", str3, " is not a direct child of this NavGraph"));
                return;
            }
            NavDestinationImpl navDestinationImpl2 = navDestination.k;
            if (str != null) {
                if (!str.equals(navDestinationImpl2.e)) {
                    NavDestination.DeepLinkMatch a = navDestinationImpl2.a(str);
                    if (a != null) {
                        bundle = a.k;
                    } else {
                        bundle = null;
                    }
                    if (bundle != null && !bundle.isEmpty()) {
                        Bundle a2 = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                        a2.putAll(bundle);
                        Bundle bundle2 = (Bundle) obj.j;
                        if (bundle2 != null) {
                            a2.putAll(bundle2);
                        }
                        obj.j = a2;
                    }
                }
                if (MapsKt.i(navDestinationImpl2.c).isEmpty()) {
                    continue;
                } else {
                    ArrayList a3 = NavArgumentKt.a(MapsKt.i(navDestinationImpl2.c), new o0(obj, 3));
                    if (!a3.isEmpty()) {
                        k8.r("Cannot navigate to startDestination ", navDestination, ". Missing required arguments [", a3, "]");
                        return;
                    }
                }
            }
            this.c.b(navDestination.j).d(CollectionsKt.B(b().a(navDestination, navDestination.b((Bundle) obj.j))), navOptions);
        }
    }

    @Override // androidx.navigation.Navigator
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public NavGraph a() {
        return new NavGraph(this);
    }
}
