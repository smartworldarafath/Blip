package kotlinx.coroutines;

import kotlin.Result;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CompletableDeferredKt {
    /* JADX WARN: Type inference failed for: r0v0, types: [kotlinx.coroutines.CompletableDeferred, kotlinx.coroutines.JobSupport] */
    public static final CompletableDeferred a(Job job) {
        ?? jobSupport = new JobSupport(true);
        jobSupport.M(job);
        return jobSupport;
    }

    public static final void b(CompletableDeferred completableDeferred, Object obj) {
        Throwable a = Result.a(obj);
        CompletableDeferredImpl completableDeferredImpl = (CompletableDeferredImpl) completableDeferred;
        if (a == null) {
            completableDeferredImpl.T(obj);
        } else {
            completableDeferredImpl.C0(a);
        }
    }
}
