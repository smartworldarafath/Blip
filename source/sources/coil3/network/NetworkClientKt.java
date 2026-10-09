package coil3.network;

import okio.BufferedSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NetworkClientKt {
    public static final NetworkResponseBody a(BufferedSource bufferedSource) {
        return new SourceResponseBody(bufferedSource);
    }
}
