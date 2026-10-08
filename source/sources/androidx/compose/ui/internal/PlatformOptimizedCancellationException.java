package androidx.compose.ui.internal;

import java.util.concurrent.CancellationException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PlatformOptimizedCancellationException extends CancellationException {
    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(PlatformOptimizedCancellationException_jvmAndAndroidKt.a);
        return this;
    }
}
