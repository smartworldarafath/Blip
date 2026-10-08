package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface LifecycleEventObserver extends LifecycleObserver {
    void h(LifecycleOwner lifecycleOwner, Lifecycle.Event event);
}
