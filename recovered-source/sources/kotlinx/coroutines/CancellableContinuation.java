package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface CancellableContinuation<T> extends Continuation<T> {
    Symbol l(Object obj, Function3 function3);

    void m(Object obj, Function3 function3);

    boolean p(Throwable th);

    void t(Object obj);
}
