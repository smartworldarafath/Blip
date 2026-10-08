package kotlinx.coroutines;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.internal.DispatchedContinuation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DebugStringsKt {
    public static final String a(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final String b(Continuation continuation) {
        Object failure;
        if (continuation instanceof DispatchedContinuation) {
            return ((DispatchedContinuation) continuation).toString();
        }
        try {
            failure = continuation + '@' + a(continuation);
        } catch (Throwable th) {
            failure = new Result.Failure(th);
        }
        if (Result.a(failure) != null) {
            failure = continuation.getClass().getName() + '@' + a(continuation);
        }
        return (String) failure;
    }
}
