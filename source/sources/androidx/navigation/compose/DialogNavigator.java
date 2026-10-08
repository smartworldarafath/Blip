package androidx.navigation.compose;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.window.DialogProperties;
import androidx.navigation.FloatingWindow;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Navigator.Name("dialog")
/* loaded from: classes.dex */
public final class DialogNavigator extends Navigator<Destination> {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Destination extends NavDestination implements FloatingWindow {
        public final DialogProperties o;
        public final ComposableLambdaImpl p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(DialogNavigator dialogNavigator) {
            super(dialogNavigator);
            DialogProperties dialogProperties = new DialogProperties();
            this.o = dialogProperties;
            this.p = ComposableSingletons$DialogNavigatorKt.a;
        }
    }

    @Override // androidx.navigation.Navigator
    public final NavDestination a() {
        return new Destination(this);
    }

    @Override // androidx.navigation.Navigator
    public final void d(List list, NavOptions navOptions) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b().e((NavBackStackEntry) it.next());
        }
    }

    @Override // androidx.navigation.Navigator
    public final void e(NavBackStackEntry navBackStackEntry, boolean z) {
        b().d(navBackStackEntry, z);
        int v = CollectionsKt.v((Iterable) b().f.getValue(), navBackStackEntry);
        int i = 0;
        for (Object obj : (Iterable) b().f.getValue()) {
            int i2 = i + 1;
            if (i >= 0) {
                NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj;
                if (i > v) {
                    b().b(navBackStackEntry2);
                }
                i = i2;
            } else {
                CollectionsKt.T();
                throw null;
            }
        }
    }
}
