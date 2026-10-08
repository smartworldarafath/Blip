package androidx.activity.compose.internal;

import androidx.activity.OnBackPressedDispatcher;
import androidx.navigationevent.NavigationEventDispatcher;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BackHandlerDispatcherCompat {
    public final NavigationEventDispatcher a;
    public final OnBackPressedDispatcher b;

    /* JADX WARN: Multi-variable type inference failed */
    public BackHandlerDispatcherCompat(NavigationEventDispatcher navigationEventDispatcher, OnBackPressedDispatcher onBackPressedDispatcher) {
        this.a = navigationEventDispatcher;
        this.b = onBackPressedDispatcher;
        if ((navigationEventDispatcher == null ? onBackPressedDispatcher : navigationEventDispatcher) != null) {
            return;
        }
        u2.g("At least one dispatcher (NavigationEventDispatcher or OnBackPressedDispatcher) must be non-null.");
        throw null;
    }
}
