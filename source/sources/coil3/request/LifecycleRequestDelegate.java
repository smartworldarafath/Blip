package coil3.request;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import coil3.util.LifecyclesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LifecycleRequestDelegate implements RequestDelegate, DefaultLifecycleObserver {
    public final Lifecycle j;
    public final Job k;

    public LifecycleRequestDelegate(Lifecycle lifecycle, Job job) {
        this.j = lifecycle;
        this.k = job;
    }

    @Override // coil3.request.RequestDelegate
    public final Object a(Continuation continuation) {
        return LifecyclesKt.a(this.j, (ContinuationImpl) continuation);
    }

    @Override // coil3.request.RequestDelegate
    public final void c() {
        this.j.b(this);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        this.k.n(null);
    }

    @Override // coil3.request.RequestDelegate
    public final void start() {
        this.j.a(this);
    }
}
