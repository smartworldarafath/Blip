package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.intrinsics.UndispatchedKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CombineKt {
    public static final Object a(Continuation continuation, Function0 function0, Function3 function3, FlowCollector flowCollector, Flow[] flowArr) {
        CombineKt$combineInternal$2 combineKt$combineInternal$2 = new CombineKt$combineInternal$2(null, function0, function3, flowCollector, flowArr);
        ScopeCoroutine scopeCoroutine = new ScopeCoroutine(continuation, continuation.o());
        Object a = UndispatchedKt.a(scopeCoroutine, true, scopeCoroutine, combineKt$combineInternal$2);
        if (a == CoroutineSingletons.j) {
            return a;
        }
        return Unit.a;
    }
}
