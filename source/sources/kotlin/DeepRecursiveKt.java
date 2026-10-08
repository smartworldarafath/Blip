package kotlin;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DeepRecursiveKt {
    public static final CoroutineSingletons a = CoroutineSingletons.j;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.coroutines.Continuation, java.lang.Object, kotlin.DeepRecursiveScopeImpl] */
    public static final Object a(DeepRecursiveFunction deepRecursiveFunction) {
        Object f;
        Object continuationImpl;
        Function3 function3 = deepRecursiveFunction.a;
        ?? obj = new Object();
        obj.j = function3;
        obj.k = Unit.a;
        obj.l = obj;
        CoroutineSingletons coroutineSingletons = a;
        obj.m = coroutineSingletons;
        while (true) {
            Object obj2 = obj.m;
            Continuation continuation = obj.l;
            if (continuation == null) {
                ResultKt.b(obj2);
                return obj2;
            }
            if (Intrinsics.a(coroutineSingletons, obj2)) {
                try {
                    Function3 function32 = obj.j;
                    Unit unit = obj.k;
                    if (function32 == 0) {
                        function32.getClass();
                        CoroutineContext o = continuation.o();
                        if (o == EmptyCoroutineContext.j) {
                            continuationImpl = new RestrictedContinuationImpl(continuation);
                        } else {
                            continuationImpl = new ContinuationImpl(continuation, o);
                        }
                        TypeIntrinsics.c(3, function32);
                        f = function32.f(obj, unit, continuationImpl);
                    } else {
                        TypeIntrinsics.c(3, function32);
                        f = function32.f(obj, unit, continuation);
                    }
                    if (f != CoroutineSingletons.j) {
                        continuation.g(f);
                    }
                } catch (Throwable th) {
                    continuation.g(new Result.Failure(th));
                }
            } else {
                obj.m = coroutineSingletons;
                continuation.g(obj2);
            }
        }
    }
}
