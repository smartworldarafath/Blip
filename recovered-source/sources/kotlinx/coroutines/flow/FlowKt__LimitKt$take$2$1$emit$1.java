package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$take$2$1", f = "Limit.kt", l = {59, 61}, m = "emit", v = 1)
/* loaded from: classes.dex */
public final class FlowKt__LimitKt$take$2$1$emit$1 extends ContinuationImpl {
    public /* synthetic */ Object m;
    public final /* synthetic */ FlowKt__LimitKt$take$2$1 n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__LimitKt$take$2$1$emit$1(FlowKt__LimitKt$take$2$1 flowKt__LimitKt$take$2$1, Continuation continuation) {
        super(continuation);
        this.n = flowKt__LimitKt$take$2$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.r(null, this);
    }
}
