package androidx.compose.ui.scrollcapture;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.ui.scrollcapture.RelativeScroller", f = "ComposeScrollCaptureCallback.android.kt", l = {300}, m = "scrollBy", v = 1)
/* loaded from: classes.dex */
public final class RelativeScroller$scrollBy$1 extends ContinuationImpl {
    public /* synthetic */ Object m;
    public final /* synthetic */ RelativeScroller n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RelativeScroller$scrollBy$1(RelativeScroller relativeScroller, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.n = relativeScroller;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.a(0.0f, this);
    }
}
