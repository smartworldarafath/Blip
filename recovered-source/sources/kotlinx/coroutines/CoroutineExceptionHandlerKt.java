package kotlinx.coroutines;

import kotlin.ExceptionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.internal.CoroutineExceptionHandlerImpl_commonKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CoroutineExceptionHandlerKt {
    public static final void a(Throwable th, CoroutineContext coroutineContext) {
        if (th instanceof DispatchException) {
            th = ((DispatchException) th).j;
        }
        try {
            CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) coroutineContext.v(CoroutineExceptionHandler.Key.j);
            if (coroutineExceptionHandler != null) {
                coroutineExceptionHandler.Z0(th, coroutineContext);
            } else {
                CoroutineExceptionHandlerImpl_commonKt.a(th, coroutineContext);
            }
        } catch (Throwable th2) {
            if (th != th2) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                ExceptionsKt.a(runtimeException, th);
                th = runtimeException;
            }
            CoroutineExceptionHandlerImpl_commonKt.a(th, coroutineContext);
        }
    }
}
