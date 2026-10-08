package coil3.network.okhttp.internal;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.network.okhttp.internal.CallFactoryNetworkClient", f = "CallFactoryNetworkClient.kt", l = {24, 24, 25}, m = "executeRequest-impl", v = 1)
/* loaded from: classes.dex */
public final class CallFactoryNetworkClient$executeRequest$1<T> extends ContinuationImpl {
    public Function2 m;
    public Object n;
    public /* synthetic */ Object o;
    public int p;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.o = obj;
        this.p |= Integer.MIN_VALUE;
        return CallFactoryNetworkClient.a(null, null, null, this);
    }
}
