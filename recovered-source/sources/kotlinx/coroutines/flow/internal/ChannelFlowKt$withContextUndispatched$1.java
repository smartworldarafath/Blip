package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowKt", f = "ChannelFlow.kt", l = {221}, m = "withContextUndispatched", v = 1)
/* loaded from: classes.dex */
public final class ChannelFlowKt$withContextUndispatched$1<T, V> extends ContinuationImpl {
    public Object m;
    public CoroutineContext n;
    public Object o;
    public Object p;
    public /* synthetic */ Object q;
    public int r;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.q = obj;
        this.r |= Integer.MIN_VALUE;
        return ChannelFlowKt.a(null, null, null, null, this);
    }
}
