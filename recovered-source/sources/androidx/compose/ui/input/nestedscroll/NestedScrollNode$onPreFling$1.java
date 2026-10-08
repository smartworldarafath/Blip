package androidx.compose.ui.input.nestedscroll;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.ui.input.nestedscroll.NestedScrollNode", f = "NestedScrollNode.kt", l = {109, 110}, m = "onPreFling-QWom1Mo", v = 1)
/* loaded from: classes.dex */
public final class NestedScrollNode$onPreFling$1 extends ContinuationImpl {
    public long m;
    public /* synthetic */ Object n;
    public final /* synthetic */ NestedScrollNode o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NestedScrollNode$onPreFling$1(NestedScrollNode nestedScrollNode, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.o = nestedScrollNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return this.o.n0(0L, this);
    }
}
