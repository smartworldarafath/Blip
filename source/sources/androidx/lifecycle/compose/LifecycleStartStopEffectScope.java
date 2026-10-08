package androidx.lifecycle.compose;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LifecycleStartStopEffectScope implements LifecycleOwner {
    public final Lifecycle j;

    public LifecycleStartStopEffectScope(Lifecycle lifecycle) {
        this.j = lifecycle;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final Lifecycle g() {
        return this.j;
    }
}
