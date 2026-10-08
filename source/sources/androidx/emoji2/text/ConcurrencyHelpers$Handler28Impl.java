package androidx.emoji2.text;

import android.os.Handler;
import android.os.Looper;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class ConcurrencyHelpers$Handler28Impl {
    public static Handler a(Looper looper) {
        return Handler.createAsync(looper);
    }
}
