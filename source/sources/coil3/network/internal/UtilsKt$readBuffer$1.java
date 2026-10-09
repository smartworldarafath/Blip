package coil3.network.internal;

import coil3.network.NetworkResponseBody;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import okio.Buffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.network.internal.UtilsKt", f = "utils.kt", l = {23}, m = "readBuffer", v = 1)
/* loaded from: classes.dex */
public final class UtilsKt$readBuffer$1 extends ContinuationImpl {
    public NetworkResponseBody m;
    public Buffer n;
    public /* synthetic */ Object o;
    public int p;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.o = obj;
        this.p |= Integer.MIN_VALUE;
        return UtilsKt.a(null, this);
    }
}
