package androidx.navigation.compose;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigationevent.NavigationEvent;
import androidx.navigationevent.NavigationEventHandler;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NavHostEventHandler extends NavigationEventHandler<NavBackStackEntryInfo> {
    public final ComposeNavigator f;
    public NavBackStackEntry g;
    public final MutableState h;
    public final MutableFloatState i;
    public final MutableIntState j;

    public NavHostEventHandler(ComposeNavigator composeNavigator) {
        super(new NavBackStackEntryInfo((NavBackStackEntry) CollectionsKt.A((List) composeNavigator.b().e.getValue())), true);
        this.f = composeNavigator;
        this.h = SnapshotStateKt.g(Boolean.FALSE);
        this.i = PrimitiveSnapshotStateKt.a(0.0f);
        this.j = SnapshotIntStateKt.a(2);
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public final void a() {
        ((SnapshotMutableStateImpl) this.h).setValue(Boolean.FALSE);
        ((SnapshotMutableFloatStateImpl) this.i).k(0.0f);
        ((SnapshotMutableIntStateImpl) this.j).k(2);
        this.g = null;
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public final void b() {
        MutableState mutableState = this.h;
        if (!((Boolean) ((SnapshotMutableStateImpl) mutableState).getValue()).booleanValue()) {
            g();
        }
        NavBackStackEntry navBackStackEntry = this.g;
        if (navBackStackEntry != null) {
            this.f.e(navBackStackEntry, false);
        }
        ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.FALSE);
        ((SnapshotMutableFloatStateImpl) this.i).k(0.0f);
        ((SnapshotMutableIntStateImpl) this.j).k(2);
        this.g = null;
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public final void c(NavigationEvent navigationEvent) {
        ((SnapshotMutableStateImpl) this.h).setValue(Boolean.TRUE);
        ((SnapshotMutableFloatStateImpl) this.i).k(navigationEvent.b);
        ((SnapshotMutableIntStateImpl) this.j).k(navigationEvent.a);
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public final void d(NavigationEvent navigationEvent) {
        g();
        ((SnapshotMutableStateImpl) this.h).setValue(Boolean.TRUE);
        ((SnapshotMutableFloatStateImpl) this.i).k(navigationEvent.b);
        ((SnapshotMutableIntStateImpl) this.j).k(navigationEvent.a);
    }

    public final void g() {
        ComposeNavigator composeNavigator = this.f;
        List list = (List) composeNavigator.b().e.getValue();
        if (list.size() < 2) {
            return;
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) CollectionsKt.z(list);
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) list.get(list.size() - 2);
        composeNavigator.g(navBackStackEntry);
        composeNavigator.g(navBackStackEntry2);
        this.g = navBackStackEntry;
    }
}
