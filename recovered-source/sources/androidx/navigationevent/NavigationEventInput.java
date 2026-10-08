package androidx.navigationevent;

import androidx.activity.OnBackPressedDispatcher;
import androidx.navigationevent.NavigationEventTransitionState;
import defpackage.p;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NavigationEventInput {
    public NavigationEventDispatcher a;
    public boolean b;

    public final void a() {
        NavigationEventDispatcher navigationEventDispatcher = this.a;
        if (navigationEventDispatcher != null) {
            if (!this.b) {
                navigationEventDispatcher.d(this, null);
            }
            NavigationEventProcessor navigationEventProcessor = navigationEventDispatcher.b;
            p pVar = navigationEventDispatcher.a;
            navigationEventProcessor.getClass();
            if (equals(navigationEventProcessor.h) && -1 == navigationEventProcessor.g) {
                NavigationEventHandler navigationEventHandler = navigationEventProcessor.f;
                if (navigationEventHandler == null) {
                    navigationEventHandler = navigationEventProcessor.c(-1);
                }
                navigationEventProcessor.f = null;
                navigationEventProcessor.g = 0;
                navigationEventProcessor.h = null;
                if (navigationEventHandler == null) {
                    ((OnBackPressedDispatcher) pVar.k).a.run();
                } else {
                    navigationEventHandler.b();
                }
                navigationEventProcessor.a.setValue(NavigationEventTransitionState.Idle.a);
            }
            this.b = false;
            return;
        }
        u2.l("This input is not added to any dispatcher.");
    }

    public void b(boolean z) {
    }
}
