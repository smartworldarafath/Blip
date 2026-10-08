package androidx.compose.runtime;

import defpackage.p0;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.runtime.ProduceStateScopeImpl", f = "ProduceState.kt", l = {208}, m = "awaitDispose", v = 1)
/* loaded from: classes.dex */
public final class ProduceStateScopeImpl$awaitDispose$1 extends ContinuationImpl {
    public p0 m;
    public /* synthetic */ Object n;
    public final /* synthetic */ ProduceStateScopeImpl o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProduceStateScopeImpl$awaitDispose$1(ProduceStateScopeImpl produceStateScopeImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.o = produceStateScopeImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        this.o.f(null, this);
        return CoroutineSingletons.j;
    }
}
