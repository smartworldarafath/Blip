package kotlinx.coroutines.flow.internal;

import kotlinx.coroutines.internal.ScopeCoroutine;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class FlowCoroutine<T> extends ScopeCoroutine<T> {
    @Override // kotlinx.coroutines.JobSupport
    public final boolean C(Throwable th) {
        if (th instanceof ChildCancelledException) {
            return true;
        }
        return x(th);
    }
}
