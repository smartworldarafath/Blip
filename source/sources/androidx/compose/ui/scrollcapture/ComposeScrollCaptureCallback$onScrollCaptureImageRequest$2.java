package androidx.compose.ui.scrollcapture;

import androidx.compose.ui.unit.IntRect;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback", f = "ComposeScrollCaptureCallback.android.kt", l = {135, 138}, m = "onScrollCaptureImageRequest", v = 1)
/* loaded from: classes.dex */
public final class ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2 extends ContinuationImpl {
    public Object m;
    public IntRect n;
    public int o;
    public int p;
    public /* synthetic */ Object q;
    public final /* synthetic */ ComposeScrollCaptureCallback r;
    public int s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2(ComposeScrollCaptureCallback composeScrollCaptureCallback, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.r = composeScrollCaptureCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.q = obj;
        this.s |= Integer.MIN_VALUE;
        return ComposeScrollCaptureCallback.a(this.r, null, null, this);
    }
}
