package kotlinx.coroutines.flow.internal;

import java.util.concurrent.CancellationException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AbortFlowException extends CancellationException {
    public final transient Object j;

    public AbortFlowException(Object obj) {
        super("Flow was aborted, no more elements needed");
        this.j = obj;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
