package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DiagnosticCoroutineContextException extends RuntimeException {
    public final transient CoroutineContext j;

    public DiagnosticCoroutineContextException(CoroutineContext coroutineContext) {
        this.j = coroutineContext;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        return String.valueOf(this.j);
    }
}
