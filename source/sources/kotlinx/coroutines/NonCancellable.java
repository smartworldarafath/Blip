package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NonCancellable extends AbstractCoroutineContextElement implements Job {
    public static final NonCancellable k = new AbstractCoroutineContextElement(Job.Key.j);

    @Override // kotlinx.coroutines.Job
    public final Object O(ContinuationImpl continuationImpl) {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle P(boolean z, boolean z2, Function1 function1) {
        return NonDisposableHandle.j;
    }

    @Override // kotlinx.coroutines.Job
    public final CancellationException R() {
        throw new IllegalStateException("This job is always active");
    }

    @Override // kotlinx.coroutines.Job
    public final ChildHandle X(JobSupport jobSupport) {
        return NonDisposableHandle.j;
    }

    @Override // kotlinx.coroutines.Job
    public final boolean h() {
        return true;
    }

    @Override // kotlinx.coroutines.Job
    public final boolean isCancelled() {
        return false;
    }

    @Override // kotlinx.coroutines.Job
    public final boolean start() {
        return false;
    }

    public final String toString() {
        return "NonCancellable";
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle v0(Function1 function1) {
        return NonDisposableHandle.j;
    }

    @Override // kotlinx.coroutines.Job
    public final void n(CancellationException cancellationException) {
    }
}
