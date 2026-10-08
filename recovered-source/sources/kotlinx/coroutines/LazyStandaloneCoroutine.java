package kotlinx.coroutines;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.DispatchedContinuationKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyStandaloneCoroutine extends StandaloneCoroutine {
    public final Continuation m;

    public LazyStandaloneCoroutine(CoroutineContext coroutineContext, Function2 function2) {
        super(coroutineContext, false);
        this.m = IntrinsicsKt.a(this, this, function2);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void c0() {
        try {
            DispatchedContinuationKt.a(Unit.a, IntrinsicsKt.b(this.m));
        } catch (Throwable th) {
            th = th;
            if (th instanceof DispatchException) {
                th = ((DispatchException) th).j;
            }
            g(ResultKt.a(th));
            throw th;
        }
    }
}
