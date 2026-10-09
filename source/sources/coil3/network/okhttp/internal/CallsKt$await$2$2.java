package coil3.network.okhttp.internal;

import kotlinx.coroutines.CancellableContinuationImpl;
import okhttp3.Response;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CallsKt$await$2$2 {
    public final /* synthetic */ CancellableContinuationImpl a;

    public CallsKt$await$2$2(CancellableContinuationImpl cancellableContinuationImpl) {
        this.a = cancellableContinuationImpl;
    }

    public final void a(Response response) {
        this.a.m(response, CallsKt$await$2$2$onResponse$1.j);
    }
}
