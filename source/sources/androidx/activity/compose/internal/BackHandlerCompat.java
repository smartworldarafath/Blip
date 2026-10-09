package androidx.activity.compose.internal;

import androidx.activity.BackEventCompat;
import androidx.activity.OnBackPressedCallback;
import androidx.navigationevent.NavigationEvent;
import androidx.navigationevent.NavigationEventHandler;
import androidx.navigationevent.NavigationEventInfo;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BackHandlerCompat {
    public final BackHandlerCompat$onBackPressedCallback$1 a = new OnBackPressedCallback() { // from class: androidx.activity.compose.internal.BackHandlerCompat$onBackPressedCallback$1
        {
            super(false);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void b() {
            BackHandlerCompat.this.a();
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void a() {
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void c(BackEventCompat backEventCompat) {
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void d(BackEventCompat backEventCompat) {
        }
    };
    public final BackHandlerCompat$navigationEventHandler$1 b;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.activity.compose.internal.BackHandlerCompat$onBackPressedCallback$1] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.activity.compose.internal.BackHandlerCompat$navigationEventHandler$1] */
    public BackHandlerCompat(final NavigationEventInfo navigationEventInfo) {
        this.b = new NavigationEventHandler<NavigationEventInfo>(navigationEventInfo) { // from class: androidx.activity.compose.internal.BackHandlerCompat$navigationEventHandler$1
            @Override // androidx.navigationevent.NavigationEventHandler
            public final void b() {
                BackHandlerCompat.this.a();
            }

            @Override // androidx.navigationevent.NavigationEventHandler
            public final void c(NavigationEvent navigationEvent) {
                new BackEventCompat(navigationEvent);
            }

            @Override // androidx.navigationevent.NavigationEventHandler
            public final void d(NavigationEvent navigationEvent) {
                new BackEventCompat(navigationEvent);
            }

            @Override // androidx.navigationevent.NavigationEventHandler
            public final void a() {
            }
        };
    }

    public abstract void a();
}
