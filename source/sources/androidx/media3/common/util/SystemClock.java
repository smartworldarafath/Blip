package androidx.media3.common.util;

import android.os.Handler;
import android.os.Looper;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SystemClock implements Clock {
    public final HandlerWrapper a(Looper looper, Handler.Callback callback) {
        return new SystemHandlerWrapper(new Handler(looper, callback));
    }
}
