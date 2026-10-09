package androidx.compose.runtime;

import defpackage.p0;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProduceStateScopeImpl<T> implements ProduceStateScope<T>, MutableState<T> {
    public final /* synthetic */ MutableState j;
    public final CoroutineContext k;

    public ProduceStateScopeImpl(MutableState mutableState, CoroutineContext coroutineContext) {
        this.j = mutableState;
        this.k = coroutineContext;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0021  */
    @Override // androidx.compose.runtime.ProduceStateScope
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void f(p0 p0Var, ContinuationImpl continuationImpl) {
        ProduceStateScopeImpl$awaitDispose$1 produceStateScopeImpl$awaitDispose$1;
        int i;
        try {
            if (continuationImpl instanceof ProduceStateScopeImpl$awaitDispose$1) {
                produceStateScopeImpl$awaitDispose$1 = (ProduceStateScopeImpl$awaitDispose$1) continuationImpl;
                int i2 = produceStateScopeImpl$awaitDispose$1.p;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    produceStateScopeImpl$awaitDispose$1.p = i2 - Integer.MIN_VALUE;
                    Object obj = produceStateScopeImpl$awaitDispose$1.n;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = produceStateScopeImpl$awaitDispose$1.p;
                    if (i == 0) {
                        if (i != 1) {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return;
                        } else {
                            p0Var = produceStateScopeImpl$awaitDispose$1.m;
                            ResultKt.b(obj);
                        }
                    } else {
                        ResultKt.b(obj);
                        produceStateScopeImpl$awaitDispose$1.m = p0Var;
                        produceStateScopeImpl$awaitDispose$1.p = 1;
                        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(produceStateScopeImpl$awaitDispose$1));
                        cancellableContinuationImpl.v();
                        if (cancellableContinuationImpl.u() == coroutineSingletons) {
                            return;
                        }
                    }
                    throw new RuntimeException();
                }
            }
            if (i == 0) {
            }
            throw new RuntimeException();
        } catch (Throwable th) {
            p0Var.a();
            throw th;
        }
        produceStateScopeImpl$awaitDispose$1 = new ProduceStateScopeImpl$awaitDispose$1(this, continuationImpl);
        Object obj2 = produceStateScopeImpl$awaitDispose$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = produceStateScopeImpl$awaitDispose$1.p;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.k;
    }

    @Override // androidx.compose.runtime.State
    public final Object getValue() {
        return this.j.getValue();
    }

    @Override // androidx.compose.runtime.MutableState
    public final void setValue(Object obj) {
        this.j.setValue(obj);
    }
}
