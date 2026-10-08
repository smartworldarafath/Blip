package androidx.activity;

import androidx.navigationevent.NavigationEvent;
import androidx.navigationevent.NavigationEventHandler;
import androidx.navigationevent.NavigationEventInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class OnBackPressedCallback {
    public boolean b;
    public final ArrayList a = new ArrayList();
    public final CopyOnWriteArrayList c = new CopyOnWriteArrayList();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class OnBackPressedEventHandler extends NavigationEventHandler<NavigationEventInfo> {
        public final OnBackPressedCallback f;
        public boolean g;

        public OnBackPressedEventHandler(OnBackPressedCallback onBackPressedCallback, NavigationEventInfo navigationEventInfo) {
            super(navigationEventInfo, onBackPressedCallback.b);
            this.f = onBackPressedCallback;
            this.g = true;
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public final void a() {
            this.f.a();
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public final void b() {
            this.f.b();
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public final void c(NavigationEvent navigationEvent) {
            this.f.c(new BackEventCompat(navigationEvent));
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public final void d(NavigationEvent navigationEvent) {
            navigationEvent.getClass();
            this.f.d(new BackEventCompat(navigationEvent));
        }

        public final void g(boolean z) {
            boolean z2;
            this.g = z;
            if (z && this.f.b) {
                z2 = true;
            } else {
                z2 = false;
            }
            f(z2);
        }
    }

    public OnBackPressedCallback(boolean z) {
        this.b = z;
    }

    public abstract void b();

    public final void e(boolean z) {
        boolean z2;
        this.b = z;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            OnBackPressedEventHandler onBackPressedEventHandler = (OnBackPressedEventHandler) it.next();
            if (onBackPressedEventHandler.g && z) {
                z2 = true;
            } else {
                z2 = false;
            }
            onBackPressedEventHandler.f(z2);
        }
    }

    public void a() {
    }

    public void c(BackEventCompat backEventCompat) {
    }

    public void d(BackEventCompat backEventCompat) {
    }
}
