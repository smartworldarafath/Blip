package kotlin.coroutines.jvm.internal;

import defpackage.u2;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RestrictedContinuationImpl extends BaseContinuationImpl {
    public RestrictedContinuationImpl(Continuation continuation) {
        super(continuation);
        if (continuation != null && continuation.o() != EmptyCoroutineContext.j) {
            u2.g("Coroutines with restricted suspension must have EmptyCoroutineContext");
            throw null;
        }
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext o() {
        return EmptyCoroutineContext.j;
    }
}
