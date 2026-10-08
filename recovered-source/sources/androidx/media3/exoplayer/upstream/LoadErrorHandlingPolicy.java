package androidx.media3.exoplayer.upstream;

import java.io.IOException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface LoadErrorHandlingPolicy {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class LoadErrorInfo {
        public final IOException a;
        public final int b;

        public LoadErrorInfo(IOException iOException, int i) {
            this.a = iOException;
            this.b = i;
        }
    }
}
