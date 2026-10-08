package androidx.navigation.internal;

import android.net.Uri;
import android.os.Bundle;
import androidx.navigation.NavDeepLink;
import androidx.navigation.NavDestination;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NavDestinationImpl {
    public final NavDestination a;
    public final ArrayList b = new ArrayList();
    public final LinkedHashMap c = new LinkedHashMap();
    public int d;
    public String e;
    public Lazy f;

    public NavDestinationImpl(NavDestination navDestination) {
        this.a = navDestination;
    }

    public final NavDestination.DeepLinkMatch a(String str) {
        NavDeepLink navDeepLink;
        int size;
        str.getClass();
        Lazy lazy = this.f;
        if (lazy != null && (navDeepLink = (NavDeepLink) lazy.getValue()) != null) {
            int i = NavDestination.n;
            Uri parse = Uri.parse("android-app://androidx.navigation/".concat(str));
            parse.getClass();
            Bundle c = navDeepLink.c(parse, this.c);
            if (c != null) {
                String str2 = navDeepLink.a;
                if (str2 == null) {
                    size = 0;
                } else {
                    List<String> pathSegments = parse.getPathSegments();
                    Uri parse2 = Uri.parse(str2);
                    parse2.getClass();
                    size = CollectionsKt.w(pathSegments, parse2.getPathSegments()).size();
                }
                return new NavDestination.DeepLinkMatch(this.a, c, navDeepLink.l, size, false);
            }
            return null;
        }
        return null;
    }
}
