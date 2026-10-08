package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.flow.internal.SafeCollector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractFlow<T> implements Flow<T>, CancellableFlow<T> {
    /* JADX WARN: Removed duplicated region for block: B:21:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        AbstractFlow$collect$1 abstractFlow$collect$1;
        int i;
        SafeCollector safeCollector;
        if (continuation instanceof AbstractFlow$collect$1) {
            abstractFlow$collect$1 = (AbstractFlow$collect$1) continuation;
            int i2 = abstractFlow$collect$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                abstractFlow$collect$1.p = i2 - Integer.MIN_VALUE;
                Object obj = abstractFlow$collect$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = abstractFlow$collect$1.p;
                Unit unit = Unit.a;
                if (i == 0) {
                    if (i == 1) {
                        safeCollector = abstractFlow$collect$1.m;
                        try {
                            ResultKt.b(obj);
                        } catch (Throwable th) {
                            th = th;
                            safeCollector.w();
                            throw th;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    CoroutineContext coroutineContext = abstractFlow$collect$1.k;
                    coroutineContext.getClass();
                    SafeCollector safeCollector2 = new SafeCollector(flowCollector, coroutineContext);
                    try {
                        abstractFlow$collect$1.m = safeCollector2;
                        abstractFlow$collect$1.p = 1;
                        try {
                            Object n = ((SafeFlow) this).j.n(safeCollector2, abstractFlow$collect$1);
                            if (n != coroutineSingletons) {
                                n = unit;
                            }
                            if (n == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            safeCollector = safeCollector2;
                        } catch (Throwable th2) {
                            th = th2;
                            safeCollector = safeCollector2;
                            safeCollector.w();
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                safeCollector.w();
                return unit;
            }
        }
        abstractFlow$collect$1 = new AbstractFlow$collect$1(this, continuation);
        Object obj2 = abstractFlow$collect$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = abstractFlow$collect$1.p;
        Unit unit2 = Unit.a;
        if (i == 0) {
        }
        safeCollector.w();
        return unit2;
    }
}
