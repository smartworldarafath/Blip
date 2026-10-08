package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ThrowingCollector implements FlowCollector<Object> {
    public final Throwable j;

    public ThrowingCollector(Throwable th) {
        this.j = th;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object r(Object obj, Continuation continuation) {
        throw this.j;
    }
}
