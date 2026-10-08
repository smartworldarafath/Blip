package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractSharedFlowSlot<F> {
    public abstract boolean a(AbstractSharedFlow abstractSharedFlow);

    public abstract Continuation[] b(AbstractSharedFlow abstractSharedFlow);
}
