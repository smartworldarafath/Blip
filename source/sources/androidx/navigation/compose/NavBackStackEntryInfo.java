package androidx.navigation.compose;

import androidx.navigation.NavBackStackEntry;
import androidx.navigationevent.NavigationEventInfo;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NavBackStackEntryInfo extends NavigationEventInfo {
    public final NavBackStackEntry a;

    public NavBackStackEntryInfo(NavBackStackEntry navBackStackEntry) {
        this.a = navBackStackEntry;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && NavBackStackEntryInfo.class == obj.getClass()) {
            return Intrinsics.a(this.a, ((NavBackStackEntryInfo) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        NavBackStackEntry navBackStackEntry = this.a;
        if (navBackStackEntry != null) {
            return navBackStackEntry.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return "NavBackStackEntryInfo(visibleEntry=" + this.a + ")";
    }
}
