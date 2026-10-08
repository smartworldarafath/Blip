package kotlinx.coroutines.flow;

import defpackage.a7;
import defpackage.z6;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class FlowKt__DistinctKt {
    public static final a7 a = new a7(11);
    public static final z6 b = new z6(4);

    public static final Flow a(Flow flow, Function1 function1, Function2 function2) {
        if (flow instanceof DistinctFlowImpl) {
            DistinctFlowImpl distinctFlowImpl = (DistinctFlowImpl) flow;
            if (distinctFlowImpl.k == function1 && distinctFlowImpl.l == function2) {
                return flow;
            }
        }
        return new DistinctFlowImpl(flow, function1, function2);
    }
}
