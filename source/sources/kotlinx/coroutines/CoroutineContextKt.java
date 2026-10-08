package kotlinx.coroutines;

import defpackage.e6;
import defpackage.z6;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CoroutineContextKt {
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public static final CoroutineContext a(CoroutineContext coroutineContext, CoroutineContext coroutineContext2, boolean z) {
        Boolean bool = Boolean.FALSE;
        int i = 28;
        boolean booleanValue = ((Boolean) coroutineContext.P0(bool, new e6(i))).booleanValue();
        boolean booleanValue2 = ((Boolean) coroutineContext2.P0(bool, new e6(i))).booleanValue();
        if (!booleanValue && !booleanValue2) {
            return coroutineContext.A(coroutineContext2);
        }
        ?? obj = new Object();
        obj.j = coroutineContext2;
        e6 e6Var = new e6(29);
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.j;
        CoroutineContext coroutineContext3 = (CoroutineContext) coroutineContext.P0(emptyCoroutineContext, e6Var);
        if (booleanValue2) {
            obj.j = ((CoroutineContext) obj.j).P0(emptyCoroutineContext, new z6(0));
        }
        return coroutineContext3.A((CoroutineContext) obj.j);
    }

    public static final CoroutineContext b(CoroutineScope coroutineScope, CoroutineContext coroutineContext) {
        CoroutineContext a = a(coroutineScope.getCoroutineContext(), coroutineContext, true);
        DefaultScheduler defaultScheduler = Dispatchers.a;
        if (a != defaultScheduler && a.v(ContinuationInterceptor.Key.j) == null) {
            return a.A(defaultScheduler);
        }
        return a;
    }

    public static final UndispatchedCoroutine c(Continuation continuation, CoroutineContext coroutineContext, Object obj) {
        UndispatchedCoroutine undispatchedCoroutine = null;
        if ((continuation instanceof CoroutineStackFrame) && coroutineContext.v(UndispatchedMarker.j) != null) {
            CoroutineStackFrame coroutineStackFrame = (CoroutineStackFrame) continuation;
            while (true) {
                if ((coroutineStackFrame instanceof DispatchedCoroutine) || (coroutineStackFrame = coroutineStackFrame.d()) == null) {
                    break;
                }
                if (coroutineStackFrame instanceof UndispatchedCoroutine) {
                    undispatchedCoroutine = (UndispatchedCoroutine) coroutineStackFrame;
                    break;
                }
            }
            if (undispatchedCoroutine != null) {
                undispatchedCoroutine.r0(coroutineContext, obj);
            }
        }
        return undispatchedCoroutine;
    }
}
