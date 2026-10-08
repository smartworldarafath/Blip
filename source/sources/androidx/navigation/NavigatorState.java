package androidx.navigation;

import android.os.Bundle;
import androidx.navigation.internal.SynchronizedObject;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NavigatorState {
    public final SynchronizedObject a = new Object();
    public final MutableStateFlow b;
    public final MutableStateFlow c;
    public boolean d;
    public final StateFlow e;
    public final StateFlow f;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.navigation.internal.SynchronizedObject, java.lang.Object] */
    public NavigatorState() {
        MutableStateFlow a = StateFlowKt.a(EmptyList.j);
        this.b = a;
        MutableStateFlow a2 = StateFlowKt.a(EmptySet.j);
        this.c = a2;
        this.e = FlowKt.b(a);
        this.f = FlowKt.b(a2);
    }

    public abstract NavBackStackEntry a(NavDestination navDestination, Bundle bundle);

    public abstract void b(NavBackStackEntry navBackStackEntry);

    public abstract void c(NavBackStackEntry navBackStackEntry, boolean z);

    public abstract void d(NavBackStackEntry navBackStackEntry, boolean z);

    public abstract void e(NavBackStackEntry navBackStackEntry);
}
