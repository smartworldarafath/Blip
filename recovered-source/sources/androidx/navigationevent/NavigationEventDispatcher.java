package androidx.navigationevent;

import androidx.collection.MutableOrderedScatterSet;
import androidx.collection.OrderedScatterSetKt;
import androidx.navigationevent.NavigationEventTransitionState;
import defpackage.fe;
import defpackage.p;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NavigationEventDispatcher {
    public final p a;
    public final NavigationEventProcessor b = new NavigationEventProcessor();
    public final MutableOrderedScatterSet c;
    public final MutableOrderedScatterSet d;

    public NavigationEventDispatcher(p pVar) {
        this.a = pVar;
        OrderedScatterSetKt.a();
        this.c = OrderedScatterSetKt.a();
        this.d = OrderedScatterSetKt.a();
    }

    public static void a(NavigationEventDispatcher navigationEventDispatcher, NavigationEventHandler navigationEventHandler) {
        navigationEventDispatcher.getClass();
        navigationEventHandler.getClass();
        if (navigationEventDispatcher.c.b(navigationEventHandler)) {
            NavigationEventProcessor navigationEventProcessor = navigationEventDispatcher.b;
            navigationEventProcessor.getClass();
            if (navigationEventHandler.e == null) {
                navigationEventProcessor.e.addFirst(navigationEventHandler);
                navigationEventHandler.e = navigationEventDispatcher;
                navigationEventProcessor.b();
                return;
            }
            fe.u("Handler '", navigationEventHandler, "' is already registered with a dispatcher");
        }
    }

    public final void b(NavigationEventInput navigationEventInput) {
        if (this.d.b(navigationEventInput)) {
            this.b.a(this, navigationEventInput, -1);
        }
    }

    public final void c(OnBackInvokedInput onBackInvokedInput, int i) {
        if (i != 1 && i != 0) {
            fe.l(q.g(i, "Unsupported priority value: "));
        } else if (this.d.b(onBackInvokedInput)) {
            this.b.a(this, onBackInvokedInput, i);
        }
    }

    public final void d(NavigationEventInput navigationEventInput, NavigationEvent navigationEvent) {
        NavigationEventProcessor navigationEventProcessor = this.b;
        navigationEventProcessor.getClass();
        if (navigationEventProcessor.g == 0) {
            NavigationEventHandler c = navigationEventProcessor.c(-1);
            navigationEventProcessor.f = c;
            navigationEventProcessor.g = -1;
            navigationEventProcessor.h = navigationEventInput;
            if (navigationEvent != null) {
                if (c != null) {
                    new NavigationEventTransitionState.InProgress(navigationEvent, -1);
                    c.d(navigationEvent);
                }
                navigationEventProcessor.a.setValue(new NavigationEventTransitionState.InProgress(navigationEvent, -1));
            }
        }
    }
}
