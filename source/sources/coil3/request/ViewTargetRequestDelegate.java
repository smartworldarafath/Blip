package coil3.request;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import coil3.RealImageLoader;
import coil3.target.ViewTarget;
import coil3.util.LifecyclesKt;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ViewTargetRequestDelegate implements RequestDelegate, DefaultLifecycleObserver {
    public final RealImageLoader j;
    public final ImageRequest k;
    public final ViewTarget l;
    public final Lifecycle m;
    public final Job n;

    public ViewTargetRequestDelegate(RealImageLoader realImageLoader, ImageRequest imageRequest, ViewTarget viewTarget, Lifecycle lifecycle, Job job) {
        this.j = realImageLoader;
        this.k = imageRequest;
        this.l = viewTarget;
        this.m = lifecycle;
        this.n = job;
    }

    @Override // coil3.request.RequestDelegate
    public final Object a(Continuation continuation) {
        Lifecycle lifecycle = this.m;
        if (lifecycle != null) {
            return LifecyclesKt.a(lifecycle, (ContinuationImpl) continuation);
        }
        return Unit.a;
    }

    @Override // coil3.request.RequestDelegate
    public final void b() {
        ViewTarget viewTarget = this.l;
        if (viewTarget.getView().isAttachedToWindow()) {
            return;
        }
        ViewTargetRequestManager a = ViewTargetRequestManagerKt.a(viewTarget.getView());
        ViewTargetRequestDelegate viewTargetRequestDelegate = a.m;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.d();
        }
        a.m = this;
        throw new CancellationException("'ViewTarget.view' must be attached to a window.");
    }

    public final void d() {
        this.n.n(null);
        ViewTarget viewTarget = this.l;
        boolean z = viewTarget instanceof LifecycleObserver;
        Lifecycle lifecycle = this.m;
        if (z && lifecycle != null) {
            lifecycle.b((LifecycleObserver) viewTarget);
        }
        if (lifecycle != null) {
            lifecycle.b(this);
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        ViewTargetRequestManager a = ViewTargetRequestManagerKt.a(this.l.getView());
        synchronized (a) {
            Job job = a.l;
            if (job != null) {
                ((JobSupport) job).n(null);
            }
            GlobalScope globalScope = GlobalScope.j;
            DefaultScheduler defaultScheduler = Dispatchers.a;
            a.l = BuildersKt.c(globalScope, MainDispatcherLoader.a.o, null, new ViewTargetRequestManager$dispose$1(a, null), 2);
            a.k = null;
        }
    }

    @Override // coil3.request.RequestDelegate
    public final void start() {
        Lifecycle lifecycle = this.m;
        if (lifecycle != null) {
            lifecycle.a(this);
        }
        ViewTarget viewTarget = this.l;
        if ((viewTarget instanceof LifecycleObserver) && lifecycle != null) {
            LifecycleObserver lifecycleObserver = (LifecycleObserver) viewTarget;
            lifecycle.b(lifecycleObserver);
            lifecycle.a(lifecycleObserver);
        }
        ViewTargetRequestManager a = ViewTargetRequestManagerKt.a(viewTarget.getView());
        ViewTargetRequestDelegate viewTargetRequestDelegate = a.m;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.d();
        }
        a.m = this;
    }
}
