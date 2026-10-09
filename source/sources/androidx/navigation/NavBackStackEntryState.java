package androidx.navigation;

import android.content.Context;
import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.navigation.internal.NavBackStackEntryStateImpl;
import androidx.navigation.internal.NavContext;
import java.util.Arrays;
import kotlin.Pair;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NavBackStackEntryState {
    public final NavBackStackEntryStateImpl a;

    public NavBackStackEntryState(Bundle bundle) {
        bundle.getClass();
        bundle.setClassLoader(NavBackStackEntryState.class.getClassLoader());
        this.a = new NavBackStackEntryStateImpl(bundle);
    }

    public final NavBackStackEntry a(NavContext navContext, NavDestination navDestination, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider) {
        Bundle bundle;
        navContext.getClass();
        state.getClass();
        NavBackStackEntryStateImpl navBackStackEntryStateImpl = this.a;
        Bundle bundle2 = navBackStackEntryStateImpl.c;
        ClassLoader classLoader = null;
        if (bundle2 != null) {
            Context context = navContext.a;
            if (context != null) {
                classLoader = context.getClassLoader();
            }
            bundle2.setClassLoader(classLoader);
            bundle = bundle2;
        } else {
            bundle = null;
        }
        String str = navBackStackEntryStateImpl.a;
        Bundle bundle3 = navBackStackEntryStateImpl.d;
        str.getClass();
        return new NavBackStackEntry(navContext, navDestination, bundle, state, navViewModelStoreProvider, str, bundle3);
    }

    public final Bundle b() {
        NavBackStackEntryStateImpl navBackStackEntryStateImpl = this.a;
        navBackStackEntryStateImpl.getClass();
        Bundle a = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        String str = navBackStackEntryStateImpl.a;
        str.getClass();
        a.putString("nav-entry-state:id", str);
        a.putInt("nav-entry-state:destination-id", navBackStackEntryStateImpl.b);
        Bundle bundle = navBackStackEntryStateImpl.c;
        if (bundle == null) {
            bundle = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        }
        a.putBundle("nav-entry-state:args", bundle);
        Bundle bundle2 = navBackStackEntryStateImpl.d;
        bundle2.getClass();
        a.putBundle("nav-entry-state:saved-state", bundle2);
        return a;
    }

    public NavBackStackEntryState(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        this.a = new NavBackStackEntryStateImpl(navBackStackEntry, navBackStackEntry.k.k.d);
    }
}
