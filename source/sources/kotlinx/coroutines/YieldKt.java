package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.DispatchedContinuationKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class YieldKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x008d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x008c A[RETURN] */
    /* JADX WARN: Type inference failed for: r3v1, types: [kotlin.coroutines.AbstractCoroutineContextElement, kotlinx.coroutines.YieldContext, kotlin.coroutines.CoroutineContext] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(ContinuationImpl continuationImpl) {
        DispatchedContinuation dispatchedContinuation;
        boolean z;
        boolean z2;
        Object obj;
        CoroutineContext o = continuationImpl.o();
        JobKt.c(o);
        Continuation b = IntrinsicsKt.b(continuationImpl);
        if (b instanceof DispatchedContinuation) {
            dispatchedContinuation = (DispatchedContinuation) b;
        } else {
            dispatchedContinuation = null;
        }
        Unit unit = Unit.a;
        if (dispatchedContinuation != null) {
            CoroutineDispatcher coroutineDispatcher = dispatchedContinuation.m;
            if (DispatchedContinuationKt.c(coroutineDispatcher, o)) {
                dispatchedContinuation.o = unit;
                dispatchedContinuation.l = 1;
                coroutineDispatcher.c1(o, dispatchedContinuation);
            } else {
                ?? abstractCoroutineContextElement = new AbstractCoroutineContextElement(YieldContext.l);
                CoroutineContext A = o.A(abstractCoroutineContextElement);
                dispatchedContinuation.o = unit;
                dispatchedContinuation.l = 1;
                coroutineDispatcher.c1(A, dispatchedContinuation);
                if (abstractCoroutineContextElement.k) {
                    EventLoop a = ThreadLocalEventLoop.a();
                    ArrayDeque arrayDeque = a.n;
                    if (arrayDeque != null) {
                        z = arrayDeque.isEmpty();
                    } else {
                        z = true;
                    }
                    if (!z) {
                        if (a.l >= 4294967296L) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            dispatchedContinuation.o = unit;
                            dispatchedContinuation.l = 1;
                            a.g1(dispatchedContinuation);
                            obj = CoroutineSingletons.j;
                            if (obj == CoroutineSingletons.j) {
                                return obj;
                            }
                            return unit;
                        }
                        a.h1(true);
                        try {
                            dispatchedContinuation.run();
                            do {
                            } while (a.j1());
                        } finally {
                            try {
                            } finally {
                            }
                        }
                    }
                }
            }
            obj = CoroutineSingletons.j;
            if (obj == CoroutineSingletons.j) {
            }
        }
        obj = unit;
        if (obj == CoroutineSingletons.j) {
        }
    }
}
