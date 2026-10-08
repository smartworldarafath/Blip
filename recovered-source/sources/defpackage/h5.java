package defpackage;

import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.internal.NavControllerImpl;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class h5 implements LifecycleEventObserver {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ h5(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void h(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        Window window;
        View peekDecorView;
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 0:
                ComponentActivity componentActivity = (ComponentActivity) obj;
                int i2 = ComponentActivity.D;
                if (event == Lifecycle.Event.ON_STOP && (window = componentActivity.getWindow()) != null && (peekDecorView = window.peekDecorView()) != null) {
                    peekDecorView.cancelPendingInputEvents();
                    return;
                }
                return;
            case 1:
                NavControllerImpl navControllerImpl = (NavControllerImpl) obj;
                navControllerImpl.r = event.a();
                if (navControllerImpl.c != null) {
                    Iterator it = CollectionsKt.Y(navControllerImpl.f).iterator();
                    while (it.hasNext()) {
                        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
                        navBackStackEntry.getClass();
                        navBackStackEntry.m = event.a();
                        navBackStackEntry.h();
                    }
                    return;
                }
                return;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ((Function2) obj).n(lifecycleOwner, event);
                return;
            default:
                SavedStateRegistryImpl savedStateRegistryImpl = (SavedStateRegistryImpl) obj;
                if (event == Lifecycle.Event.ON_START) {
                    savedStateRegistryImpl.h = true;
                    return;
                } else {
                    if (event == Lifecycle.Event.ON_STOP) {
                        savedStateRegistryImpl.h = false;
                        return;
                    }
                    return;
                }
        }
    }
}
