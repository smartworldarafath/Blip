package androidx.navigation;

import androidx.collection.SparseArrayCompat;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.internal.NavDestinationImpl;
import androidx.navigation.internal.NavGraphImpl;
import defpackage.k8;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class NavGraphBuilder extends NavDestinationBuilder<NavGraph> {
    public final NavigatorProvider f;
    public final String g;
    public final ArrayList h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphBuilder(NavigatorProvider navigatorProvider, String str) {
        super(navigatorProvider.b(NavigatorProvider.Companion.a(NavGraphNavigator.class)), null);
        navigatorProvider.getClass();
        this.h = new ArrayList();
        this.f = navigatorProvider;
        this.g = str;
    }

    public final NavGraph c() {
        int hashCode;
        NavGraph navGraph = (NavGraph) super.a();
        ArrayList arrayList = this.h;
        arrayList.getClass();
        NavGraphImpl navGraphImpl = navGraph.o;
        navGraphImpl.getClass();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            NavDestination navDestination = (NavDestination) it.next();
            if (navDestination != null) {
                SparseArrayCompat sparseArrayCompat = navGraphImpl.b;
                NavGraph navGraph2 = navGraphImpl.a;
                NavDestinationImpl navDestinationImpl = navGraph2.k;
                NavDestinationImpl navDestinationImpl2 = navDestination.k;
                int i = navDestinationImpl2.d;
                String str = navDestinationImpl2.e;
                if (i == 0 && str == null) {
                    u2.g("Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML.");
                    return null;
                }
                String str2 = navDestinationImpl.e;
                if (str2 != null && Intrinsics.a(str, str2)) {
                    k8.t("Destination ", navDestination, " cannot have the same route as graph ", navGraph2);
                    return null;
                }
                if (i != navDestinationImpl.d) {
                    NavDestination navDestination2 = (NavDestination) sparseArrayCompat.c(i);
                    if (navDestination2 == navDestination) {
                        continue;
                    } else if (navDestination.l == null) {
                        if (navDestination2 != null) {
                            navDestination2.l = null;
                        }
                        navDestination.l = navGraph2;
                        sparseArrayCompat.e(navDestinationImpl2.d, navDestination);
                    } else {
                        u2.l("Destination already has a parent set. Call NavGraph.remove() to remove the previous parent.");
                        return null;
                    }
                } else {
                    k8.t("Destination ", navDestination, " cannot have the same id as graph ", navGraph2);
                    return null;
                }
            }
        }
        String str3 = this.g;
        if (str3 == null) {
            if (this.b != null) {
                u2.l("You must set a start destination route");
                return null;
            }
            u2.l("You must set a start destination id");
            return null;
        }
        NavGraph navGraph3 = navGraphImpl.a;
        if (str3 == null) {
            hashCode = 0;
        } else {
            if (!str3.equals(navGraph3.k.e)) {
                if (!StringsKt.t(str3)) {
                    int i2 = NavDestination.n;
                    hashCode = "android-app://androidx.navigation/".concat(str3).hashCode();
                } else {
                    u2.g("Cannot have an empty start destination route");
                }
            } else {
                k8.t("Start destination ", str3, " cannot use the same route as the graph ", navGraph3);
            }
            return navGraph;
        }
        navGraphImpl.c = hashCode;
        navGraphImpl.e = str3;
        return navGraph;
    }
}
