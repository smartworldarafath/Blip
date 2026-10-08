package kotlinx.coroutines.flow;

import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SharingConfig<T> {
    public final Flow a;
    public final CoroutineContext b;

    public SharingConfig(Flow flow, CoroutineContext coroutineContext) {
        this.a = flow;
        this.b = coroutineContext;
    }
}
