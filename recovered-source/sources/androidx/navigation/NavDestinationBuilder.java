package androidx.navigation;

import androidx.navigation.NavDeepLink;
import androidx.navigation.NavDestination;
import androidx.navigation.internal.NavDestinationImpl;
import defpackage.kb;
import defpackage.u2;
import io.sentry.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NavDestinationBuilder<D extends NavDestination> {
    public final Navigator a;
    public final String b;
    public final LinkedHashMap c = new LinkedHashMap();
    public final ArrayList d = new ArrayList();
    public final LinkedHashMap e = new LinkedHashMap();

    public NavDestinationBuilder(Navigator navigator, String str) {
        this.a = navigator;
        this.b = str;
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.navigation.NavDeepLink$Builder, java.lang.Object] */
    public NavDestination a() {
        NavDestination b = b();
        b.getClass();
        NavDestinationImpl navDestinationImpl = b.k;
        for (Map.Entry entry : this.c.entrySet()) {
            String str = (String) entry.getKey();
            NavArgument navArgument = (NavArgument) entry.getValue();
            str.getClass();
            navArgument.getClass();
            navDestinationImpl.getClass();
            navDestinationImpl.c.put(str, navArgument);
        }
        Iterator it = this.d.iterator();
        while (true) {
            final int i = 1;
            if (it.hasNext()) {
                final NavDeepLink navDeepLink = (NavDeepLink) it.next();
                navDeepLink.getClass();
                navDestinationImpl.getClass();
                ArrayList a = NavArgumentKt.a(navDestinationImpl.c, new Function1() { // from class: tb
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        boolean contains;
                        int i2 = i;
                        NavDeepLink navDeepLink2 = navDeepLink;
                        String str2 = (String) obj;
                        switch (i2) {
                            case 0:
                                str2.getClass();
                                contains = navDeepLink2.b().contains(str2);
                                break;
                            default:
                                str2.getClass();
                                contains = navDeepLink2.b().contains(str2);
                                break;
                        }
                        return Boolean.valueOf(!contains);
                    }
                });
                if (a.isEmpty()) {
                    navDestinationImpl.b.add(navDeepLink);
                } else {
                    throw new IllegalArgumentException(("Deep link " + navDeepLink.a + " can't be used to open destination " + navDestinationImpl.a + ".\nFollowing required arguments are missing: " + a).toString());
                }
            } else {
                Iterator it2 = this.e.entrySet().iterator();
                if (!it2.hasNext()) {
                    String str2 = this.b;
                    if (str2 != null) {
                        navDestinationImpl.getClass();
                        if (!StringsKt.t(str2)) {
                            String concat = "android-app://androidx.navigation/".concat(str2);
                            ?? obj = new Object();
                            obj.a = concat;
                            final NavDeepLink navDeepLink2 = new NavDeepLink(obj.a);
                            final int i2 = 0;
                            ArrayList a2 = NavArgumentKt.a(navDestinationImpl.c, new Function1() { // from class: tb
                                @Override // kotlin.jvm.functions.Function1
                                public final Object b(Object obj2) {
                                    boolean contains;
                                    int i22 = i2;
                                    NavDeepLink navDeepLink22 = navDeepLink2;
                                    String str22 = (String) obj2;
                                    switch (i22) {
                                        case 0:
                                            str22.getClass();
                                            contains = navDeepLink22.b().contains(str22);
                                            break;
                                        default:
                                            str22.getClass();
                                            contains = navDeepLink22.b().contains(str22);
                                            break;
                                    }
                                    return Boolean.valueOf(!contains);
                                }
                            });
                            if (a2.isEmpty()) {
                                navDestinationImpl.f = LazyKt.b(new kb(1, concat));
                                navDestinationImpl.d = concat.hashCode();
                                navDestinationImpl.e = str2;
                            } else {
                                throw new IllegalArgumentException(("Cannot set route \"" + str2 + "\" for destination " + navDestinationImpl.a + ". Following required arguments are missing: " + a2).toString());
                            }
                        } else {
                            u2.g("Cannot have an empty route");
                            return null;
                        }
                    }
                    return b;
                }
                Map.Entry entry2 = (Map.Entry) it2.next();
                ((Number) entry2.getKey()).intValue();
                entry2.getValue().getClass();
                d.i();
                return null;
            }
        }
    }

    public NavDestination b() {
        return this.a.a();
    }
}
