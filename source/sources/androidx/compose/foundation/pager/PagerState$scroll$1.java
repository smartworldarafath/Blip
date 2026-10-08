package androidx.compose.foundation.pager;

import androidx.compose.foundation.MutatePriority;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.pager.PagerState", f = "PagerState.kt", l = {698, 703}, m = "scroll$suspendImpl", v = 1)
/* loaded from: classes.dex */
public final class PagerState$scroll$1 extends ContinuationImpl {
    public PagerState m;
    public MutatePriority n;
    public SuspendLambda o;
    public /* synthetic */ Object p;
    public final /* synthetic */ PagerState q;
    public int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerState$scroll$1(PagerState pagerState, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.q = pagerState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.p = obj;
        this.r |= Integer.MIN_VALUE;
        return PagerState.q(this.q, null, null, this);
    }
}
