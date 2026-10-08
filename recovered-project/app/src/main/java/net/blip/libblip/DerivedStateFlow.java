package net.blip.libblip;

import defpackage.f7;
import defpackage.p0;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.StateFlow;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DerivedStateFlow<T> implements StateFlow<T> {
    public final p0 j;
    public final DerivedStateFlowKt$derive$$inlined$map$1 k;

    public DerivedStateFlow(p0 p0Var, DerivedStateFlowKt$derive$$inlined$map$1 derivedStateFlowKt$derive$$inlined$map$1) {
        this.j = p0Var;
        this.k = derivedStateFlowKt$derive$$inlined$map$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        DerivedStateFlow$collect$1 derivedStateFlow$collect$1;
        int i;
        if (continuation instanceof DerivedStateFlow$collect$1) {
            derivedStateFlow$collect$1 = (DerivedStateFlow$collect$1) continuation;
            int i2 = derivedStateFlow$collect$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                derivedStateFlow$collect$1.o = i2 - Integer.MIN_VALUE;
                Object obj = derivedStateFlow$collect$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = derivedStateFlow$collect$1.o;
                if (i == 0) {
                    if (i != 1) {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                } else {
                    ResultKt.b(obj);
                    DerivedStateFlow$collect$2 derivedStateFlow$collect$2 = new DerivedStateFlow$collect$2(this, flowCollector, null);
                    derivedStateFlow$collect$1.o = 1;
                    if (CoroutineScopeKt.c(derivedStateFlow$collect$2, derivedStateFlow$collect$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                f7.h();
                return null;
            }
        }
        derivedStateFlow$collect$1 = new DerivedStateFlow$collect$1(this, continuation);
        Object obj2 = derivedStateFlow$collect$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = derivedStateFlow$collect$1.o;
        if (i == 0) {
        }
        f7.h();
        return null;
    }

    @Override // kotlinx.coroutines.flow.StateFlow
    public final Object getValue() {
        return this.j.a();
    }
}
