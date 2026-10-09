package androidx.compose.foundation.lazy;

import androidx.compose.foundation.MutatePriority;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.lazy.LazyListState", f = "LazyListState.kt", l = {471, 473}, m = "scroll", v = 1)
/* loaded from: classes.dex */
public final class LazyListState$scroll$1 extends ContinuationImpl {
    public MutatePriority m;
    public SuspendLambda n;
    public /* synthetic */ Object o;
    public final /* synthetic */ LazyListState p;
    public int q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyListState$scroll$1(LazyListState lazyListState, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.p = lazyListState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.o = obj;
        this.q |= Integer.MIN_VALUE;
        return this.p.c(null, null, this);
    }
}
