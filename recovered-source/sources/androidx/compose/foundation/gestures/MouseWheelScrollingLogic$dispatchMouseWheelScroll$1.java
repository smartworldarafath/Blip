package androidx.compose.foundation.gestures;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$FloatRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic", f = "MouseWheelScrollingLogic.kt", l = {219, 273}, m = "dispatchMouseWheelScroll", v = 1)
/* loaded from: classes.dex */
public final class MouseWheelScrollingLogic$dispatchMouseWheelScroll$1 extends ContinuationImpl {
    public ScrollingLogic m;
    public Ref$FloatRef n;
    public float o;
    public /* synthetic */ Object p;
    public final /* synthetic */ MouseWheelScrollingLogic q;
    public int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MouseWheelScrollingLogic$dispatchMouseWheelScroll$1(MouseWheelScrollingLogic mouseWheelScrollingLogic, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.q = mouseWheelScrollingLogic;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.p = obj;
        this.r |= Integer.MIN_VALUE;
        return MouseWheelScrollingLogic.c(this.q, null, null, 0.0f, 0.0f, this);
    }
}
