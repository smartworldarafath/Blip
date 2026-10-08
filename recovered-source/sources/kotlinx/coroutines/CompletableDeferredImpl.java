package kotlinx.coroutines;

import defpackage.u2;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CompletableDeferredImpl<T> extends JobSupport implements CompletableDeferred<T> {
    @Override // kotlinx.coroutines.CompletableDeferred
    public final boolean C0(Throwable th) {
        return T(new CompletedExceptionally(th, false));
    }

    @Override // kotlinx.coroutines.Deferred
    public final Object Z(Continuation continuation) {
        Object u = u((ContinuationImpl) continuation);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        return u;
    }

    @Override // kotlinx.coroutines.Deferred
    public final Object q() {
        Object obj = JobSupport.j.get(this);
        if (!(obj instanceof Incomplete)) {
            if (!(obj instanceof CompletedExceptionally)) {
                return JobSupportKt.a(obj);
            }
            throw ((CompletedExceptionally) obj).a;
        }
        u2.l("This job has not completed yet");
        return null;
    }
}
