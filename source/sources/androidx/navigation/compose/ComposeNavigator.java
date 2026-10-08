package androidx.navigation.compose;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.Lifecycle;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorState;
import androidx.navigation.internal.NavControllerImpl;
import defpackage.u2;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Navigator.Name("composable")
/* loaded from: classes.dex */
public final class ComposeNavigator extends Navigator<Destination> {
    public final MutableState c = SnapshotStateKt.g(Boolean.FALSE);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Destination extends NavDestination {
        public final Function4 o;

        public Destination(ComposeNavigator composeNavigator, ComposableLambdaImpl composableLambdaImpl) {
            super(composeNavigator);
            this.o = composableLambdaImpl;
        }
    }

    @Override // androidx.navigation.Navigator
    public final NavDestination a() {
        return new Destination(this, ComposableSingletons$ComposeNavigatorKt.a);
    }

    @Override // androidx.navigation.Navigator
    public final void d(List list, NavOptions navOptions) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
            NavigatorState b = b();
            StateFlow stateFlow = b.e;
            navBackStackEntry.getClass();
            MutableStateFlow mutableStateFlow = b.c;
            Iterable iterable = (Iterable) mutableStateFlow.getValue();
            if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
                Iterator it2 = iterable.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    if (((NavBackStackEntry) it2.next()) == navBackStackEntry) {
                        Iterable iterable2 = (Iterable) stateFlow.getValue();
                        if (!(iterable2 instanceof Collection) || !((Collection) iterable2).isEmpty()) {
                            Iterator it3 = iterable2.iterator();
                            while (it3.hasNext()) {
                                if (((NavBackStackEntry) it3.next()) == navBackStackEntry) {
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) CollectionsKt.A((List) stateFlow.getValue());
            if (navBackStackEntry2 != null) {
                mutableStateFlow.setValue(SetsKt.c((Set) mutableStateFlow.getValue(), navBackStackEntry2));
            }
            mutableStateFlow.setValue(SetsKt.c((Set) mutableStateFlow.getValue(), navBackStackEntry));
            b.e(navBackStackEntry);
        }
        ((SnapshotMutableStateImpl) this.c).setValue(Boolean.FALSE);
    }

    @Override // androidx.navigation.Navigator
    public final void e(NavBackStackEntry navBackStackEntry, boolean z) {
        b().d(navBackStackEntry, z);
        ((SnapshotMutableStateImpl) this.c).setValue(Boolean.TRUE);
    }

    public final void g(NavBackStackEntry navBackStackEntry) {
        NavController.NavControllerNavigatorState navControllerNavigatorState = (NavController.NavControllerNavigatorState) b();
        navBackStackEntry.getClass();
        MutableStateFlow mutableStateFlow = navControllerNavigatorState.c;
        mutableStateFlow.setValue(SetsKt.c((Set) mutableStateFlow.getValue(), navBackStackEntry));
        NavControllerImpl navControllerImpl = navControllerNavigatorState.h.b;
        navControllerImpl.getClass();
        if (navControllerImpl.f.contains(navBackStackEntry)) {
            navBackStackEntry.v = Lifecycle.State.m;
            navBackStackEntry.h();
        } else {
            u2.l("Cannot transition entry that is not in the back stack");
        }
    }
}
