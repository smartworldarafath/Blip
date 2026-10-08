package kotlinx.coroutines;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.intrinsics.UndispatchedKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TimeoutKt {
    public static final Object a(TimeoutCoroutine timeoutCoroutine, Function2 function2) {
        JobKt.e(timeoutCoroutine, true, new DisposeOnCompletion(DelayKt.c(timeoutCoroutine.m.o()).x0(timeoutCoroutine.n, timeoutCoroutine, timeoutCoroutine.l)));
        return UndispatchedKt.a(timeoutCoroutine, false, timeoutCoroutine, function2);
    }

    public static final Object b(long j, Function2 function2, ContinuationImpl continuationImpl) {
        if (j > 0) {
            Object a = a(new TimeoutCoroutine(j, continuationImpl), function2);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            return a;
        }
        throw new TimeoutCancellationException("Timed out immediately", null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object c(long j, Function2 function2, ContinuationImpl continuationImpl) {
        TimeoutKt$withTimeoutOrNull$1 timeoutKt$withTimeoutOrNull$1;
        int i;
        Ref$ObjectRef ref$ObjectRef;
        if (continuationImpl instanceof TimeoutKt$withTimeoutOrNull$1) {
            TimeoutKt$withTimeoutOrNull$1 timeoutKt$withTimeoutOrNull$12 = (TimeoutKt$withTimeoutOrNull$1) continuationImpl;
            int i2 = timeoutKt$withTimeoutOrNull$12.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                timeoutKt$withTimeoutOrNull$12.o = i2 - Integer.MIN_VALUE;
                timeoutKt$withTimeoutOrNull$1 = timeoutKt$withTimeoutOrNull$12;
                Object obj = timeoutKt$withTimeoutOrNull$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = timeoutKt$withTimeoutOrNull$1.o;
                if (i == 0) {
                    if (i == 1) {
                        ref$ObjectRef = timeoutKt$withTimeoutOrNull$1.m;
                        try {
                            ResultKt.b(obj);
                            return obj;
                        } catch (TimeoutCancellationException e) {
                            e = e;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    if (j > 0) {
                        ?? obj2 = new Object();
                        try {
                            timeoutKt$withTimeoutOrNull$1.m = obj2;
                            timeoutKt$withTimeoutOrNull$1.o = 1;
                            TimeoutCoroutine timeoutCoroutine = new TimeoutCoroutine(j, timeoutKt$withTimeoutOrNull$1);
                            obj2.j = timeoutCoroutine;
                            Object a = a(timeoutCoroutine, function2);
                            if (a == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            return a;
                        } catch (TimeoutCancellationException e2) {
                            e = e2;
                            ref$ObjectRef = obj2;
                        }
                    }
                    return null;
                }
                if (e.j != ref$ObjectRef.j) {
                    throw e;
                }
                return null;
            }
        }
        timeoutKt$withTimeoutOrNull$1 = new ContinuationImpl(continuationImpl);
        Object obj3 = timeoutKt$withTimeoutOrNull$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = timeoutKt$withTimeoutOrNull$1.o;
        if (i == 0) {
        }
        if (e.j != ref$ObjectRef.j) {
        }
        return null;
    }
}
