package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LifecycleCoroutineScopeImpl extends LifecycleCoroutineScope implements LifecycleEventObserver {
    public final Lifecycle j;
    public final CoroutineContext k;

    public LifecycleCoroutineScopeImpl(Lifecycle lifecycle, CoroutineContext coroutineContext) {
        coroutineContext.getClass();
        this.j = lifecycle;
        this.k = coroutineContext;
        if (((LifecycleRegistry) lifecycle).i == Lifecycle.State.j) {
            JobKt.b(coroutineContext, null);
        }
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.k;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void h(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        Lifecycle lifecycle = this.j;
        if (((LifecycleRegistry) lifecycle).i.compareTo(Lifecycle.State.j) <= 0) {
            lifecycle.b(this);
            JobKt.b(this.k, null);
        }
    }
}
