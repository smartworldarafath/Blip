package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DispatchException extends Exception {
    public final Throwable j;

    public DispatchException(Throwable th, CoroutineDispatcher coroutineDispatcher, CoroutineContext coroutineContext) {
        super("Coroutine dispatcher " + coroutineDispatcher + " threw an exception, context = " + coroutineContext, th);
        this.j = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.j;
    }
}
