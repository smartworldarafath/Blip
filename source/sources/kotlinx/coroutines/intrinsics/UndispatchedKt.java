package kotlinx.coroutines.intrinsics;

import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.DispatchException;
import kotlinx.coroutines.JobSupportKt;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.internal.ScopeCoroutine;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class UndispatchedKt {
    public static final Object a(ScopeCoroutine scopeCoroutine, boolean z, ScopeCoroutine scopeCoroutine2, Function2 function2) {
        Object completedExceptionally;
        Object U;
        try {
            if (!(function2 instanceof BaseContinuationImpl)) {
                completedExceptionally = IntrinsicsKt.c(function2, scopeCoroutine2, scopeCoroutine);
            } else {
                TypeIntrinsics.c(2, function2);
                completedExceptionally = function2.n(scopeCoroutine2, scopeCoroutine);
            }
        } catch (DispatchException e) {
            Throwable th = e.j;
            scopeCoroutine.T(new CompletedExceptionally(th, false));
            throw th;
        } catch (Throwable th2) {
            completedExceptionally = new CompletedExceptionally(th2, false);
        }
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        if (completedExceptionally == coroutineSingletons || (U = scopeCoroutine.U(completedExceptionally)) == JobSupportKt.b) {
            return coroutineSingletons;
        }
        scopeCoroutine.n0();
        if (U instanceof CompletedExceptionally) {
            if (!z) {
                Throwable th3 = ((CompletedExceptionally) U).a;
                if ((th3 instanceof TimeoutCancellationException) && ((TimeoutCancellationException) th3).j == scopeCoroutine) {
                    if (completedExceptionally instanceof CompletedExceptionally) {
                        throw ((CompletedExceptionally) completedExceptionally).a;
                    }
                    return completedExceptionally;
                }
            }
            throw ((CompletedExceptionally) U).a;
        }
        return JobSupportKt.a(U);
    }
}
