package androidx.navigationevent;

import androidx.navigationevent.NavigationEventInfo;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NavigationEventHandler<T extends NavigationEventInfo> {
    public NavigationEventInfo a;
    public List b;
    public List c;
    public boolean d;
    public NavigationEventDispatcher e;

    public NavigationEventHandler(NavigationEventInfo navigationEventInfo, boolean z) {
        this.a = navigationEventInfo;
        EmptyList emptyList = EmptyList.j;
        this.b = emptyList;
        this.c = emptyList;
        this.d = z;
    }

    public abstract void a();

    public abstract void b();

    public abstract void c(NavigationEvent navigationEvent);

    public abstract void d(NavigationEvent navigationEvent);

    public final void e() {
        NavigationEventDispatcher navigationEventDispatcher = this.e;
        if (navigationEventDispatcher != null && navigationEventDispatcher.c.i(this)) {
            NavigationEventProcessor navigationEventProcessor = navigationEventDispatcher.b;
            navigationEventProcessor.getClass();
            if (equals(navigationEventProcessor.f)) {
                if (navigationEventProcessor.g == -1) {
                    a();
                }
                navigationEventProcessor.f = null;
                navigationEventProcessor.g = 0;
                navigationEventProcessor.h = null;
            }
            navigationEventProcessor.d.remove(this);
            navigationEventProcessor.e.remove(this);
            this.e = null;
            navigationEventProcessor.b();
        }
    }

    public final void f(boolean z) {
        NavigationEventProcessor navigationEventProcessor;
        if (this.d != z) {
            this.d = z;
            NavigationEventDispatcher navigationEventDispatcher = this.e;
            if (navigationEventDispatcher != null && (navigationEventProcessor = navigationEventDispatcher.b) != null) {
                navigationEventProcessor.b();
            }
        }
    }
}
