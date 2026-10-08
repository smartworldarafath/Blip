package androidx.compose.runtime;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.SnapshotThreadLocal;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;

/* loaded from: classes.dex */
public abstract class SnapshotStateKt {
    public static final MutableState a(Flow flow, Object obj, CoroutineContext coroutineContext, Composer composer, int i, int i2) {
        if ((i2 & 2) != 0) {
            coroutineContext = EmptyCoroutineContext.j;
        }
        GapComposer gapComposer = (GapComposer) composer;
        boolean h = gapComposer.h(coroutineContext) | gapComposer.h(flow);
        Object K = gapComposer.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (h || K == composer$Companion$Empty$1) {
            K = new SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1(coroutineContext, flow, null);
            gapComposer.g0(K);
        }
        Function2 function2 = (Function2) K;
        Object K2 = gapComposer.K();
        if (K2 == composer$Companion$Empty$1) {
            K2 = g(obj);
            gapComposer.g0(K2);
        }
        MutableState mutableState = (MutableState) K2;
        boolean h2 = gapComposer.h(function2);
        Object K3 = gapComposer.K();
        if (h2 || K3 == composer$Companion$Empty$1) {
            K3 = new SnapshotStateKt__ProduceStateKt$produceState$3$1(function2, mutableState, null);
            gapComposer.g0(K3);
        }
        EffectsKt.f(flow, coroutineContext, (Function2) K3, gapComposer);
        return mutableState;
    }

    public static final MutableState b(StateFlow stateFlow, Composer composer) {
        return a(stateFlow, stateFlow.getValue(), EmptyCoroutineContext.j, composer, 0, 0);
    }

    public static final MutableVector c() {
        SnapshotThreadLocal snapshotThreadLocal = SnapshotStateKt__DerivedStateKt.b;
        MutableVector mutableVector = (MutableVector) snapshotThreadLocal.a();
        if (mutableVector == null) {
            MutableVector mutableVector2 = new MutableVector(new DerivedStateObserver[0]);
            snapshotThreadLocal.b(mutableVector2);
            return mutableVector2;
        }
        return mutableVector;
    }

    public static final State d(SnapshotMutationPolicy snapshotMutationPolicy, Function0 function0) {
        SnapshotThreadLocal snapshotThreadLocal = SnapshotStateKt__DerivedStateKt.a;
        return new DerivedSnapshotState(snapshotMutationPolicy, function0);
    }

    public static final State e(Function0 function0) {
        SnapshotThreadLocal snapshotThreadLocal = SnapshotStateKt__DerivedStateKt.a;
        return new DerivedSnapshotState(null, function0);
    }

    public static final MutableState f(Object obj, SnapshotMutationPolicy snapshotMutationPolicy) {
        return new SnapshotMutableStateImpl(obj, snapshotMutationPolicy);
    }

    public static MutableState g(Object obj) {
        return new SnapshotMutableStateImpl(obj, StructuralEqualityPolicy.a);
    }

    public static final SnapshotMutationPolicy h() {
        return NeverEqualPolicy.a;
    }

    public static final MutableState i(Composer composer, Object obj, Function2 function2) {
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (K == composer$Companion$Empty$1) {
            K = g(obj);
            gapComposer.g0(K);
        }
        MutableState mutableState = (MutableState) K;
        boolean h = gapComposer.h(function2);
        Object K2 = gapComposer.K();
        if (h || K2 == composer$Companion$Empty$1) {
            K2 = new SnapshotStateKt__ProduceStateKt$produceState$1$1(function2, mutableState, null);
            gapComposer.g0(K2);
        }
        EffectsKt.e(gapComposer, Unit.a, (Function2) K2);
        return mutableState;
    }

    public static final SnapshotMutationPolicy j() {
        return ReferentialEqualityPolicy.a;
    }

    public static final MutableState k(Object obj, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        if (K == Composer.Companion.a) {
            K = g(obj);
            gapComposer.g0(K);
        }
        MutableState mutableState = (MutableState) K;
        mutableState.setValue(obj);
        return mutableState;
    }

    public static final Flow l(Function0 function0) {
        return FlowKt.p(new SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1(function0, null));
    }

    public static final SnapshotMutationPolicy m() {
        return StructuralEqualityPolicy.a;
    }
}
