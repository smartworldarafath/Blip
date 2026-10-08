package kotlin.coroutines.intrinsics;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.internal.DispatchedContinuation;

/* loaded from: classes.dex */
public abstract class IntrinsicsKt extends IntrinsicsKt__IntrinsicsKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static Continuation a(final Continuation continuation, final Continuation continuation2, final Function2 function2) {
        function2.getClass();
        if (function2 instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) function2).s(continuation, continuation2);
        }
        final CoroutineContext o = continuation2.o();
        if (o == EmptyCoroutineContext.j) {
            return new RestrictedContinuationImpl(continuation2) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3
                public int k;

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object v(Object obj) {
                    int i = this.k;
                    if (i != 0) {
                        if (i == 1) {
                            this.k = 2;
                            ResultKt.b(obj);
                            return obj;
                        }
                        u2.l("This coroutine had already completed");
                        return null;
                    }
                    this.k = 1;
                    ResultKt.b(obj);
                    Function2 function22 = function2;
                    function22.getClass();
                    TypeIntrinsics.c(2, function22);
                    return function22.n(continuation, this);
                }
            };
        }
        return new ContinuationImpl(continuation2, o) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4
            public int m;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object v(Object obj) {
                int i = this.m;
                if (i != 0) {
                    if (i == 1) {
                        this.m = 2;
                        ResultKt.b(obj);
                        return obj;
                    }
                    u2.l("This coroutine had already completed");
                    return null;
                }
                this.m = 1;
                ResultKt.b(obj);
                Function2 function22 = function2;
                function22.getClass();
                TypeIntrinsics.c(2, function22);
                return function22.n(continuation, this);
            }
        };
    }

    public static Continuation b(Continuation continuation) {
        ContinuationImpl continuationImpl;
        Continuation continuation2;
        continuation.getClass();
        if (continuation instanceof ContinuationImpl) {
            continuationImpl = (ContinuationImpl) continuation;
        } else {
            continuationImpl = null;
        }
        if (continuationImpl != null && (continuation = continuationImpl.l) == null) {
            ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) continuationImpl.o().v(ContinuationInterceptor.Key.j);
            if (continuationInterceptor != null) {
                continuation2 = new DispatchedContinuation((CoroutineDispatcher) continuationInterceptor, continuationImpl);
            } else {
                continuation2 = continuationImpl;
            }
            continuationImpl.l = continuation2;
            return continuation2;
        }
        return continuation;
    }

    public static Object c(Function2 function2, Object obj, Continuation continuation) {
        Object continuationImpl;
        function2.getClass();
        CoroutineContext o = continuation.o();
        if (o == EmptyCoroutineContext.j) {
            continuationImpl = new RestrictedContinuationImpl(continuation);
        } else {
            continuationImpl = new ContinuationImpl(continuation, o);
        }
        TypeIntrinsics.c(2, function2);
        return function2.n(obj, continuationImpl);
    }
}
